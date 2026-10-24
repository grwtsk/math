# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TorusIntegral.Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55a5cac71ff9782736cb59f57bd97d9430a11ce0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55a5cac71ff9782736cb59f57bd97d9430a11ce0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Tuple` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Superscript` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/macro-rules--889ab792b454b2b240fd1fd2.md) | 78 | `declaration-track:889ab792b454b2b240fd1fd21c7261f2b33cdc2b7c48d631652356c983eb30dd` |
| 2 | `def` | [torusMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusmap--5333e759652e3c9e94320c8b.md) | 87 | `declaration-track:5333e759652e3c9e94320c8b7d2e99450f5566b08ede5e41a228e518217be3a6` |
| 3 | `theorem` | [torusMap_sub_center](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusmap-sub-center--5a63c163b972cad44b9a635e.md) | 89 | `result-track:5a63c163b972cad44b9a635e90a7cfe222b44449c5c86cfd71a339081cec5b94` |
| 4 | `theorem` | [torusMap_eq_center_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusmap-eq-center-iff--0ee49fe9ed3d156b4fd457f1.md) | 92 | `result-track:0ee49fe9ed3d156b4fd457f16c37edb2622a759d761483a2326cca430d6f2050` |
| 5 | `theorem` | [torusMap_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusmap-zero-radius--f1f961483ebd183ef3bac618.md) | 96 | `result-track:f1f961483ebd183ef3bac618c0ed33e16ceabda92d6a2c7dfd395dfcde7b9d8a` |
| 6 | `def` | [TorusIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegrable--de9d80b22cc2e40eff3a61cb.md) | 105 | `declaration-track:de9d80b22cc2e40eff3a61cb8d19b4bd4a5a9d9dfbc27868a89b8facf1d36df9` |
| 7 | `theorem` | [torusIntegrable_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegrable-const--d6c3e64bbe9ebff0c2edee8d.md) | 113 | `result-track:d6c3e64bbe9ebff0c2edee8d859d33e0b33a2d1affcc807b985e1e22e980ca07` |
| 8 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/neg--8ba52beda0cc2b10bb49aa63.md) | 117 | `result-track:8ba52beda0cc2b10bb49aa63f586d803938e71ade5074b6dd4b8335ef31a3dc6` |
| 9 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/add--30f918ee3584fa94c5e3f179.md) | 120 | `result-track:30f918ee3584fa94c5e3f179c215a931b002c61882a57436efe9104a2b8cd2e2` |
| 10 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/sub--086be63e4b9c753b496c9e72.md) | 125 | `result-track:086be63e4b9c753b496c9e7220e74c7976d5576961ba33b797d56d6cb57ed6d7` |
| 11 | `theorem` | [torusIntegrable_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegrable-zero-radius--84a660d48a76e066cfced4ae.md) | 129 | `result-track:84a660d48a76e066cfced4ae1671ab1165af5e3f2a96bcac2fc89d3a3d9bfdde` |
| 12 | `theorem` | [function_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/function-integrable--ceb9e5983f75160ce1506171.md) | 134 | `result-track:ceb9e5983f75160ce150617168ce074b73ef074fddc0add07bed7a3686317266` |
| 13 | `def` | [torusIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral--1b866e2c8b709a1bdaeec120.md) | 147 | `declaration-track:1b866e2c8b709a1bdaeec1207c933e170f0cc6db272970765f30337f6093a6f2` |
| 14 | `theorem` | [torusIntegral_radius_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-radius-zero--f5d7ffead3e95f240b09f2c5.md) | 153 | `result-track:f5d7ffead3e95f240b09f2c5076cde73b3eab74b2e3e6e884373c179fa3791a3` |
| 15 | `theorem` | [torusIntegral_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-neg--dc073434ff8c80a7117078fd.md) | 158 | `result-track:dc073434ff8c80a7117078fd39e6ecf668dabbfebf4ffc2146db39f8be1c270f` |
| 16 | `theorem` | [torusIntegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-add--a59b7d49d03d4727eb24801d.md) | 161 | `result-track:a59b7d49d03d4727eb24801d15bf54b6428ded5a95126eec729ffce9f74b081b` |
| 17 | `theorem` | [torusIntegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-sub--98ce1955ed8358a6df0bd8ea.md) | 166 | `result-track:98ce1955ed8358a6df0bd8ea68d95f57f3c24644fa91afdbf32f8817e0b01d15` |
| 18 | `theorem` | [torusIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-smul--27917ca437929070ef9e9f2d.md) | 170 | `result-track:27917ca437929070ef9e9f2dbe60cac44228e845eb0ac32b4aae78aca580dd60` |
| 19 | `theorem` | [torusIntegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-const-mul--0d0660d0646412900bb55986.md) | 174 | `result-track:0d0660d0646412900bb5598674fd3e05edacedbae2ba38113ec7f07449bcf8fe` |
| 20 | `theorem` | [norm_torusIntegral_le_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/norm-torusintegral-le-of-norm-le-const--5c500819c60bfeed7772f375.md) | 180 | `result-track:5c500819c60bfeed7772f375a61c6f6a6c8405c623444ce0f91892fa39941b49` |
| 21 | `theorem` | [torusIntegral_dim0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-dim0--ee8922b5149ba8a03c92d306.md) | 194 | `result-track:ee8922b5149ba8a03c92d306494ee0b3dfd124847826bfbd5e499343eeb4f2fe` |
| 22 | `theorem` | [torusIntegral_dim1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-dim1--3b40dfd621c58f1ff896124e.md) | 203 | `result-track:3b40dfd621c58f1ff896124eb21714583fd297a4028419d6ab5928d37ba2bae8` |
| 23 | `theorem` | [torusIntegral_succAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-succabove--a5934d63050123ad4496226b.md) | 217 | `result-track:a5934d63050123ad4496226b432ad8bdabcc29f05e3125cfdfcfa51c5536dd10` |
| 24 | `theorem` | [torusIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant8faa4c97e344396a78ebb7d07735a1447fae6e3afd21bc928faee5ef195e9b16.lean/declarations/torusintegral-succ--14d3ecdd89ef34b0e87a60e1.md) | 242 | `result-track:14d3ecdd89ef34b0e87a60e172afc49c3f4a85604529486971a7d451cfde7bde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
