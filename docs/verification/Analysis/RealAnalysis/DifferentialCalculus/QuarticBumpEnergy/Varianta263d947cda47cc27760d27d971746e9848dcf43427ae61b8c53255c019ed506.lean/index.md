# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergy.Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98146d4a733ec24962d9077dceb75b7303eac8be",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98146d4a733ec24962d9077dceb75b7303eac8be`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean.json)

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
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayvalue--fab581341998369e9af38c52.md) | 12 | `declaration-track:fab581341998369e9af38c524d060fb7911935eea3a5d0d218f77d35579e04e6` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayslope--0fe6811ee8a066298d473803.md) | 13 | `declaration-track:0fe6811ee8a066298d473803f6b8b70e6b1413a004599b2f2dcbda56cb9fadc5` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/weightedmass--55a58527e20c84438dc2c5f0.md) | 14 | `declaration-track:55a58527e20c84438dc2c5f0413e61200a9b7cba45dcb39a50000624f8475c84` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/weightedenergy--853414081030f66634276656.md) | 15 | `declaration-track:853414081030f66634276656dabd4e938598df3619609d84de096059a6ffc4c5` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayvalue-hasderivat--58885ad617dfe8c6feb178a3.md) | 17 | `result-track:58885ad617dfe8c6feb178a3ab83402c195208ff34e0e7332fac7c412f3da76d` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayslope-hasderivat--d230d29cc23200431b951ad1.md) | 25 | `result-track:d230d29cc23200431b951ad1891a794c916ead7605b2377b99cc64446e0f3710` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayvalue-continuous--f8607026c3739afd9da724c3.md) | 33 | `result-track:f8607026c3739afd9da724c3849f07f5e82511e16fb5fe44ccc32a2969ff57c7` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayslope-continuous--b51f5c2e5dcf6f0bbf9fb2da.md) | 36 | `result-track:b51f5c2e5dcf6f0bbf9fb2da4b7a1262f7b79c9ce1bd319c52a731214598b202` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/weightedray-hasderivat--a9ac7d25ca2693b99da6a2f2.md) | 39 | `result-track:a9ac7d25ca2693b99da6a2f29289852fb299462892151a2172d53f3d9ccca2c0` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/conjugateray-hasderivat--6abe64afe167b84c13f2b9b0.md) | 51 | `result-track:6abe64afe167b84c13f2b9b0762f5284f5e77f5e453d80f7ec207c219f99aaaa` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/mass-integrand-continuous--7f6ff5256608420f044c5224.md) | 55 | `result-track:7f6ff5256608420f044c5224066d3886487e68441f0210c61b2e37c8f2538f3a` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/energy-integrand-continuous--84d0e17f9b6b955faf5b5105.md) | 59 | `result-track:84d0e17f9b6b955faf5b510551323dd6d7339c7fcd42233a6744e8e4d7fdd2b2` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/weightedenergy-nonneg--c5a3b2937edeeca82c5cc242.md) | 63 | `result-track:c5a3b2937edeeca82c5cc2422348f09d3b5167cc100dcd53d3bac98b2b5838a6` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/rayvalue-zero--7cebefdb56b15e7144965eaa.md) | 67 | `result-track:7cebefdb56b15e7144965eaab469e0abdc938ef0b35a32784372fb61fdd6f881` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/weightedmass-pos--f8d079ea1acbb28dc60e5e72.md) | 70 | `result-track:f8d079ea1acbb28dc60e5e72c39d47831dc536d4249732d35df4c3d8cd9e0659` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/weighted-energy-identity--5f7790505d538f7d3e4f5bbe.md) | 85 | `result-track:5f7790505d538f7d3e4f5bbeae111fba97524d69be6c955f04d84c6ec6df8ac9` |
| 17 | `theorem` | [literal_quartic_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/literal-quartic-nonzero--0bd75f89d0529b4ef6b58908.md) | 127 | `result-track:0bd75f89d0529b4ef6b58908bdc4800450e8d00ad0f3b49a1b58bdfa43e29d1b` |
| 18 | `theorem` | [actual_mellin_halfstrip_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergy/Varianta263d947cda47cc27760d27d971746e9848dcf43427ae61b8c53255c019ed506.lean/declarations/actual-mellin-halfstrip-nonzero--065ec64a374529439540d257.md) | 145 | `result-track:065ec64a374529439540d257d49d80141e16ceee48f14ac709b045c6194336f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
