# exists_hom_ι_eq_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0b53f0a-699d-8291-5e00-3cc3806cdf05",
  "kind": "theorem",
  "lexical_name": "exists_hom_ι_eq_of_isColimit",
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
  "slug": "exists-hom-eq-of-iscolimit--97b12aeb35e2bf8ae2a1da60",
  "source": {
    "blob": "69c410916f085e56991cb4c4bba0d99448931472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97b12aeb35e2bf8ae2a1da602453a8f9f1bcc7326cd716cfb9d8523c83a304bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b53f0a-699d-8291-5e00-3cc3806cdf05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_hom_ι_eq_of_isColimit [IsFilteredOrEmpty J] {D : Cocone F} (hD : IsColimit D)
    (x : ToType D.pt) (k : J) :
    ∃ (j : J) (_ : k ⟶ j) (y : ToType (F.obj j)), D.ι.app j y = x := by
  obtain ⟨j, y, rfl⟩ := isColimit_exists_rep F hD x
  refine ⟨IsFiltered.max k j, IsFiltered.leftToMax _ _, F.map (IsFiltered.rightToMax _ _) y, ?_⟩
  rw [← ConcreteCategory.comp_apply]
  congr 1
  simp

end FilteredColimits

end Colimits

end CategoryTheory.Limits.Concrete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9a71c5386a0dbfdfffd2e4fbae60d7fcc730f000fc073899d1896079b0bda6a2.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c410916f085e56991cb4c4bba0d99448931472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
