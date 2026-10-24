# multilinearMapToDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdc701823fb5ff7b837831dbfa32961732117bea09b6bd775ed0f3c5077d8e42",
  "kind": "def",
  "lexical_name": "multilinearMapToDual",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "multilinearmaptodual--3cadf96d2aeaadf2994a3257",
  "source": {
    "blob": "d87c0381443149509c36efc2e0b3274908237441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 29,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cadf96d2aeaadf2994a325772999bcd1bf50fdd874bccc275f3f53d84728eb7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdc701823fb5ff7b837831dbfa32961732117bea09b6bd775ed0f3c5077d8e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def multilinearMapToDual :
    MultilinearMap R (fun (_ : Fin n) ↦ Module.Dual R M)
      (Module.Dual R (⨂[R]^n M)) :=
  have : ∀ (_ : DecidableEq (Fin n)) (f : Fin n → Module.Dual R M)
      (φ : Module.Dual R M) (i j : Fin n) (v : Fin n → M),
      (Function.update f i φ) j (v j) =
      Function.update (fun j ↦ f j (v j)) i (φ (v i)) j := fun _ f φ i j v ↦ by
    by_cases h : j = i
    · subst h
      simp only [Function.update_self]
    · simp only [Function.update_of_ne h]
  { toFun := fun f ↦ PiTensorProduct.lift
      (MultilinearMap.compLinearMap (MultilinearMap.mkPiRing R (Fin n) 1) f)
    map_update_add' := fun f i φ₁ φ₂ ↦ by
      ext v
      dsimp
      simp only [lift.tprod, MultilinearMap.compLinearMap_apply, this,
        LinearMap.add_apply, MultilinearMap.map_update_add]
    map_update_smul' := fun f i a φ ↦  by
      ext v
      dsimp
      simp only [lift.tprod, MultilinearMap.compLinearMap_apply, this,
         LinearMap.smul_apply, MultilinearMap.map_update_smul]
      dsimp }

variable {R M n} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variant36c14ab8c354efd7fc88620664febb106cc22bc9b09272a4616e7350f45c3fdf.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d87c0381443149509c36efc2e0b3274908237441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
