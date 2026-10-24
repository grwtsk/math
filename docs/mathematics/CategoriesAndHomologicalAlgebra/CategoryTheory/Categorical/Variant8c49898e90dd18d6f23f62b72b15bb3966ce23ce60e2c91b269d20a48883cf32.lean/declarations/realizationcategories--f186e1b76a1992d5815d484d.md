# RealizationCategories

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f69e4e9eee4d59c549c029f6d02bbf87786193a52047e6bf2e61d093ec68ca84",
  "kind": "structure",
  "lexical_name": "RealizationCategories",
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
  "slug": "realizationcategories--f186e1b76a1992d5815d484d",
  "source": {
    "blob": "3419599bba3d48412eb215d5d165472038921c47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant8c49898e90dd18d6f23f62b72b15bb3966ce23ce60e2c91b269d20a48883cf32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f186e1b76a1992d5815d484def35a4aefdac467d435b51f964a62ecbacbe655e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant8c49898e90dd18d6f23f62b72b15bb3966ce23ce60e2c91b269d20a48883cf32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f69e4e9eee4d59c549c029f6d02bbf87786193a52047e6bf2e61d093ec68ca84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RealizationCategories where
  Alg : CategoryLike.{uObj, uHom}
  Berk : CategoryLike.{uObj, uHom}
  Adic : CategoryLike.{uObj, uHom}
  Rig : CategoryLike.{uObj, uHom}
  FormRaw : CategoryLike.{uObj, uHom}
  FormLoc : CategoryLike.{uObj, uHom}
  Hen : CategoryLike.{uObj, uHom}
  PrismTA : CategoryLike.{uObj, uHom}
  Global : CategoryLike.{uObj, uHom}
  Arch : CategoryLike.{uObj, uHom}

/-- Typed realization functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant8c49898e90dd18d6f23f62b72b15bb3966ce23ce60e2c91b269d20a48883cf32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variant8c49898e90dd18d6f23f62b72b15bb3966ce23ce60e2c91b269d20a48883cf32.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3419599bba3d48412eb215d5d165472038921c47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
