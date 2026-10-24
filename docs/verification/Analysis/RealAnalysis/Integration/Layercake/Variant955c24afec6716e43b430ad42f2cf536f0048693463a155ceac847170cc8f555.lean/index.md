# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Layercake.Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d19866ba90671e5d7abc7e000390ac59e90fdea8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d19866ba90671e5d7abc7e000390ac59e90fdea8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul-of-measurable--de93383d48bbb183694b6f20.md) | 88 | `result-track:de93383d48bbb183694b6f20028928849916e7446b63372c118c52c23eecaa0d` |
| 2 | `theorem` | [lintegral_comp_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-comp-eq-lintegral-meas-le-mul--7095567cab12cdeafcd8d347.md) | 180 | `result-track:7095567cab12cdeafcd8d347f51a8f0472015a3ee32a80056d41922aeda4fb2f` |
| 3 | `theorem` | [lintegral_eq_lintegral_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-eq-lintegral-meas-le--a3bb726e2ff7b3e0c802674b.md) | 220 | `result-track:a3bb726e2ff7b3e0c802674b8bd2c15ff3055a6db4d424bc65191926a58dadff` |
| 4 | `theorem` | [lintegral_rpow_eq_lintegral_meas_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-rpow-eq-lintegral-meas-le-mul--42d3a35b3db17a1fee6a3179.md) | 242 | `result-track:42d3a35b3db17a1fee6a3179e2ba94ccf013962f604dea5a8155c6116c742564` |
| 5 | `theorem` | [meas_le_ne_meas_lt_subset_meas_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/meas-le-ne-meas-lt-subset-meas-pos--c780fb032c8d5f5c7b3c22e0.md) | 279 | `result-track:c780fb032c8d5f5c7b3c22e03b60989204f3b715c7f45fb771420ce7f58ca71d` |
| 6 | `theorem` | [countable_meas_le_ne_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/countable-meas-le-ne-meas-lt--0ee60059d6439db15f91f20c.md) | 301 | `result-track:0ee60059d6439db15f91f20c85cd993f98156296552bc05552558ab50aa3a380` |
| 7 | `theorem` | [meas_le_ae_eq_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/meas-le-ae-eq-meas-lt--b00be9db4b46c4129e4690b2.md) | 308 | `result-track:b00be9db4b46c4129e4690b254a909d3135fd378579e5dcbff399e8d79ac2cfd` |
| 8 | `theorem` | [lintegral_comp_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-comp-eq-lintegral-meas-lt-mul--43b8b755fb4b995e9e4e409a.md) | 330 | `result-track:43b8b755fb4b995e9e4e409a924e88e0ff94ebc9488e9e0e12e6da0470753d97` |
| 9 | `theorem` | [lintegral_eq_lintegral_meas_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-eq-lintegral-meas-lt--d9e54a91b4a3445f86518527.md) | 348 | `result-track:d9e54a91b4a3445f8651852757b27ad2d55c50ae9527aac611f245757fcb64a4` |
| 10 | `theorem` | [lintegral_rpow_eq_lintegral_meas_lt_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Layercake/Variant955c24afec6716e43b430ad42f2cf536f0048693463a155ceac847170cc8f555.lean/declarations/lintegral-rpow-eq-lintegral-meas-lt-mul--9c54fa72cac74d01f550b653.md) | 364 | `result-track:9c54fa72cac74d01f550b653cd7bae584e9eaa66deb44ddb657ac923509a3ad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
