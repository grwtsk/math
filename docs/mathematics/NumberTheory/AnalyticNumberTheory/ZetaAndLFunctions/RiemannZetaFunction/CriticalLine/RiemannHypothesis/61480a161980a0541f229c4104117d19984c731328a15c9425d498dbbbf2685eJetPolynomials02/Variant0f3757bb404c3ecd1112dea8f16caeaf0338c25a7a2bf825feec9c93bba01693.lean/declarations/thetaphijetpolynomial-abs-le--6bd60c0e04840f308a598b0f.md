# thetaPhiJetPolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51abda0-3f6f-a9e8-8241-055a3da462b9",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetPolynomial_abs_le",
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
  "slug": "thetaphijetpolynomial-abs-le--6bd60c0e04840f308a598b0f",
  "source": {
    "blob": "d08eadb7b4cf7efccfa98459d8cd75095504e5be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bd60c0e04840f308a598b0f21c7d636981956352339a5c47cd770cfbbaa8a84",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51abda0-3f6f-a9e8-8241-055a3da462b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetPolynomial_abs_le (k : Fin 5) {y : ℝ} (hy : 3 ≤ y) :
    |thetaPhiJetPolynomial k y| ≤ 2 * 4 ^ k.val * y ^ (k.val + 1) := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 3 := by dsimp [x]; ring
  rw [he]
  have hplus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) +
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial] <;> ring_nf <;> first | positivity | linarith
  have hminus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial] <;> ring_nf <;> first | positivity | linarith
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant0f3757bb404c3ecd1112dea8f16caeaf0338c25a7a2bf825feec9c93bba01693.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d08eadb7b4cf7efccfa98459d8cd75095504e5be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
