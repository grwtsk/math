# Equivalence.isIdempotentComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f21e21b-f24a-ad0b-14a9-1b4f5300b692",
  "kind": "theorem",
  "lexical_name": "Equivalence.isIdempotentComplete",
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
  "slug": "equivalence-isidempotentcomplete--1494a751dac8a9b3f81a1ba5",
  "source": {
    "blob": "a6cbca8d68ed4bccf2492d86e016b77f170adc4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1494a751dac8a9b3f81a1ba55c82612c314ba2a3456f8c452de430aa38618d45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f21e21b-f24a-ad0b-14a9-1b4f5300b692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equivalence.isIdempotentComplete {D : Type*} [Category D] (ε : C ≌ D)
    (h : IsIdempotentComplete C) : IsIdempotentComplete D := by
  refine ⟨?_⟩
  intro X' p hp
  let φ := ε.counitIso.symm.app X'
  erw [split_iff_of_iso φ p (φ.inv ≫ p ≫ φ.hom)
      (by
        slice_rhs 1 2 => rw [φ.hom_inv_id]
        rw [id_comp])]
  rcases IsIdempotentComplete.idempotents_split (ε.inverse.obj X') (ε.inverse.map p)
      (by rw [← ε.inverse.map_comp, hp]) with
    ⟨Y, i, e, ⟨h₁, h₂⟩⟩
  use ε.functor.obj Y, ε.functor.map i, ε.functor.map e
  constructor
  · rw [← ε.functor.map_comp, h₁, ε.functor.map_id]
  · simp only [← ε.functor.map_comp, h₂, Equivalence.fun_inv_map]
    rfl

/-- If `C` and `D` are equivalent categories, that `C` is idempotent complete iff `D` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6cbca8d68ed4bccf2492d86e016b77f170adc4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
