import GRWTSK.GroupTheory.Words.HeisenbergOrderedHeight
import GRWTSK.InformationTheory.ReedSolomon.SourceRoundTrip

/-!
# Signed-magnitude wire coordinates for the integral Heisenberg group

Authored by grwtsk contributors. This file specifies the complete integer
triple, including the central coordinate, as three signed-magnitude fields.
Each field has a sign byte followed by sixteen little-endian magnitude bytes.
The explicit admissibility hypothesis is `natAbs < 2^128`; arithmetic of group
products and ordered areas remains arithmetic in unbounded `ℤ`.

No source/compiler/FFI refinement premise is hidden in the codec statement:
the final composition calls the concrete Huffman and GF(2^128) RS source-byte
round-trip law for each of the fifteen four-of-six profiles. Correspondence
with external executable source is a separate operational obligation.
-/

set_option autoImplicit false

namespace GRWTSK.GroupTheory.Words.HeisenbergWire

open GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
open GRWTSK.GroupTheory.Words.HeisenbergOrderedHeight

/-- The four unbounded integer accumulators used by the executable prefix
loop. In particular, `area` is separate from the sum of input z coordinates. -/
structure PrefixState where
  x : ℤ
  y : ℤ
  inputHeight : ℤ
  area : ℤ

def prefixStart : PrefixState := ⟨0, 0, 0, 0⟩

def prefixStep (state : PrefixState) (next : IntegralHeisenberg) : PrefixState :=
  ⟨state.x + next.x, state.y + next.y, state.inputHeight + next.z,
    state.area + state.x * next.y⟩

def prefixProduct (state : PrefixState) : IntegralHeisenberg :=
  ⟨state.x, state.y, state.inputHeight + state.area⟩

def prefixScan (values : List IntegralHeisenberg) : PrefixState :=
  values.foldl prefixStep prefixStart

theorem prefixProduct_step (state : PrefixState) (next : IntegralHeisenberg) :
    prefixProduct (prefixStep state next) = prefixProduct state * next := by
  apply IntegralHeisenberg.ext <;>
    simp only [prefixProduct, prefixStep, IntegralHeisenberg.mul_x,
      IntegralHeisenberg.mul_y, IntegralHeisenberg.mul_z] <;> ring

theorem prefixScan_product_aux (values : List IntegralHeisenberg) (state : PrefixState) :
    prefixProduct (values.foldl prefixStep state) = prefixProduct state * values.prod := by
  induction values generalizing state with
  | nil => simp
  | cons value rest ih =>
    simp only [List.foldl_cons, List.prod_cons, ih, prefixProduct_step, mul_assoc]

theorem prefixScan_product (values : List IntegralHeisenberg) :
    prefixProduct (prefixScan values) = values.prod := by
  have h := prefixScan_product_aux values prefixStart
  have hstart : prefixProduct prefixStart = (1 : IntegralHeisenberg) := rfl
  simpa only [prefixScan, hstart, one_mul] using h

theorem prefixScan_inputHeight_aux (values : List IntegralHeisenberg) (state : PrefixState) :
    (values.foldl prefixStep state).inputHeight = state.inputHeight + inputHeightSum values := by
  induction values generalizing state with
  | nil => simp [inputHeightSum]
  | cons value rest ih =>
    rw [List.foldl_cons, ih]
    simp only [prefixStep, inputHeightSum, List.map_cons, List.sum_cons, centralHeight]
    ring

theorem prefixScan_inputHeight (values : List IntegralHeisenberg) :
    (prefixScan values).inputHeight = inputHeightSum values := by
  simpa only [prefixScan, prefixStart, zero_add] using
    prefixScan_inputHeight_aux values prefixStart

/-- This is the actual prefix update `area += prefix_x * next_y`, proved equal
to the mathematical sum over ordered pairs i<j. -/
theorem prefixScan_orderedArea (values : List IntegralHeisenberg) :
    (prefixScan values).area = orderedArea values := by
  have hz := congrArg centralHeight (prefixScan_product values)
  change (prefixScan values).inputHeight + (prefixScan values).area =
    centralHeight values.prod at hz
  rw [prefixScan_inputHeight, ordered_product_height] at hz
  omega

namespace ByteWire

open GRWTSK.InformationTheory.ReedSolomon.Wire

theorem unpackNatLE_length (count word : Nat) :
    (unpackNatLE count word).length = count := by
  induction count generalizing word with
  | zero => rfl
  | succ count ih => simp [unpackNatLE, ih]

