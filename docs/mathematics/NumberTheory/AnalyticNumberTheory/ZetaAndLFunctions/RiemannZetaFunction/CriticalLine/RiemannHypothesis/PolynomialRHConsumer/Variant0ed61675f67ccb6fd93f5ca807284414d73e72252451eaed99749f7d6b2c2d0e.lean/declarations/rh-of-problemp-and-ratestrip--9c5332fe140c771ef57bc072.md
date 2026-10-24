# rh_of_problemP_and_rateStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfc43139-d328-3d35-7651-dda86593c6a4",
  "kind": "theorem",
  "lexical_name": "rh_of_problemP_and_rateStrip",
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
  "slug": "rh-of-problemp-and-ratestrip--9c5332fe140c771ef57bc072",
  "source": {
    "blob": "4a463b9f45e2ef0e8bec0d78e81e9779674661b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialRHConsumer/Variant0ed61675f67ccb6fd93f5ca807284414d73e72252451eaed99749f7d6b2c2d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c5332fe140c771ef57bc07261cf0f9d456db37531ea39c3a73a2253c177e16d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialRHConsumer/Variant0ed61675f67ccb6fd93f5ca807284414d73e72252451eaed99749f7d6b2c2d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfc43139-d328-3d35-7651-dda86593c6a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rh_of_problemP_and_rateStrip
    (hP : ProblemP) (hstrip : SourceRateStripSupplier) : RiemannHypothesis := by
  apply arbitrarily_small_strips_imply_rh
  intro η hη
  apply hstrip η hη
  obtain ⟨m, D, R, hD, hR, hbound⟩ := hP
  refine ⟨m, D, R, hD, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hDA : 0 ≤ D * A ^ m := mul_nonneg hD (pow_nonneg (by linarith) m)
  have hexp : 1 ≤ Real.exp (η * A) :=
    Real.one_le_exp_iff.mpr (mul_nonneg hη.le (by linarith))
  have hmono : D * A ^ m ≤ D * A ^ m * Real.exp (η * A) := by
    simpa only [mul_one] using (mul_le_mul_of_nonneg_left hexp hDA)
  exact (hbound A hRA).trans hmono

/-- The exact signed Mertens supplier reaches the same conditional final consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialRHConsumer/Variant0ed61675f67ccb6fd93f5ca807284414d73e72252451eaed99749f7d6b2c2d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialRHConsumer/Variant0ed61675f67ccb6fd93f5ca807284414d73e72252451eaed99749f7d6b2c2d0e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a463b9f45e2ef0e8bec0d78e81e9779674661b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
