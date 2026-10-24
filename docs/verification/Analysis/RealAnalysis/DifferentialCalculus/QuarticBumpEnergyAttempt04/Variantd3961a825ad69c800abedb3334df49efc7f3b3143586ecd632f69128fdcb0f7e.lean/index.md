# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt04.Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c0965779e478418c36f88851f4c6faf8f710bdb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c0965779e478418c36f88851f4c6faf8f710bdb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayvalue--cf23b71dfcc2f42735de4962.md) | 12 | `declaration-track:cf23b71dfcc2f42735de49621c9d8ab322787287f6a937ea2b6fd2442e2dcc74` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayslope--673f08fd6fc2f0ec13031158.md) | 13 | `declaration-track:673f08fd6fc2f0ec13031158b628fc768e9739864c3a1fd9ee42d4354bcb754c` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/weightedmass--160f9ad907b9d4cea515b1a8.md) | 14 | `declaration-track:160f9ad907b9d4cea515b1a82afcb5f423e5a1402887cc6b150c486bc6366375` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/weightedenergy--5c8eef8a63a7ae4489f64796.md) | 15 | `declaration-track:5c8eef8a63a7ae4489f647964c5d7f628cbfb58c331866780b3d1b3b9a3407ce` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayvalue-hasderivat--f829c1242d9642f7ce245ac2.md) | 17 | `result-track:f829c1242d9642f7ce245ac2d95fcba27e480a6561a12a9bec5f78e2aae697d4` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayslope-hasderivat--9f4f284972b7319031e06d33.md) | 25 | `result-track:9f4f284972b7319031e06d330b7a130ae3057601a04c59d83df4f8d9ef4b26ba` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayvalue-continuous--00fb24d6f078fa2d6ac8fdfd.md) | 33 | `result-track:00fb24d6f078fa2d6ac8fdfd823b0933ae50b21527705597737fc980ff40c01b` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayslope-continuous--78070ab396fe4800a27ed24c.md) | 36 | `result-track:78070ab396fe4800a27ed24c1b22f81dc09669483b08a6eea88e8692b8559af4` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/weightedray-hasderivat--1dcd04dc7886a99b78d953b0.md) | 39 | `result-track:1dcd04dc7886a99b78d953b02234b315fe9199ed04654abcc4c87fb7a4988391` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/conjugateray-hasderivat--80c529164e507e39c9dd3299.md) | 51 | `result-track:80c529164e507e39c9dd329960a66213a4f6d10845de67134ac1256ecc031053` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/mass-integrand-continuous--91d58cdcf404ba79c6148461.md) | 55 | `result-track:91d58cdcf404ba79c614846109211ff297b161086a561db979bdd6be8a037aae` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/energy-integrand-continuous--3145b9a280f935bca6fc2cf9.md) | 59 | `result-track:3145b9a280f935bca6fc2cf9b0e6c20a5b0516f6b8c2ac4916c152ea186eff58` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/weightedenergy-nonneg--ec65915fd6ba499fdfedfd9f.md) | 63 | `result-track:ec65915fd6ba499fdfedfd9faf1772752d54d532d32f4b2b289791654f6369c8` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/rayvalue-zero--214a34d714696ddcdbbd0be5.md) | 67 | `result-track:214a34d714696ddcdbbd0be5e8ec20bd05f26236da17e88dc19a059fc06edb27` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/weightedmass-pos--25e57946094f4c1bfe1942aa.md) | 70 | `result-track:25e57946094f4c1bfe1942aa7775e968423f45141f894941430406dcda704c0e` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/declarations/weighted-energy-identity--e57ca52c4efc12b592de2142.md) | 85 | `result-track:e57ca52c4efc12b592de21423f4ae0a98ed5f745e407040ad46c0c71dc6a582d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
