# positive_slack_schur

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7238347e-a97e-9eb1-6f1a-fa82f6b975e6",
  "kind": "theorem",
  "lexical_name": "positive_slack_schur",
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
  "slug": "positive-slack-schur--41f38c6abc350607c825b62e",
  "source": {
    "blob": "865029e37941e3876a925f4b8714fc36c07d051f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f38c6abc350607c825b62ecc5b14dba938d829a6028cb6024c848867e14eba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7238347e-a97e-9eb1-6f1a-fa82f6b975e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_slack_schur {a c d b : ℝ} (ha : 0 < a) (hb : c ^ 2 / a - d ≤ b) :
    repairPositive a c d b := by
  intro x y
  have htail : 0 ≤ d + b - c ^ 2 / a := by linarith
  have hs : 0 ≤ a * (x + c / a * y) ^ 2 := mul_nonneg ha.le (sq_nonneg _)
  have ht := mul_nonneg htail (sq_nonneg y)
  have he : repairQuadratic a c d b x y =
      a * (x + c / a * y) ^ 2 + (d + b - c ^ 2 / a) * y ^ 2 := by
    unfold repairQuadratic
    field_simp
    ring
  rw [he]
  exact add_nonneg hs ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865029e37941e3876a925f4b8714fc36c07d051f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
