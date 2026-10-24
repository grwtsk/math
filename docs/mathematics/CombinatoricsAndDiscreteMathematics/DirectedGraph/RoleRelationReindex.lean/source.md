# Complete source: GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `232533b32727a0323a4182a4adc3e01f8e2decfe` · SHA-256 `574e494dae716fbf979145a77d355c4c7527349f2e07028e3cb1f9935db914fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib Quiver Basic/Prefunctor/Path authors David Wärn and Kim Morrison retain
Apache-2.0 credit. Existing local codecs retain their individual source credits. -/
import GRWTSK.Combinatorics.DirectedGraph.RoleRelationTable

/-!
# Relation-table reindexing and actual path codecs

Source, target and role preservation construct an actual quiver prefunctor.
The existing actual path mapping commutes with the actual qualified-ID codec.
An injective relation-index map retains distinct full histories; a bijective
map additionally has an actual inverse. These indices are relation-table
identities, not parent-dictionary slots. They need not remain numerically equal.

For actual packed mapped path rows, the proved inverse restores a common OLD
rooted payload before the existing certificate's own packed decoding is used.
Criterion evidence and its exact entries binding remain explicit. No assumed
serializer, commuting decoder, new-row criterion or runtime/JSON/hash claim is used.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex

open Quiver RoleRelationTable
open GRWTSK.Logic.FiniteSequences IndexedDictionary DecisionCertificate

variable {V Role Key : Type*} {n m : Nat}
variable {old : Table V Role n} {new : Table V Role m}

/-- Actual finite index translation and exact source/target/role agreement. -/
structure Reindex (old : Table V Role n) (new : Table V Role m) where
  index : Fin n → Fin m
  source : ∀ i, new.source (index i) = old.source i
  target : ∀ i, new.target (index i) = old.target i
  kind : ∀ i, new.kind (index i) = old.kind i

variable (translation : Reindex old new) (role : Role)

def mapVertex (_translation : Reindex old new) (role : Role) (vertex : Vertex old role) :
    Vertex new role := ⟨vertex.value⟩

def qualified (index : RoleId old role) : RoleId new role :=
  ⟨translation.index index.1, (translation.kind index.1).trans index.2⟩

theorem qualified_injective (hinjective : Function.Injective translation.index) :
    Function.Injective (qualified translation role) := by
  intro left right hequal
  apply Subtype.ext
  exact hinjective (congrArg Subtype.val hequal)

/-- The actual arrow translation, with all endpoint and role witnesses supplied. -/
def prefunctor : Vertex old role ⥤q Vertex new role where
  obj := mapVertex translation role
  map arrow := ⟨translation.index arrow.1,
    (translation.source arrow.1).trans arrow.2.1,
    (translation.target arrow.1).trans arrow.2.2.1,
    (translation.kind arrow.1).trans arrow.2.2.2⟩

def mapStar (root : Vertex old role) (path : PathStar root) :
    PathStar (mapVertex translation role root) :=
  ⟨mapVertex translation role path.1, (prefunctor translation role).mapPath path.2⟩

theorem mapped_endpoint (root : Vertex old role) (path : PathStar root) :
    (mapStar translation role root path).1.value = path.1.value := rfl

/-- Actual typed path construction commutes with actual qualified-ID encoding. -/
theorem encodePath_naturality {source target : Vertex old role} (path : Path source target) :
    encodePath new role ((prefunctor translation role).mapPath path) =
      (encodePath old role path).map (qualified translation role) := by
  induction path with
  | nil => rfl
  | cons path arrow ih =>
    change encodePath new role
      (((prefunctor translation role).mapPath path).comp
        ((prefunctor translation role).map arrow).toPath) =
      (encodePath old role (path.comp arrow.toPath)).map (qualified translation role)
    rw [encodePath_comp, encodePath_comp, List.map_append, ih]
    rfl

theorem encode_naturality (root : Vertex old role) (path : PathStar root) :
    encode new role (mapVertex translation role root) (mapStar translation role root path) =
      (encode old role root path).map (qualified translation role) :=
  encodePath_naturality translation role path.2

/-- Construct validity using the actual decoded old path and its actual mapped typed path. -/
theorem valid_map (root : Vertex old role) (indices : List (RoleId old role))
    (hvalid : ValidFrom old role root indices) :
    ValidFrom new role (mapVertex translation role root)
      (indices.map (qualified translation role)) := by
  have hmapped := valid_encode new role (mapVertex translation role root)
    (mapStar translation role root (decode old role root indices hvalid))
  rwa [encode_naturality, encode_decode] at hmapped

