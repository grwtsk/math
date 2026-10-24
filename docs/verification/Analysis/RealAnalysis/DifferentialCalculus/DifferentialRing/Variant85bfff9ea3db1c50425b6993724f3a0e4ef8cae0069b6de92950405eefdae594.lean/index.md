# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentialRing.Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f724ff2818ed32d9f8f56b8601de1b585476401e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f724ff2818ed32d9f8f56b8601de1b585476401e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Differential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/differential--1b99c9acc76b6fa6208cf0c7.md) | 17 | `declaration-track:1b99c9acc76b6fa6208cf0c7eca8cd72f69c818d5f5a4acc931e894f83db9631` |
| 2 | `def` | [delabDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/delabderiv--b65c6087768f5257ef75db8d.md) | 32 | `declaration-track:b65c6087768f5257ef75db8dbe753fa36458e3a6caa49909b11400caf0f31b45` |
| 3 | `class` | [DifferentialAlgebra](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/differentialalgebra--aebbb950f191e5949a82985b.md) | 42 | `declaration-track:aebbb950f191e5949a82985bc161fae96ddcdb7f7d83b6e71a9d145cad8c40a3` |
| 4 | `lemma` | [algebraMap.coe_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/algebramap-coe-deriv--734e7404f23f5734de97bf67.md) | 49 | `result-track:734e7404f23f5734de97bf672c7897770b621f7e87bd6744c34898660c481ece` |
| 5 | `class` | [Differential.ContainConstants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/differential-containconstants--f15e1c1459b7cc0d8d0d57e9.md) | 58 | `declaration-track:f15e1c1459b7cc0d8d0d57e958293f9f2ccf1aa64e9d8dd732f35d32cfb3b110` |
| 6 | `lemma` | [mem_range_of_deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/mem-range-of-deriv-eq-zero--7ebce1ac6287d251cfb638d7.md) | 63 | `result-track:7ebce1ac6287d251cfb638d78a5aaf4c8d09d2c06034efc856040202ca2a394f` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/instance--fb29e0b5f07cafbd00d5d398.md) | 68 | `declaration-track:fb29e0b5f07cafbd00d5d39826878f7e51bb5bc781cde8ad2e22074fa286d5ef` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/instance--80ee3b3ec57c87767fa33f46.md) | 71 | `declaration-track:80ee3b3ec57c87767fa33f46169f42dad87997dcbac75f038ee48859c1607e6a` |
| 9 | `def` | [Differential.equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/differential-equiv--3c92c446804f14d29bb836d8.md) | 76 | `declaration-track:3c92c446804f14d29bb836d8f6eed597680aa227e0d25e6c02403b4225cc9929` |
| 10 | `lemma` | [DifferentialAlgebra.equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DifferentialRing/Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594.lean/declarations/differentialalgebra-equiv--b100e1520c12e52b62593c6f.md) | 84 | `result-track:b100e1520c12e52b62593c6f0a0140ae74a1eb26c14b43e3c1d1de2fada00830` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
