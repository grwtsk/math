-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Utf8Injective.Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Utf8Injective.Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882","mathematical_subject":"Computation.DataStructures","original_sha256":"fbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Codec/SequentialPrimeSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Carrier.SequentialPrime
import BitMatrix.Codec.Source
import Mathlib.Data.Nat.Bitwise

/-!
# Canonical source layout on the sequential-prime carrier

The constructor below uses the three documented specifications:

* `(0;3)` for the eight MSB-first byte bits;
* `(1;1)` for `contains`, `next`, and `ref` incidence bits;
* `(2;1)` for the unary UTF-8 byte length.

All remaining addresses are false.  The length and byte fields are proved to
recover the canonical source exactly; incidence is retained as an additional
checked self-description rather than used as an injectivity shortcut.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Utf8Injective.Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882

namespace BitMatrix.Codec

open BitMatrix.Carrier

namespace CanonicalSource

theorem utf8_injective : Function.Injective utf8 := by
  intro left right equality
  apply ext
  apply String.toList_injective
  have decoded := congrArg ByteArray.utf8Decode? equality
  have arrays : (left.body.toList ++ ['\n']).toArray =
      (right.body.toList ++ ['\n']).toArray := by
    simpa [utf8, text, String.toUTF8_eq_toByteArray,
      ← String.utf8Encode_toList, ← List.utf8Encode_append] using decoded
  have lists : left.body.toList ++ ['\n'] = right.body.toList ++ ['\n'] := by
    simpa using arrays
  exact List.append_cancel_right lists

end CanonicalSource

namespace SequentialPrimeSource

/-- Normalize CRLF and bare CR to LF, preserving every other character. -/
def normalizeLineEndings : List Char → List Char
  | [] => []
  | '\r' :: '\n' :: tail => '\n' :: normalizeLineEndings tail
  | '\r' :: tail => '\n' :: normalizeLineEndings tail
  | character :: tail => character :: normalizeLineEndings tail

/-- Remove every terminal LF while preserving interior line feeds. -/
def stripTerminalLineFeeds : List Char → List Char
  | [] => []
  | character :: tail =>
      match stripTerminalLineFeeds tail with
      | [] => if character = '\n' then [] else [character]
      | first :: rest => character :: first :: rest

theorem normalizeLineEndings_noCarriageReturn
    (characters : List Char) :
    '\r' ∉ normalizeLineEndings characters := by
  induction characters using normalizeLineEndings.induct <;>
    simp_all [normalizeLineEndings, eq_comm]

theorem stripTerminalLineFeeds_subset
    {character : Char}
    {characters : List Char}
    (member : character ∈ stripTerminalLineFeeds characters) :
    character ∈ characters := by
  induction characters with
  | nil => simp [stripTerminalLineFeeds] at member
  | cons head tail inductionHypothesis =>
      simp only [stripTerminalLineFeeds] at member
      split at member
      · split at member
        · contradiction
        · have headEquality : character = head := by simpa using member
          simp [headEquality]
      · rename_i first rest result
        simp only [List.mem_cons] at member ⊢
        exact member.elim Or.inl (fun tailMember =>
          Or.inr (inductionHypothesis (by simpa [result] using tailMember)))

theorem stripTerminalLineFeeds_noTerminalLineFeed
    (characters : List Char) :
    (stripTerminalLineFeeds characters).getLast? ≠ some '\n' := by
  induction characters with
  | nil => simp [stripTerminalLineFeeds]
  | cons head tail inductionHypothesis =>
      simp only [stripTerminalLineFeeds]
      split
      · split
        · simp
        · rename_i notLineFeed
          simp [notLineFeed]
      · rename_i first rest result
        simpa [result] using inductionHypothesis

/--
The exact documentation canonicalizer: normalize line endings, remove all
terminal LFs, and append exactly one LF.  `String` supplies UTF-8 encoding
without a BOM through `String.toUTF8`.
-/
def documentationSourceCanonicalizer (source : String) : String :=
  String.ofList
    (stripTerminalLineFeeds (normalizeLineEndings source.toList) ++ ['\n'])

/-- Typed canonical source produced by the documentation convention. -/
def documentationCanonicalSource (source : String) : CanonicalSource where
  body := String.ofList
    (stripTerminalLineFeeds (normalizeLineEndings source.toList))
  noCarriageReturn := by
    intro member
    have inStripped : '\r' ∈
        stripTerminalLineFeeds (normalizeLineEndings source.toList) := by
      simpa using member
    exact normalizeLineEndings_noCarriageReturn source.toList
      (stripTerminalLineFeeds_subset inStripped)
  noTerminalLineFeed := by
    simpa using stripTerminalLineFeeds_noTerminalLineFeed
      (normalizeLineEndings source.toList)

