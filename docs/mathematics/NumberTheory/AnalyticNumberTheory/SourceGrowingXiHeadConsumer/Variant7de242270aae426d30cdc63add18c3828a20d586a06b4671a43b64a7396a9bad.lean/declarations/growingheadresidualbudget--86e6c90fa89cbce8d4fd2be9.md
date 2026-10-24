# growingHeadResidualBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3cda4040b01bd9c5abc9a1f602b1da045903aca8633d2533c59c25cfc2dc2de",
  "kind": "def",
  "lexical_name": "growingHeadResidualBudget",
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
  "slug": "growingheadresidualbudget--86e6c90fa89cbce8d4fd2be9",
  "source": {
    "blob": "d40a6991885d7318219b2ce14ca0bc7638cf16e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceGrowingXiHeadConsumer/Variant7de242270aae426d30cdc63add18c3828a20d586a06b4671a43b64a7396a9bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86e6c90fa89cbce8d4fd2be9ee1a32bcd9ae43733bea5e8ef9520c54d270aad3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceGrowingXiHeadConsumer/Variant7de242270aae426d30cdc63add18c3828a20d586a06b4671a43b64a7396a9bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3cda4040b01bd9c5abc9a1f602b1da045903aca8633d2533c59c25cfc2dc2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def growingHeadResidualBudget (K Q : ℝ) : ℝ :=
  exactHeadResidualBudget (K + growingXiHeadCost Q) Q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceGrowingXiHeadConsumer/Variant7de242270aae426d30cdc63add18c3828a20d586a06b4671a43b64a7396a9bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceGrowingXiHeadConsumer/Variant7de242270aae426d30cdc63add18c3828a20d586a06b4671a43b64a7396a9bad.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40a6991885d7318219b2ce14ca0bc7638cf16e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