/-- Decoder commutation is proved from actual constructions, rather than assumed. -/
theorem decode_naturality (root : Vertex old role) (indices : List (RoleId old role))
    (hvalid : ValidFrom old role root indices) :
    decode new role (mapVertex translation role root) (indices.map (qualified translation role))
        (valid_map translation role root indices hvalid) =
      mapStar translation role root (decode old role root indices hvalid) := by
  apply encode_injective new role (mapVertex translation role root)
  rw [encode_decode, encode_naturality, encode_decode]

theorem finish_naturality (root : Vertex old role) (indices : List (RoleId old role))
    (hvalid : ValidFrom old role root indices) :
    (finish new role (mapVertex translation role root)
      (indices.map (qualified translation role))).value = (finish old role root indices).value := by
  rw [← decode_endpoint new role _ _ (valid_map translation role root indices hvalid),
    decode_naturality]
  exact congrArg Vertex.value (decode_endpoint old role root indices hvalid)

/-- Source/target agreement alone cannot supply this full-history reflection hypothesis. -/
theorem mapStar_injective (hinjective : Function.Injective translation.index)
    (root : Vertex old role) : Function.Injective (mapStar translation role root) := by
  intro left right hequal
  have hids := congrArg (encode new role (mapVertex translation role root)) hequal
  rw [encode_naturality, encode_naturality] at hids
  apply encode_injective old role root
  exact List.map_injective_iff.mpr (qualified_injective translation role hinjective) hids

/-- Bijection provides actual inverse rows and their actual endpoint/role witnesses. -/
noncomputable def inverse (hbijective : Function.Bijective translation.index) :
    Reindex new old where
  index := (Equiv.ofBijective translation.index hbijective).symm
  source index := by
    exact (translation.source
      ((Equiv.ofBijective translation.index hbijective).symm index)).symm.trans
      (congrArg new.source
        ((Equiv.ofBijective translation.index hbijective).apply_symm_apply index))
  target index := by
    exact (translation.target
      ((Equiv.ofBijective translation.index hbijective).symm index)).symm.trans
      (congrArg new.target
        ((Equiv.ofBijective translation.index hbijective).apply_symm_apply index))
  kind index := by
    exact (translation.kind
      ((Equiv.ofBijective translation.index hbijective).symm index)).symm.trans
      (congrArg new.kind
        ((Equiv.ofBijective translation.index hbijective).apply_symm_apply index))

theorem inverse_qualified (hbijective : Function.Bijective translation.index)
    (index : RoleId old role) :
    qualified (inverse translation hbijective) role (qualified translation role index) = index := by
  apply Subtype.ext
  exact (Equiv.ofBijective translation.index hbijective).left_inv index.1

theorem qualified_inverse (hbijective : Function.Bijective translation.index)
    (index : RoleId new role) :
    qualified translation role (qualified (inverse translation hbijective) role index) = index := by
  apply Subtype.ext
  exact (Equiv.ofBijective translation.index hbijective).right_inv index.1

noncomputable def qualifiedEquiv (hbijective : Function.Bijective translation.index) :
    RoleId old role ≃ RoleId new role where
  toFun := qualified translation role
  invFun := qualified (inverse translation hbijective) role
  left_inv := inverse_qualified translation role hbijective
  right_inv := qualified_inverse translation role hbijective

