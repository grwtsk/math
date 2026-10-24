# homologySequenceComposableArrows₅

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cdb9c7259c439fad80039e1213b9fe14fef81e4a1c83bac1d859df22816e42f",
  "kind": "def",
  "lexical_name": "homologySequenceComposableArrows₅",
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
  "slug": "homologysequencecomposablearrows--63dabfbc61df6c96cca9b3c5",
  "source": {
    "blob": "c4fc270a07081aa35b065a5e91b40e8e0927f808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 288,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63dabfbc61df6c96cca9b3c5c27955c82d7fb38d1186bca00aff46739b1da60c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cdb9c7259c439fad80039e1213b9fe14fef81e4a1c83bac1d859df22816e42f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] noncomputable def homologySequenceComposableArrows₅ : ComposableArrows A 5 :=
  mk₅ ((F.shift n₀).map T.mor₁) ((F.shift n₀).map T.mor₂)
    (F.homologySequenceδ T n₀ n₁ h) ((F.shift n₁).map T.mor₁) ((F.shift n₁).map T.mor₂)

include hT in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4fc270a07081aa35b065a5e91b40e8e0927f808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
