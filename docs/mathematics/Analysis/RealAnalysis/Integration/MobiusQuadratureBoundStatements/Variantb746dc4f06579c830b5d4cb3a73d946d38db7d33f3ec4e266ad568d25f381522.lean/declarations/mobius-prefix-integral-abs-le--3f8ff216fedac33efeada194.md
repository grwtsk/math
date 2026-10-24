# mobius_prefix_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bac222b-be10-d5f7-70cf-9f7ff6cce3b2",
  "kind": "theorem",
  "lexical_name": "mobius_prefix_integral_abs_le",
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
  "slug": "mobius-prefix-integral-abs-le--3f8ff216fedac33efeada194",
  "source": {
    "blob": "fdfa939337d512202f8068158380bdb5828fdb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f8ff216fedac33efeada194823c3a7e371a85dfe0cc60aecef583a7b231d888",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bac222b-be10-d5f7-70cf-9f7ff6cce3b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_prefix_integral_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |(∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) -
      (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∫ t in 1..x / (d : ℝ), Real.log t ^ 2)| ≤ 2 * x := by
  rw [mobius_prefix_eq_integral_add_error]
  simpa only [add_sub_cancel_left] using mobiusQuadratureError_abs_le x hx

end
end MobiusQuadratureBoundScratch

open MobiusQuadratureBoundScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variantb746dc4f06579c830b5d4cb3a73d946d38db7d33f3ec4e266ad568d25f381522.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfa939337d512202f8068158380bdb5828fdb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
