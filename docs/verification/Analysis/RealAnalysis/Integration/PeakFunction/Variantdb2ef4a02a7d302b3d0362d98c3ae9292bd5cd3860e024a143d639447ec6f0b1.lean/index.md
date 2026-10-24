# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PeakFunction.Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f268aa102add5bd5b7b1bf2c62c0b30f325c4b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/macro-rules--d54f57fc0ad2730b1cbc9206.md) | 34 | `declaration-track:d54f57fc0ad2730b1cbc92065957fa094fe9367cfc95e1f402892154975151b8` |
| 2 | `theorem` | [Set.disjoint_sdiff_inter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/set-disjoint-sdiff-inter--a7301c05d05beffe988a3714.md) | 42 | `result-track:a7301c05d05beffe988a3714188efa71bfade60c65046fe623087443452d0094` |
| 3 | `theorem` | [integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/integrableon-peak-smul-of-integrableon-of-continuouswithinat--061d621d97fd4f08f9cec1a4.md) | 54 | `result-track:061d621d97fd4f08f9cec1a4ce76cfbb838e97efec22f2d4ca79007ddf5bca09` |
| 4 | `theorem` | [tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/tendsto-set-integral-peak-smul-of-integrableon-of-continuouswithinat-aux--8a132824d4ba1cd5830e8e21.md) | 85 | `result-track:8a132824d4ba1cd5830e8e21c3fd5f223af8210e2100295357a8c192c7f22874` |
| 5 | `theorem` | [tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/tendsto-set-integral-peak-smul-of-integrableon-of-continuouswithinat--e3c05cb975e94464eeca6c22.md) | 160 | `result-track:e3c05cb975e94464eeca6c224417575b258955c84a11e4b83fcf836cd9a4929c` |
| 6 | `theorem` | [tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_measure_nhdsWithin_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-measure--ba6c5758026ab4c88e80ea7c.md) | 195 | `result-track:ba6c5758026ab4c88e80ea7c948292141b64366042f75cf43307d801f9606ff1` |
| 7 | `theorem` | [tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-integrab--6c82d550804152ba91c70616.md) | 294 | `result-track:6c82d550804152ba91c706163a07af823550fdaae293161409d7ac5413dc73d5` |
| 8 | `theorem` | [tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantdb2ef4a02a7d302b3d0362d98c3ae9292bd5cd3860e024a143d639447ec6f0b1.lean/declarations/tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-continuo--81572dacfacd45e4432e9071.md) | 316 | `result-track:81572dacfacd45e4432e9071b2928a5ec2e56939daf78546a7f2ab8a6f62b1fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
