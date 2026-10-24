# CokernelCofork.IsColimit.isZero_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14ea1bb8498680e5427f46c65769d0a28b62af6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 726,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1cdd3c8-a289-97b2-6be8-099edf992ca9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de85f994-762a-7f2d-b438-85235ccb0453",
  "kind": "lemma",
  "lexical_name": "CokernelCofork.IsColimit.isZero_of_epi",
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
  "slug": "cokernelcofork-iscolimit-iszero-of-epi--169f55dbdd5d8c79c4f66ffa",
  "source": {
    "blob": "14ea1bb8498680e5427f46c65769d0a28b62af6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 726,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:169f55dbdd5d8c79c4f66ffac79e41cfac01d401433b081d2307e7da2e06ce73",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de85f994-762a-7f2d-b438-85235ccb0453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CokernelCofork.IsColimit.isZero_of_epi {X Y : C} {f : X ⟶ Y}
    {c : CokernelCofork f} (hc : IsColimit c) [Epi f] : IsZero c.pt := by
  have := Cofork.IsColimit.epi hc
  rw [IsZero.iff_id_eq_zero, ← cancel_epi c.π, ← cancel_epi f,
    c.condition_assoc, comp_zero, comp_zero, zero_comp]

end

namespace CokernelCofork

variable {f} {X' Y' : C} {f' : X' ⟶ Y'}

/-- The morphism between points of cokernel coforks induced by a morphism
in the category of arrows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a6eccdef01fbe25580343cc8b391b1ad154708400d3f72e409fffb5a614582c.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ea1bb8498680e5427f46c65769d0a28b62af6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
