# AnalyticAt.zpow_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1ff8822-a9ed-1ead-1b8d-aede2359aa3a",
  "kind": "lemma",
  "lexical_name": "AnalyticAt.zpow_nonneg",
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
  "slug": "analyticat-zpow-nonneg--b56386be4e0592a60a4110e9",
  "source": {
    "blob": "018e193e9c6d472ce64971f3ba8eb903f7a77441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 718,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b56386be4e0592a60a4110e9e2cd63d64fb827df4819487e44649638473d5e2f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1ff8822-a9ed-1ead-1b8d-aede2359aa3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticAt.zpow_nonneg {f : E → 𝕝} {z : E} {n : ℤ} (hf : AnalyticAt 𝕜 f z) (hn : 0 ≤ n) :
    AnalyticAt 𝕜 (f ^ n) z := by
  simpa [← zpow_natCast, hn] using hf.pow n.toNat

/-- ZPowers of analytic functions (into a normed division algebra over `𝕜`) are analytic if the
exponent is nonnegative. -/
@[to_fun]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Variant95d36ea3c76e7b22e558ba1dea8dadcc5e84285bbc2c2b3512f5837d7562b94e.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018e193e9c6d472ce64971f3ba8eb903f7a77441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