theorem documentationCanonicalSource_text
    (source : String) :
    (documentationCanonicalSource source).text =
      documentationSourceCanonicalizer source := by
  simp [documentationCanonicalSource, documentationSourceCanonicalizer,
    CanonicalSource.text, String.push_eq_append]

/-- Byte-bit specification `sigma_8 = (0;3)`. -/
def byteSpecification : SequentialPrimeSpecification where
  start := 0
  multiplicities := [3]
  nonempty := by simp
  admissible := by
    intro value member
    simp only [List.mem_singleton] at member
    subst value
    exact Or.inr Nat.prime_three

/-- Relation specification `sigma_rel = (1;1)`. -/
def relationSpecification : SequentialPrimeSpecification where
  start := 1
  multiplicities := [1]
  nonempty := by simp
  admissible := by simp

/-- Unary-length specification `sigma_len = (2;1)`. -/
def lengthSpecification : SequentialPrimeSpecification where
  start := 2
  multiplicities := [1]
  nonempty := by simp
  admissible := by simp

theorem byteSpecification_cardinality :
    CoordinateFiber.cardinality byteSpecification.axisCardinalities = 8 := by
  simp [byteSpecification, SequentialPrimeSpecification.axisCardinalities,
    SequentialPrimeSpecification.axesFrom,
    SequentialPrimeSpecification.canonicalPrimeEnumeration_value,
    Nat.nth_prime_zero_eq_two, CoordinateFiber.cardinality]

theorem relationSpecification_cardinality :
    CoordinateFiber.cardinality relationSpecification.axisCardinalities = 3 := by
  simp [relationSpecification, SequentialPrimeSpecification.axisCardinalities,
    SequentialPrimeSpecification.axesFrom,
    SequentialPrimeSpecification.canonicalPrimeEnumeration_value,
    Nat.nth_prime_one_eq_three, CoordinateFiber.cardinality]

theorem lengthSpecification_cardinality :
    CoordinateFiber.cardinality lengthSpecification.axisCardinalities = 5 := by
  simp [lengthSpecification, SequentialPrimeSpecification.axisCardinalities,
    SequentialPrimeSpecification.axesFrom,
    SequentialPrimeSpecification.canonicalPrimeEnumeration_value,
    Nat.nth_prime_two_eq_five, CoordinateFiber.cardinality]

theorem byte_ne_relation : byteSpecification ≠ relationSpecification := by
  intro equality
  have := congrArg SequentialPrimeSpecification.start equality
  simp [byteSpecification, relationSpecification] at this

theorem byte_ne_length : byteSpecification ≠ lengthSpecification := by
  intro equality
  have := congrArg SequentialPrimeSpecification.start equality
  simp [byteSpecification, lengthSpecification] at this

theorem relation_ne_length : relationSpecification ≠ lengthSpecification := by
  intro equality
  have := congrArg SequentialPrimeSpecification.start equality
  simp [relationSpecification, lengthSpecification] at this

/-- Coordinate whose exact mixed-radix value is `index`. -/
noncomputable def coordinateOfIndex
    (specification : SequentialPrimeSpecification)
    (index : Nat) : CoordinateFiber specification.axisCardinalities :=
  CoordinateFiber.ofNat specification.axisCardinalities
    (fun _ member => specification.axisCardinalities_positive member) index

theorem coordinateOfIndex_mixedRadix
    (specification : SequentialPrimeSpecification)
    (index : Nat)
    (bound : index < CoordinateFiber.cardinality
      specification.axisCardinalities) :
    CoordinateFiber.mixedRadix (coordinateOfIndex specification index) = index :=
  CoordinateFiber.mixedRadix_ofNat specification.axisCardinalities
    (fun _ member => specification.axisCardinalities_positive member)
    index bound

/-- The documented byte-coordinate value `beta(b₂,b₁,b₀)`. -/
def byteCoordinateIndex (b₂ b₁ b₀ : Fin 2) : Nat :=
  4 * b₂.val + 2 * b₁.val + b₀.val

theorem byteCoordinateIndex_lt (b₂ b₁ b₀ : Fin 2) :
    byteCoordinateIndex b₂ b₁ b₀ < 8 := by
  unfold byteCoordinateIndex
  have high := b₂.isLt
  have middle := b₁.isLt
  have low := b₀.isLt
  omega

