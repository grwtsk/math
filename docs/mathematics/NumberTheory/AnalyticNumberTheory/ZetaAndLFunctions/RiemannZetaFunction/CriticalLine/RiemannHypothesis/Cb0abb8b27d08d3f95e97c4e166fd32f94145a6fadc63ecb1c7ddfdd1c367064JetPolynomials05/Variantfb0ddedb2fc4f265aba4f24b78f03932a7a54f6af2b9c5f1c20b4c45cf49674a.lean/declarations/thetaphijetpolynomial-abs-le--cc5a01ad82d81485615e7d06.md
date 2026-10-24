# thetaPhiJetPolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92a56818-4b02-5452-f01a-2afd951dd422",
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
  "slug": "thetaphijetpolynomial-abs-le--cc5a01ad82d81485615e7d06",
  "source": {
    "blob": "b837d60eb9be045a55669074fd0e3f6e5694925b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc5a01ad82d81485615e7d06990df0fd4ba25a51c1ae629475137744d5411909",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92a56818-4b02-5452-f01a-2afd951dd422`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

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
    fin_cases k <;> norm_num [thetaPhiJetPolynomial] <;> ring_nf <;> first | positivity | nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4, pow_nonneg hx 5]
  have hminus : 0 ≤ 2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
      thetaPhiJetPolynomial k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial] <;> ring_nf <;> first | positivity | nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4, pow_nonneg hx 5]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The scalar Hankel determinant of a five-term jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cb0abb8b27d08d3f95e97c4e166fd32f94145a6fadc63ecb1c7ddfdd1c367064JetPolynomials05/Variantfb0ddedb2fc4f265aba4f24b78f03932a7a54f6af2b9c5f1c20b4c45cf49674a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b837d60eb9be045a55669074fd0e3f6e5694925b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