/-- The converse numeral law needs the exact fixed-width bound. Without it,
high bytes would be discarded. -/
theorem packNatLE_unpackNatLE (count word : Nat)
    (bound : word < 256 ^ count) :
    packNatLE (unpackNatLE count word) = word := by
  induction count generalizing word with
  | zero =>
    have hz : word = 0 := by
      simp only [Nat.pow_zero] at bound
      omega
    subst word
    rfl
  | succ count ih =>
    have hdiv : word / 256 < 256 ^ count := by
      apply Nat.div_lt_of_lt_mul
      simpa only [Nat.pow_succ, Nat.mul_comm] using bound
    simp only [unpackNatLE, packNatLE,
      UInt8.toNat_ofNat', Nat.mod_mod, ih (word / 256) hdiv]
    exact Nat.mod_add_div word 256

end ByteWire

open GRWTSK.InformationTheory.ReedSolomon.Wire

/-- A bound on source coordinates, not a bound on products or ordered area. -/
def CoordinateFits (value : ℤ) : Prop := value.natAbs < 256 ^ 16

def RecordFits (value : IntegralHeisenberg) : Prop :=
  CoordinateFits value.x ∧ CoordinateFits value.y ∧ CoordinateFits value.z

/-- Zero has the unique nonnegative sign tag. -/
def encodeCoordinate (value : ℤ) : List UInt8 :=
  (if value < 0 then 1 else 0) :: unpackNatLE 16 value.natAbs

/-- A field decoder rejects wrong width, unknown sign tags and negative zero. -/
def decodeCoordinate (bytes : List UInt8) : Option ℤ :=
  if bytes.length = 17 then
    let magnitude := packNatLE bytes.tail
    if bytes.headD 0 = 0 then some (magnitude : ℤ)
    else if bytes.headD 0 = 1 ∧ magnitude ≠ 0 then some (-(magnitude : ℤ))
    else none
  else none

theorem encodeCoordinate_length (value : ℤ) :
    (encodeCoordinate value).length = 17 := by
  simp [encodeCoordinate, ByteWire.unpackNatLE_length]

theorem decodeCoordinate_encodeCoordinate (value : ℤ)
    (bound : CoordinateFits value) :
    decodeCoordinate (encodeCoordinate value) = some value := by
  have hmag := ByteWire.packNatLE_unpackNatLE 16 value.natAbs bound
  cases value with
  | ofNat value =>
    simp [decodeCoordinate, encodeCoordinate, ByteWire.unpackNatLE_length, hmag]
  | negSucc value =>
    simp [decodeCoordinate, encodeCoordinate, ByteWire.unpackNatLE_length, hmag]

/-- Input order is literal concatenation of x, then y, then z. -/
def encodeRecord (value : IntegralHeisenberg) : List UInt8 :=
  encodeCoordinate value.x ++ encodeCoordinate value.y ++ encodeCoordinate value.z

def decodeRecord (bytes : List UInt8) : Option IntegralHeisenberg := do
  if bytes.length ≠ 51 then none else do
    let x ← decodeCoordinate (bytes.take 17)
    let y ← decodeCoordinate ((bytes.drop 17).take 17)
    let z ← decodeCoordinate (bytes.drop 34)
    pure ⟨x, y, z⟩

theorem encodeRecord_length (value : IntegralHeisenberg) :
    (encodeRecord value).length = 51 := by
  simp [encodeRecord, encodeCoordinate_length]

private theorem take_field (first second : List UInt8) (width : first.length = 17) :
    (first ++ second).take 17 = first := List.take_left' width

private theorem drop_field (first second : List UInt8) (width : first.length = 17) :
    (first ++ second).drop 17 = second := List.drop_left' width

theorem decodeRecord_encodeRecord (value : IntegralHeisenberg)
    (bound : RecordFits value) :
    decodeRecord (encodeRecord value) = some value := by
  rcases bound with ⟨hx, hy, hz⟩
  have hsplit : (encodeRecord value).drop 34 = encodeCoordinate value.z := by
    unfold encodeRecord
    rw [show 34 = 17 + 17 by decide, ← List.drop_drop]
    simp only [List.append_assoc,
      drop_field _ _ (encodeCoordinate_length _)]
  unfold decodeRecord
  rw [encodeRecord_length]
  simp only [ne_eq, not_true_eq_false, ↓reduceIte]
  rw [hsplit]
  unfold encodeRecord
  simp only [List.append_assoc,
    take_field _ _ (encodeCoordinate_length _),
    drop_field _ _ (encodeCoordinate_length _),
    decodeCoordinate_encodeCoordinate _ hx,
    decodeCoordinate_encodeCoordinate _ hy,
    decodeCoordinate_encodeCoordinate _ hz] <;> rfl

theorem decodeCoordinate_negative_zero :
    decodeCoordinate (1 :: List.replicate 16 0) = none := by decide

theorem decodeCoordinate_unknown_tag :
    decodeCoordinate (2 :: List.replicate 16 0) = none := by decide

/-- Literal record concatenation keeps the complete list order. -/
def encodeRecords : List IntegralHeisenberg → List UInt8
  | [] => []
  | value :: rest => encodeRecord value ++ encodeRecords rest

/-- The count determines exactly which bytes are geometric coordinates. The
remaining bytes are retained as the untouched arbitrary source suffix. -/
def decodeRecords : Nat → List UInt8 → Option (List IntegralHeisenberg × List UInt8)
  | 0, bytes => some ([], bytes)
  | count + 1, bytes => do
    let value ← decodeRecord (bytes.take 51)
    let (rest, suffix) ← decodeRecords count (bytes.drop 51)
    pure (value :: rest, suffix)

theorem encodeRecords_length (values : List IntegralHeisenberg) :
    (encodeRecords values).length = 51 * values.length := by
  induction values with
  | nil => rfl
  | cons value rest ih =>
    simp only [encodeRecords, List.length_append, encodeRecord_length,
      List.length_cons, ih]
    omega

theorem decodeRecords_encodeRecords (values : List IntegralHeisenberg)
    (suffix : List UInt8) (bound : ∀ value ∈ values, RecordFits value) :
    decodeRecords values.length (encodeRecords values ++ suffix) = some (values, suffix) := by
  induction values with
  | nil => rfl
  | cons value rest ih =>
    have hv := bound value (by simp)
    have ht := ih (fun item hi => bound item (by simp [hi]))
    simp only [List.length_cons, encodeRecords, List.append_assoc, decodeRecords]
    rw [List.take_left' (encodeRecord_length value),
      List.drop_left' (encodeRecord_length value), decodeRecord_encodeRecord value hv]
    simp only [Option.bind_some, ht]

/-- The literal bytes of ASCII `NOEHEIS1`; no locale or Unicode conversion is
part of the trusted mathematical wire definition. -/
def magic : List UInt8 := [78, 79, 69, 72, 69, 73, 83, 49]

def encodeEnvelope (values : List IntegralHeisenberg) (source : List UInt8) : List UInt8 :=
  magic ++ unpackNatLE 8 values.length ++ encodeRecords values ++ source

def decodeEnvelope (bytes : List UInt8) :
    Option (List IntegralHeisenberg × List UInt8) :=
  if bytes.take 8 = magic ∧ 16 ≤ bytes.length then
    decodeRecords (packNatLE ((bytes.drop 8).take 8)) (bytes.drop 16)
  else none

theorem encodeEnvelope_length (values : List IntegralHeisenberg) (source : List UInt8) :
    (encodeEnvelope values source).length = 16 + 51 * values.length + source.length := by
  simp [encodeEnvelope, magic, ByteWire.unpackNatLE_length, encodeRecords_length] <;> omega

/-- The concrete magic/count parser returns every signed coordinate in order
and the arbitrary Python/source bytes exactly. The executable limit of 4096
records is a stricter admission policy, not a mathematical assumption here. -/
theorem decodeEnvelope_encodeEnvelope (values : List IntegralHeisenberg)
    (source : List UInt8) (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    decodeEnvelope (encodeEnvelope values source) = some (values, source) := by
  have hm : magic.length = 8 := rfl
  have hc := ByteWire.unpackNatLE_length 8 values.length
  have hmagic : (encodeEnvelope values source).take 8 = magic := by
    unfold encodeEnvelope
    simp only [List.append_assoc]
    exact List.take_left' hm
  have hcount : ((encodeEnvelope values source).drop 8).take 8 =
      unpackNatLE 8 values.length := by
    unfold encodeEnvelope
    simp only [List.append_assoc]
    rw [List.drop_left' hm]
    exact List.take_left' hc
  have hrest : (encodeEnvelope values source).drop 16 = encodeRecords values ++ source := by
    unfold encodeEnvelope
    simp only [List.append_assoc]
    rw [show 16 = 8 + 8 by decide, ← List.drop_drop,
      List.drop_left' hm, List.drop_left' hc]
  have hsize : 16 ≤ (encodeEnvelope values source).length := by
    rw [encodeEnvelope_length]
    omega
  unfold decodeEnvelope
  rw [if_pos ⟨hmagic, hsize⟩, hcount, hrest,
    ByteWire.packNatLE_unpackNatLE 8 values.length countBound]
  exact decodeRecords_encodeRecords values source coordinateBound

/-- In the admissible domain, the framing cannot identify two different
ordered geometric lists or two different source suffixes. -/
theorem encodeEnvelope_injective (left right : List IntegralHeisenberg)
    (leftSource rightSource : List UInt8)
    (leftCount : left.length < 256 ^ 8) (rightCount : right.length < 256 ^ 8)
    (leftCoordinates : ∀ value ∈ left, RecordFits value)
    (rightCoordinates : ∀ value ∈ right, RecordFits value)
    (same : encodeEnvelope left leftSource = encodeEnvelope right rightSource) :
    left = right ∧ leftSource = rightSource := by
  have h := congrArg decodeEnvelope same
  rw [decodeEnvelope_encodeEnvelope left leftSource leftCount leftCoordinates,
    decodeEnvelope_encodeEnvelope right rightSource rightCount rightCoordinates] at h
  simpa only [Option.some.injEq, Prod.mk.injEq] using h

/-- Encode the actual geometric envelope through the existing concrete
Huffman and six-node GF(2^128) Reed--Solomon source encoder. -/
def encodePipeline (values : List IntegralHeisenberg) (source : List UInt8) :
    GRWTSK.InformationTheory.ReedSolomon.SourcePacket :=
  GRWTSK.InformationTheory.ReedSolomon.encodeSource (encodeEnvelope values source)

def decodePipeline (profile : Fin 15)
    (packet : GRWTSK.InformationTheory.ReedSolomon.SourcePacket) :
    Option (List IntegralHeisenberg × List UInt8) := do
  let bytes ← GRWTSK.InformationTheory.ReedSolomon.decodeSource profile packet
  decodeEnvelope bytes

/-- No assumed codec inverse: this composes the actual Huffman/RS theorem
with the actual signed-coordinate/magic/count parsing theorem. -/
theorem pipeline_roundtrip (profile : Fin 15) (values : List IntegralHeisenberg)
    (source : List UInt8) (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    decodePipeline profile (encodePipeline values source) = some (values, source) := by
  unfold decodePipeline encodePipeline
  rw [GRWTSK.InformationTheory.ReedSolomon.source_roundtrip]
  exact decodeEnvelope_encodeEnvelope values source countBound coordinateBound

theorem pipeline_preserves_source (profile : Fin 15) (values : List IntegralHeisenberg)
    (source : List UInt8) (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map Prod.snd = some source := by
  simp only [pipeline_roundtrip profile values source countBound coordinateBound, Option.map_some]

/-- Exact coordinate reconstruction preserves the full noncommutative
product, not merely its horizontal image or its central coordinate. -/
theorem pipeline_preserves_product (profile : Fin 15) (values : List IntegralHeisenberg)
    (source : List UInt8) (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map
      (fun decoded => decoded.1.prod) = some values.prod := by
  simp only [pipeline_roundtrip profile values source countBound coordinateBound, Option.map_some]

theorem pipeline_preserves_orderedArea (profile : Fin 15) (values : List IntegralHeisenberg)
    (source : List UInt8) (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map
      (fun decoded => orderedArea decoded.1) = some (orderedArea values) := by
  simp only [pipeline_roundtrip profile values source countBound coordinateBound, Option.map_some]

theorem pipeline_preserves_centralHeight (profile : Fin 15)
    (values : List IntegralHeisenberg) (source : List UInt8)
    (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map
      (fun decoded => centralHeight decoded.1.prod) = some (centralHeight values.prod) := by
  simp only [pipeline_roundtrip profile values source countBound coordinateBound, Option.map_some]

/-- Executing the concrete prefix scan on reconstructed coordinates returns
the same full product as the original ordered mathematical group product. -/
theorem pipeline_preserves_prefixProduct (profile : Fin 15)
    (values : List IntegralHeisenberg) (source : List UInt8)
    (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map
      (fun decoded => prefixProduct (prefixScan decoded.1)) = some values.prod := by
  simp only [pipeline_roundtrip profile values source countBound coordinateBound,
    Option.map_some, prefixScan_product]

/-- This conclusion uses the actual runtime-style left prefix loop after
byte reconstruction, rather than treating an area metadata field as evidence. -/
theorem pipeline_preserves_prefixArea (profile : Fin 15)
    (values : List IntegralHeisenberg) (source : List UInt8)
    (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map
      (fun decoded => (prefixScan decoded.1).area) = some (orderedArea values) := by
  simp only [pipeline_roundtrip profile values source countBound coordinateBound,
    Option.map_some, prefixScan_orderedArea]

/-- Central height is the input central sum plus the unchanged ordered area;
it is never recomputed in GF(2^128), reduced modulo 2^128 or sorted. -/
theorem pipeline_preserves_height (profile : Fin 15) (values : List IntegralHeisenberg)
    (source : List UInt8) (countBound : values.length < 256 ^ 8)
    (coordinateBound : ∀ value ∈ values, RecordFits value) :
    (decodePipeline profile (encodePipeline values source)).map
      (fun decoded => centralHeight decoded.1.prod) =
      some (inputHeightSum values + orderedArea values) := by
  rw [pipeline_roundtrip profile values source countBound coordinateBound]
  simpa only [Option.map_some] using congrArg some (ordered_product_height values)

end GRWTSK.GroupTheory.Words.HeisenbergWire