/--
The named coordinate constructor for the documented tuple `(b₂,b₁,b₀)`.
The underlying mixed-radix fiber is least-significant-coordinate first, while
this public constructor retains the mathematical high-to-low tuple order.
-/
noncomputable def byteCoordinate (b₂ b₁ b₀ : Fin 2) :
    CoordinateFiber byteSpecification.axisCardinalities :=
  coordinateOfIndex byteSpecification (byteCoordinateIndex b₂ b₁ b₀)

@[simp]
theorem byteCoordinate_mixedRadix (b₂ b₁ b₀ : Fin 2) :
    CoordinateFiber.mixedRadix (byteCoordinate b₂ b₁ b₀) =
      4 * b₂.val + 2 * b₁.val + b₀.val := by
  exact coordinateOfIndex_mixedRadix byteSpecification
    (byteCoordinateIndex b₂ b₁ b₀)
    (by
      rw [byteSpecification_cardinality]
      exact byteCoordinateIndex_lt b₂ b₁ b₀)

/-- Address of byte `occurrence` and MSB-first bit coordinate `index`. -/
noncomputable def byteAddress (occurrence index : Nat) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, byteSpecification, coordinateOfIndex byteSpecification index⟩

/-- Address constructor retaining the documented `(b₂,b₁,b₀)` orientation. -/
noncomputable def byteCoordinateAddress
    (occurrence : Nat) (b₂ b₁ b₀ : Fin 2) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, byteSpecification, byteCoordinate b₂ b₁ b₀⟩

/-- Address of one unary-length marker. -/
noncomputable def lengthAddress (occurrence : Nat) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, lengthSpecification, coordinateOfIndex lengthSpecification 0⟩

/-- Address of one of the three incidence relation coordinates. -/
noncomputable def relationAddress (occurrence relation : Nat) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, relationSpecification,
    coordinateOfIndex relationSpecification relation⟩

/-- Canonical code for a source incidence point. -/
def pointCode {length : Nat} : SourcePoint length → Nat
  | .root => 0
  | .byte index => index.val + 1

/-- Exact three-relation incidence predicate from the source specification. -/
def incidence
    (length occurrence relation : Nat) : Prop :=
  (relation = 0 ∧
    ∃ index : Fin length,
      occurrence = cantorPair 0 (pointCode (SourcePoint.byte index))) ∨
  (relation = 1 ∧
    ∃ index : Nat, ∃ bound : index + 1 < length,
      occurrence = cantorPair
        (pointCode (SourcePoint.byte ⟨index, Nat.lt_trans (Nat.lt_succ_self index) bound⟩))
        (pointCode (SourcePoint.byte ⟨index + 1, bound⟩))) ∨
  (relation = 2 ∧ occurrence = cantorPair 0 0)

/-- Boolean observation of the exact incidence predicate. -/
noncomputable def incidenceBit
    (length occurrence relation : Nat) : Bool := by
  classical
  exact decide (incidence length occurrence relation)

theorem incidenceBit_eq_true_iff
    (length occurrence relation : Nat) :
    incidenceBit length occurrence relation = true ↔
      incidence length occurrence relation := by
  classical
  simp [incidenceBit]

/-- The documented source-byte, unary-length, and incidence assignment. -/
noncomputable def sourceState (source : CanonicalSource) :
    BooleanState SequentialPrimeCarrierAddress := by
  classical
  exact fun address =>
    if byteField : address.specification = byteSpecification then
      if coordinateBound : CoordinateFiber.mixedRadix address.coordinate < 8 then
        if byteBound : address.occurrence < source.utf8.size then
          byteBitMSB source.utf8[address.occurrence]
            ⟨CoordinateFiber.mixedRadix address.coordinate, coordinateBound⟩
        else false
      else false
    else if lengthField : address.specification = lengthSpecification then
      decide (CoordinateFiber.mixedRadix address.coordinate = 0 ∧
        address.occurrence < source.utf8.size)
    else if relationField : address.specification = relationSpecification then
      incidenceBit source.utf8.size address.occurrence
        (CoordinateFiber.mixedRadix address.coordinate)
    else false

@[simp]
theorem sourceState_lengthAddress
    (source : CanonicalSource)
    (occurrence : Nat) :
    sourceState source (lengthAddress occurrence) =
      decide (occurrence < source.utf8.size) := by
  classical
  unfold sourceState lengthAddress
  dsimp only
  rw [dif_neg (fun equality => byte_ne_length equality.symm)]
  rw [dif_pos rfl]
  have coordinateZero := coordinateOfIndex_mixedRadix
    lengthSpecification 0 (by rw [lengthSpecification_cardinality]; omega)
  simp [coordinateZero]

