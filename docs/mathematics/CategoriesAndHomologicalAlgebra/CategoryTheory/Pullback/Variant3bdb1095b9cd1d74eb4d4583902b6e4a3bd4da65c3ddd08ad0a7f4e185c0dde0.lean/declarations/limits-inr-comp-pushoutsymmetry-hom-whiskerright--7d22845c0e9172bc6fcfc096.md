# Limits.inr_comp_pushoutSymmetry_hom_whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dc14878-2828-eb5f-147a-e235187da738",
  "kind": "lemma",
  "lexical_name": "Limits.inr_comp_pushoutSymmetry_hom_whiskerRight",
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
  "slug": "limits-inr-comp-pushoutsymmetry-hom-whiskerright--7d22845c0e9172bc6fcfc096",
  "source": {
    "blob": "f0154ed56991369afd444c5b07f34fcc4e7e4eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant3bdb1095b9cd1d74eb4d4583902b6e4a3bd4da65c3ddd08ad0a7f4e185c0dde0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d22845c0e9172bc6fcfc096108cd7b0694e4f19a5b98bb0ba38c592d8ae0df5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant3bdb1095b9cd1d74eb4d4583902b6e4a3bd4da65c3ddd08ad0a7f4e185c0dde0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dc14878-2828-eb5f-147a-e235187da738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.inr_comp_pushoutSymmetry_hom_whiskerRight (f : X ⟶ Y) (g : X ⟶ Z) :
    pushout.inr f g ▷ Q ≫ (pushoutSymmetry f g).hom ▷ Q = pushout.inl g f ▷ Q := by
  simp [← comp_whiskerRight]

end Pushout

end CategoryTheory.MonoidalCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant3bdb1095b9cd1d74eb4d4583902b6e4a3bd4da65c3ddd08ad0a7f4e185c0dde0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant3bdb1095b9cd1d74eb4d4583902b6e4a3bd4da65c3ddd08ad0a7f4e185c0dde0.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0154ed56991369afd444c5b07f34fcc4e7e4eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
