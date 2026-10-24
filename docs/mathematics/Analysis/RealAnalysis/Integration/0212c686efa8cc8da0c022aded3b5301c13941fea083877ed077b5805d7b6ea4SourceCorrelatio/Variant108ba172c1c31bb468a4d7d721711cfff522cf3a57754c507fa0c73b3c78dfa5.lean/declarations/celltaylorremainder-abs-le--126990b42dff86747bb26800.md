# cellTaylorRemainder_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d3423af-2707-0c27-ae9c-a3c6e2e94054",
  "kind": "theorem",
  "lexical_name": "cellTaylorRemainder_abs_le",
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
  "slug": "celltaylorremainder-abs-le--126990b42dff86747bb26800",
  "source": {
    "blob": "ed16a1782e4b66694f779075012ba2ef09bec5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 331,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:126990b42dff86747bb268004fbeb299f435c3e64b3e60752f4856f237f1ca1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d3423af-2707-0c27-ae9c-a3c6e2e94054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellTaylorRemainder_abs_le {A : ℝ} (hA : 200 ≤ A)
    {n : ℕ} (hn : 1 ≤ n) :
    |cellTaylorRemainder A n| ≤ (5 / (2 * A ^ 2)) * cellSecondMoment n := by
  have hp : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  have hf : IntervalIntegrable (fun x =>
      (sourceCorrelation explicitSecondDerivative A (Real.log n) -
        sourceCorrelation explicitSecondDerivative A (Real.log x) +
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
          (Real.log x - Real.log n)) / Real.sqrt x)
      volume (n : ℝ) ((n : ℝ) + 1) := by
    rw [remainder_integrand_eq]
    exact (cellIntegrand_intervalIntegrable hp hn).add
      ((cellFirstMoment_integrand_intervalIntegrable hn).const_mul _)
  have hg := (cellSecondMoment_integrand_intervalIntegrable hn).const_mul
    (5 / (2 * A ^ 2))
  calc
    |cellTaylorRemainder A n| ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1),
        |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
          sourceCorrelation explicitSecondDerivative A (Real.log x) +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
            (Real.log x - Real.log n)) / Real.sqrt x| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1), (5 / (2 * A ^ 2)) *
        ((Real.log x - Real.log n) ^ 2 / Real.sqrt x) :=
      intervalIntegral.integral_mono_on (by linarith) hf.abs hg
        (fun x hx => remainder_integrand_abs_le hA n (hn0.trans_le hx.1))
    _ = _ := intervalIntegral.integral_const_mul _ _

end FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed16a1782e4b66694f779075012ba2ef09bec5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
