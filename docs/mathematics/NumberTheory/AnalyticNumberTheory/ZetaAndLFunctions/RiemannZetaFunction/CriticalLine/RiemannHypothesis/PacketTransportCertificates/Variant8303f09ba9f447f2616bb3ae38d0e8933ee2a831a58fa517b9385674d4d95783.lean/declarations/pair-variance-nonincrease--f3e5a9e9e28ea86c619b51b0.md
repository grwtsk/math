# pair_variance_nonincrease

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43c2f831-a26d-2832-f3cc-c4be5c7b49e7",
  "kind": "theorem",
  "lexical_name": "pair_variance_nonincrease",
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
  "slug": "pair-variance-nonincrease--f3e5a9e9e28ea86c619b51b0",
  "source": {
    "blob": "5794e7ff681d50e94d80b3ca6876582ec8f2e91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PacketTransportCertificates/Variant8303f09ba9f447f2616bb3ae38d0e8933ee2a831a58fa517b9385674d4d95783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e5a9e9e28ea86c619b51b09e23581dae6328c1ef69c1f0ac5bd9c6fc9661c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PacketTransportCertificates/Variant8303f09ba9f447f2616bb3ae38d0e8933ee2a831a58fa517b9385674d4d95783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c2f831-a26d-2832-f3cc-c4be5c7b49e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_variance_nonincrease {c d : ℝ} (hc : 0 < c) (hd : 0 < d)
    (x y m : ℝ) :
    pairVariance c d (pairLoad c d x y) (pairLoad d c y x) m ≤
      pairVariance c d x y m := by
  have he := pair_variance_drop hc.ne' hd.ne' (add_pos hc hd).ne' x y m
  have hn : 0 ≤ c * d / (2 * (c + d)) * (x / c - y / d) ^ 2 :=
    mul_nonneg (div_nonneg (mul_nonneg hc.le hd.le)
      (mul_nonneg (by norm_num) (add_nonneg hc.le hd.le))) (sq_nonneg _)
  linarith

/-- Splitting a capacity at constant density preserves its variance exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PacketTransportCertificates/Variant8303f09ba9f447f2616bb3ae38d0e8933ee2a831a58fa517b9385674d4d95783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PacketTransportCertificates/Variant8303f09ba9f447f2616bb3ae38d0e8933ee2a831a58fa517b9385674d4d95783.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5794e7ff681d50e94d80b3ca6876582ec8f2e91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
