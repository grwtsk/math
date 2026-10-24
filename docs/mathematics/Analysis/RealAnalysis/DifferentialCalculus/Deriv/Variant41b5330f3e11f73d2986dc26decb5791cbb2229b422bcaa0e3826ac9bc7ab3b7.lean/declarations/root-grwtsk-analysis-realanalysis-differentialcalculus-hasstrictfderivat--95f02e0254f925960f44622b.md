# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictFDerivAtCpow.Variant3165f9947cc58e736e4fcf1c4e4130ddbb5eabb66493f6df474933a7a3727a36.HasStrictDerivAt.rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9ef28fc-5d9e-a6c7-76ba-7c29bc73c0c3",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictFDerivAtCpow.Variant3165f9947cc58e736e4fcf1c4e4130ddbb5eabb66493f6df474933a7a3727a36.HasStrictDerivAt.rpow",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-hasstrictfderivat--95f02e0254f925960f44622b",
  "source": {
    "blob": "5b15eee17b8eca0bb8abd84f7e66a5a01d264768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95f02e0254f925960f44622b6d833d9531e1e4adfa26583e171b0b043758bc33",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9ef28fc-5d9e-a6c7-76ba-7c29bc73c0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictFDerivAtCpow.Variant3165f9947cc58e736e4fcf1c4e4130ddbb5eabb66493f6df474933a7a3727a36.HasStrictDerivAt.rpow {f g : ℝ → ℝ} {f' g' : ℝ} (hf : HasStrictDerivAt f f' x)
    (hg : HasStrictDerivAt g g' x) (h : 0 < f x) : HasStrictDerivAt (fun x => f x ^ g x)
      (f' * g x * f x ^ (g x - 1) + g' * f x ^ g x * Real.log (f x)) x := by
  convert (hasStrictFDerivAt_rpow_of_pos ((fun x => (f x, g x)) x) h).comp_hasStrictDerivAt x
    (hf.prod hg) using 1
  simp [mul_assoc, mul_comm, mul_left_comm]
#align has_strict_deriv_at.rpow HasStrictDerivAt.rpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b15eee17b8eca0bb8abd84f7e66a5a01d264768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