theorem inverse_mapStar (hbijective : Function.Bijective translation.index)
    (root : Vertex old role) (path : PathStar root) :
    mapStar (inverse translation hbijective) role (mapVertex translation role root)
      (mapStar translation role root path) = path := by
  apply encode_injective old role root
  calc
    _ = (encode new role (mapVertex translation role root)
        (mapStar translation role root path)).map
          (qualified (inverse translation hbijective) role) :=
      encode_naturality (inverse translation hbijective) role (mapVertex translation role root) _
    _ = ((encode old role root path).map (qualified translation role)).map
        (qualified (inverse translation hbijective) role) :=
      congrArg (List.map (qualified (inverse translation hbijective) role))
        (encode_naturality translation role root path)
    _ = _ := by
      simp only [List.map_map, Function.comp_def, inverse_qualified, List.map_id_fun']
      rfl

theorem mapStar_inverse (hbijective : Function.Bijective translation.index)
    (root : Vertex old role) (path : PathStar (mapVertex translation role root)) :
    mapStar translation role root
      (mapStar (inverse translation hbijective) role (mapVertex translation role root) path) =
        path := by
  apply encode_injective new role (mapVertex translation role root)
  calc
    _ = (encode old role root
        (mapStar (inverse translation hbijective) role (mapVertex translation role root) path)).map
          (qualified translation role) := encode_naturality translation role root _
    _ = ((encode new role (mapVertex translation role root) path).map
        (qualified (inverse translation hbijective) role)).map (qualified translation role) :=
      congrArg (List.map (qualified translation role))
        (encode_naturality (inverse translation hbijective) role
          (mapVertex translation role root) path)
    _ = _ := by
      simp only [List.map_map, Function.comp_def, qualified_inverse, List.map_id_fun']
      rfl

noncomputable def pathStarEquiv (hbijective : Function.Bijective translation.index)
    (root : Vertex old role) : PathStar root ≃ PathStar (mapVertex translation role root) where
  toFun := mapStar translation role root
  invFun := mapStar (inverse translation hbijective) role (mapVertex translation role root)
  left_inv := inverse_mapStar translation role hbijective root
  right_inv := mapStar_inverse translation role hbijective root

/-- Translate full ordered real rows; keys and repetitions are never deduplicated. -/
def reindexRows (entries : List (Key × List (RoleId old role))) :
    List (Key × List (RoleId new role)) :=
  entries.map (fun entry => (entry.1, entry.2.map (qualified translation role)))

theorem inverse_rows (hbijective : Function.Bijective translation.index)
    (entries : List (Key × List (RoleId old role))) :
    reindexRows (inverse translation hbijective) role (reindexRows translation role entries) =
      entries := by
  simp only [reindexRows, List.map_map, Function.comp_def]
  calc
    _ = entries.map (fun entry => entry) := by
      apply List.map_congr_left
      intro entry _
      simp only [inverse_qualified, List.map_id_fun']
      rfl
    _ = entries := by simp only [List.map_id_fun']; rfl

/-- Encode actual existing rooted paths as complete ordered qualified-ID rows. -/
def pathRows (root : Vertex old role) (rows : List (Key × PathStar root)) :
    List (Key × List (RoleId old role)) :=
  rows.map (fun row => (row.1, encode old role root row.2))

/-- Map the actual typed paths first, then encode them with the actual new-table codec. -/
def mappedPathRows (root : Vertex old role) (rows : List (Key × PathStar root)) :
    List (Key × List (RoleId new role)) :=
  rows.map (fun row => (row.1, encode new role (mapVertex translation role root)
    (mapStar translation role root row.2)))

theorem mappedPathRows_eq (root : Vertex old role) (rows : List (Key × PathStar root)) :
    mappedPathRows translation role root rows =
      reindexRows translation role (pathRows role root rows) := by
  simp only [mappedPathRows, reindexRows, pathRows, List.map_map, Function.comp_def]
  apply List.map_congr_left
  intro row _
  exact congrArg (fun indices => (row.1, indices)) (encode_naturality translation role root row.2)

/-- A common OLD payload keeps the underlying root and old-table qualified ID history. -/
def rootedRows (root : V) (entries : List (Key × List (RoleId old role))) :
    List (Key × (V × List (RoleId old role))) :=
  entries.map (fun entry => (entry.1, (root, entry.2)))

noncomputable def mappedPacked (root : Vertex old role) (rows : List (Key × PathStar root)) :
    Packed Key (List (RoleId new role)) :=
  pack (mappedPathRows translation role root rows)

variable [DecidableEq V]

/-- Actually unpack new rows, translate them back, then actually repack the common old payload. -/
noncomputable def restorePacked (hbijective : Function.Bijective translation.index) (root : V)
    (packed : Packed Key (List (RoleId new role))) :
    Option (Packed Key (V × List (RoleId old role))) :=
  match unpack packed with
  | none => none
  | some entries => some (pack (rootedRows role root
      (reindexRows (inverse translation hbijective) role entries)))

theorem restore_mappedPacked (hbijective : Function.Bijective translation.index)
    (root : Vertex old role) (rows : List (Key × PathStar root)) :
    restorePacked translation role hbijective root.value (mappedPacked translation role root rows) =
      some (pack (rootedRows role root.value (pathRows role root rows))) := by
  rw [restorePacked, mappedPacked, unpack_pack, mappedPathRows_eq]
  change some (pack (rootedRows role root.value
    (reindexRows (inverse translation hbijective) role
      (reindexRows translation role (pathRows role root rows))))) = _
  rw [inverse_rows]

theorem certified_reindex (hbijective : Function.Bijective translation.index)
    (root : Vertex old role) (rows : List (Key × PathStar root))
    (certificate : Certificate Key (V × List (RoleId old role)))
    (hentries : certificate.entries = rootedRows role root.value (pathRows role root rows)) :
    (mapVertex translation role root).value = root.value ∧
      ∃ restored, restorePacked translation role hbijective root.value
          (mappedPacked translation role root rows) = some restored ∧
        DecodesSatisfying restored certificate.predicate := by
  refine ⟨rfl, pack (rootedRows role root.value (pathRows role root rows)),
    restore_mappedPacked translation role hbijective root rows,
    certificate.reuse_of_same_decoding _ ?_⟩
  rw [unpack_pack, certificate.unpack_packed, hentries]

end GRWTSK.Combinatorics.DirectedGraph.RoleRelationReindex
```
