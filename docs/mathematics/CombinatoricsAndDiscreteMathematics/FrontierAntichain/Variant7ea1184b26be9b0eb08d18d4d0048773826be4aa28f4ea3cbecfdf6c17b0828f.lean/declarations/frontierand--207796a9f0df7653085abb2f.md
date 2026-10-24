# frontierAnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98aebaabe7744da26916bc858567c2e1c9a0bb3a925878a0087b7387a24a4a23",
  "kind": "def",
  "lexical_name": "frontierAnd",
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
  "slug": "frontierand--207796a9f0df7653085abb2f",
  "source": {
    "blob": "8e26ef09460af95674e254b0e364f281f28fb545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variant7ea1184b26be9b0eb08d18d4d0048773826be4aa28f4ea3cbecfdf6c17b0828f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:207796a9f0df7653085abb2f147cfa5b4445431e65b485cf0e2105714c33078d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variant7ea1184b26be9b0eb08d18d4d0048773826be4aa28f4ea3cbecfdf6c17b0828f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98aebaabe7744da26916bc858567c2e1c9a0bb3a925878a0087b7387a24a4a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def frontierAnd
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact normalizeFrontier
    ((left.product right).image fun pair => pair.1 ∪ pair.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variant7ea1184b26be9b0eb08d18d4d0048773826be4aa28f4ea3cbecfdf6c17b0828f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variant7ea1184b26be9b0eb08d18d4d0048773826be4aa28f4ea3cbecfdf6c17b0828f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e26ef09460af95674e254b0e364f281f28fb545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