@[simp]
theorem sourceState_byteAddress
    (source : CanonicalSource)
    (occurrence coordinate : Nat)
    (coordinateBound : coordinate < 8)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteAddress occurrence coordinate) =
      byteBitMSB source.utf8[occurrence]
        ⟨coordinate, coordinateBound⟩ := by
  classical
  have coordinateCode := coordinateOfIndex_mixedRadix
    byteSpecification coordinate
    (by rw [byteSpecification_cardinality]; exact coordinateBound)
  unfold sourceState byteAddress
  dsimp only
  rw [dif_pos rfl]
  simp [coordinateCode, coordinateBound, byteBound]

/--
The tuple `(b₂,b₁,b₀)` selects the MSB-first byte position
`4*b₂ + 2*b₁ + b₀` exactly.
-/
@[simp]
theorem sourceState_byteCoordinateAddress
    (source : CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteCoordinateAddress occurrence b₂ b₁ b₀) =
      byteBitMSB source.utf8[occurrence]
        ⟨byteCoordinateIndex b₂ b₁ b₀,
          byteCoordinateIndex_lt b₂ b₁ b₀⟩ := by
  classical
  have coordinateBound :
      4 * b₂.val + 2 * b₁.val + b₀.val < 8 := by
    simpa [byteCoordinateIndex] using byteCoordinateIndex_lt b₂ b₁ b₀
  unfold sourceState byteCoordinateAddress
  dsimp only
  rw [dif_pos rfl]
  simp [byteCoordinate_mixedRadix, byteCoordinateIndex, coordinateBound, byteBound]

/-- Expanded bit-weight form of the documented byte-placement law. -/
theorem sourceState_byteCoordinateAddress_testBit
    (source : CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteCoordinateAddress occurrence b₂ b₁ b₀) =
      Nat.testBit source.utf8[occurrence].toNat
        (7 - (4 * b₂.val + 2 * b₁.val + b₀.val)) := by
  rw [sourceState_byteCoordinateAddress source occurrence b₂ b₁ b₀ byteBound]
  rfl

@[simp]
theorem sourceState_relationAddress
    (source : CanonicalSource)
    (occurrence relation : Nat)
    (relationBound : relation < 3) :
    sourceState source (relationAddress occurrence relation) =
      incidenceBit source.utf8.size occurrence relation := by
  classical
  have relationCode := coordinateOfIndex_mixedRadix
    relationSpecification relation
    (by rw [relationSpecification_cardinality]; exact relationBound)
  unfold sourceState relationAddress
  dsimp only
  rw [dif_neg (fun equality => byte_ne_relation equality.symm)]
  rw [dif_neg relation_ne_length]
  rw [dif_pos rfl]
  simp [relationCode]

/-- The concrete `contains(root, byte(index))` incidence bit. -/
theorem sourceState_contains
    (source : CanonicalSource)
    (index : Fin source.utf8.size) :
    sourceState source
      (relationAddress (cantorPair 0 (index.val + 1)) 0) = true := by
  rw [sourceState_relationAddress source
    (cantorPair 0 (index.val + 1)) 0 (by omega)]
  rw [incidenceBit_eq_true_iff]
  exact Or.inl ⟨rfl, index, rfl⟩

/-- The concrete `next(byte(index), byte(index+1))` incidence bit. -/
theorem sourceState_next
    (source : CanonicalSource)
    (index : Nat)
    (bound : index + 1 < source.utf8.size) :
    sourceState source
      (relationAddress (cantorPair (index + 1) (index + 2)) 1) = true := by
  rw [sourceState_relationAddress source
    (cantorPair (index + 1) (index + 2)) 1 (by omega)]
  rw [incidenceBit_eq_true_iff]
  exact Or.inr (Or.inl ⟨rfl, index, bound, rfl⟩)

/-- Every encoded source contains the required root self-reference loop. -/
theorem sourceState_root_ref (source : CanonicalSource) :
    sourceState source (relationAddress (cantorPair 0 0) 2) = true := by
  rw [sourceState_relationAddress source (cantorPair 0 0) 2 (by omega)]
  simp [incidenceBit, incidence]

theorem sourceState_size
    {left right : CanonicalSource}
    (equality : sourceState left = sourceState right) :
    left.utf8.size = right.utf8.size := by
  by_contra different
  rcases lt_or_gt_of_ne different with less | greater
  · have atBoundary := congrFun equality (lengthAddress left.utf8.size)
    simp [less] at atBoundary
  · have atBoundary := congrFun equality (lengthAddress right.utf8.size)
    simp [greater] at atBoundary

