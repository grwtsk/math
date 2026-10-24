# isSheaf_of_isRepresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "663f36dbdbffd4791c14e6eb9ffc4670910dc164",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f6054ce-3000-c386-0e7a-a0e953c5390a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed6e7ba3-6834-a414-66da-de951bb0aabc",
  "kind": "theorem",
  "lexical_name": "isSheaf_of_isRepresentable",
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
  "slug": "issheaf-of-isrepresentable--34cd478ed9e69c140940a73e",
  "source": {
    "blob": "663f36dbdbffd4791c14e6eb9ffc4670910dc164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34cd478ed9e69c140940a73ed022eae868e29d0e5e66ebfa38d3bee3aab8baea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed6e7ba3-6834-a414-66da-de951bb0aabc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_of_isRepresentable (P : Cᵒᵖ ⥤ Type w) [P.IsRepresentable] :
    Presieve.IsSheaf (canonicalTopology C) P := by
  rw [← Presieve.isSheaf_comp_uliftFunctor_iff]
  refine Presieve.isSheaf_iso (canonicalTopology C) (P ⋙ uliftFunctor.{v}).uliftYonedaReprXIso ?_
  rw [← isSheaf_iff_isSheaf_of_type]
  refine GrothendieckTopology.HasSheafCompose.isSheaf _ ?_
  rw [isSheaf_iff_isSheaf_of_type]
  exact isSheaf_yoneda_obj _

end Sheaf

namespace GrothendieckTopology

open Sheaf

/-- A subcanonical topology is a topology which is smaller than the canonical topology.
Equivalently, a topology is subcanonical iff every representable is a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `663f36dbdbffd4791c14e6eb9ffc4670910dc164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
