# inr_pushoutLeftPushoutInrIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c3b533-e64b-8440-ed55-c2744c6f52a6",
  "kind": "theorem",
  "lexical_name": "inr_pushoutLeftPushoutInrIso_hom",
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
  "slug": "inr-pushoutleftpushoutinriso-hom--77ffa6065487801d3423657d",
  "source": {
    "blob": "f0e213a7cac9ef82a6b92e3d57f0854ef406a36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2236,
    "line": 2228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77ffa6065487801d3423657d9ff20b5f5342a0ee6fc4a1cb06da6495566387dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c3b533-e64b-8440-ed55-c2744c6f52a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2228–2236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inr_pushoutLeftPushoutInrIso_hom :
    pushout.inr ≫ (pushoutLeftPushoutInrIso f g g').hom = pushout.inr :=
  ((bigSquareIsPushout g g' _ _ f _ _ pushout.condition pushout.condition (pushoutIsPushout _ _)
          (pushoutIsPushout _ _)).comp_coconePointUniqueUpToIso_hom
      (pushoutIsPushout _ _) WalkingSpan.right :
    _)
#align category_theory.limits.inr_pushout_left_pushout_inr_iso_hom CategoryTheory.Limits.inr_pushoutLeftPushoutInrIso_hom

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean#L2228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e213a7cac9ef82a6b92e3d57f0854ef406a36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