theorem sourceState_byte
    {left right : CanonicalSource}
    (equality : sourceState left = sourceState right)
    (index : Nat)
    (leftBound : index < left.utf8.size)
    (rightBound : index < right.utf8.size) :
    left.utf8[index] = right.utf8[index] := by
  apply UInt8.ext
  apply Nat.eq_of_testBit_eq
  intro bit
  by_cases bitBound : bit < 8
  · let coordinate := 7 - bit
    have coordinateBound : coordinate < 8 := by omega
    have coordinateBit : 7 - coordinate = bit := by omega
    have atBit := congrFun equality (byteAddress index coordinate)
    rw [sourceState_byteAddress left index coordinate coordinateBound leftBound,
      sourceState_byteAddress right index coordinate coordinateBound rightBound] at atBit
    simpa [byteBitMSB, coordinateBit] using atBit
  · have leftFalse := Nat.testBit_eq_false_of_lt
      (n := left.utf8[index].toNat) (i := bit)
      (lt_of_lt_of_le left.utf8[index].toNat_lt
        (Nat.pow_le_pow_right (by omega) (by omega)))
    have rightFalse := Nat.testBit_eq_false_of_lt
      (n := right.utf8[index].toNat) (i := bit)
      (lt_of_lt_of_le right.utf8[index].toNat_lt
        (Nat.pow_le_pow_right (by omega) (by omega)))
    rw [leftFalse, rightFalse]

theorem sourceState_injective : Function.Injective sourceState := by
  intro left right equality
  apply CanonicalSource.utf8_injective
  apply ByteArray.ext
  apply Array.ext
  · exact sourceState_size equality
  · intro index leftBound rightBound
    exact sourceState_byte equality index leftBound rightBound

/-- Generic exact-image decoder for an injective source representation. -/
noncomputable def decodeSourceState
    {Address : Type}
    (encode : CanonicalSource → BooleanState Address)
    (state : BooleanState Address) : Option CanonicalSource := by
  classical
  exact if witness : ∃ source, encode source = state then
    some (Classical.choose witness)
  else none

noncomputable def sourceCodecOfInjective
    {Address : Type}
    (encode : CanonicalSource → BooleanState Address)
    (injective : Function.Injective encode) : SourceCodec Address where
  encode := encode
  decode := decodeSourceState encode
  decode_encode source := by
    classical
    simp only [decodeSourceState]
    split
    · rename_i witness
      congr 1
      apply injective
      exact Classical.choose_spec witness
    · rename_i absent
      exact False.elim (absent ⟨source, rfl⟩)
  encode_decode := by
    classical
    intro state source decoded
    simp only [decodeSourceState] at decoded
    split at decoded
    · rename_i witness
      have chosen : Classical.choose witness = source := Option.some.inj decoded
      rw [← chosen]
      exact Classical.choose_spec witness
    · contradiction

/-- Concrete exact codec using the complete sequential-prime carrier layout. -/
noncomputable def sourceCodec : SourceCodec SequentialPrimeCarrierAddress :=
  sourceCodecOfInjective sourceState sourceState_injective

@[simp]
theorem sourceCodec_decode_encode (source : CanonicalSource) :
    sourceCodec.decode (sourceCodec.encode source) = some source :=
  sourceCodec.decode_encode source

/-- Current authoritative rhetorical document, embedded into the Lean term. -/
def mappingRhetoricalSystemsSource : String :=
  include_str "../../../docs/bit/mapping-rhetorical-systems.md"

/--
The actual authoritative Markdown file as a canonical source.  The checked-in
file has no CR and one final LF; its body is that exact text with the framing
LF removed.
-/
def distinguishedCanonicalSource : CanonicalSource :=
  documentationCanonicalSource mappingRhetoricalSystemsSource

theorem distinguishedCanonicalSource_text_eq_canonicalized_document :
    distinguishedCanonicalSource.text =
      documentationSourceCanonicalizer mappingRhetoricalSystemsSource :=
  documentationCanonicalSource_text mappingRhetoricalSystemsSource

/-- Exact baseline carrier of the distinguished source. -/
noncomputable def baselineCarrier :
    BooleanState SequentialPrimeCarrierAddress :=
  sourceCodec.encode distinguishedCanonicalSource

@[simp]
theorem distinguishedCanonicalSource_decodes :
    sourceCodec.decode baselineCarrier = some distinguishedCanonicalSource :=
  sourceCodec.decode_encode distinguishedCanonicalSource

end SequentialPrimeSource

end BitMatrix.Codec
