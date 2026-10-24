# pullbackAssocIsPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a1ec98a2d7d7393e1ca92ee0767c304f1cb5ed79e61e2ddc8a708ee07d71ff6",
  "kind": "def",
  "lexical_name": "pullbackAssocIsPullback",
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
  "slug": "pullbackassocispullback--51ecb95d148ce75c878bf710",
  "source": {
    "blob": "795528a7feb85926c213ad5b952defaaf3118ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51ecb95d148ce75c878bf7104c81ae6d2117c4991ac350b52e9b760b837dc4f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a1ec98a2d7d7393e1ca92ee0767c304f1cb5ed79e61e2ddc8a708ee07d71ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackAssocIsPullback [HasPullback (g₂ ≫ f₃) f₄] :
    IsLimit
      (PullbackCone.mk (l₁ ≫ g₁) l₂
        (show (l₁ ≫ g₁) ≫ f₁ = l₂ ≫ g₃ ≫ f₂ by
          rw [pullback.lift_fst_assoc, Category.assoc, Category.assoc, pullback.condition])) := by
  simpa using pasteVertIsPullback rfl (pullbackIsPullback _ _)
    (pullbackPullbackLeftIsPullback f₁ f₂ f₃ f₄)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795528a7feb85926c213ad5b952defaaf3118ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
