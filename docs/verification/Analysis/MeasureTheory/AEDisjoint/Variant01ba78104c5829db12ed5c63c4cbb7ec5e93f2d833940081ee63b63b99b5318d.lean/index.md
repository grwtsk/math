# Verification target: GRWTSK.Analysis.MeasureTheory.AEDisjoint.Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7998e50fd3efc5ff8db45ff3e8b3554c7fb6df4c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7998e50fd3efc5ff8db45ff3e8b3554c7fb6df4c`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEDisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/aedisjoint--56405d9ac5654d35caa9b3b0.md) | 24 | `declaration-track:56405d9ac5654d35caa9b3b08badacf659d4f3ce03d816c9b5eb284b62ee0603` |
| 2 | `theorem` | [exists_null_pairwise_disjoint_diff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/exists-null-pairwise-disjoint-diff--f13b6ef2dcf36b5eac68414b.md) | 31 | `result-track:f13b6ef2dcf36b5eac68414bd54240071aa564143159555f9b217e361a7d0b99` |
| 3 | `theorem` | [eq](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/eq--0d0870868f6548a6314eac79.md) | 47 | `result-track:0d0870868f6548a6314eac79b7817c06856f8bdd97542455471673eb04a07fd0` |
| 4 | `theorem` | [symm](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/symm--934679ca49c1b54c73bbbe8f.md) | 51 | `result-track:934679ca49c1b54c73bbbe8fc1aaabd8a8512ecf0c176c7db531e1bace97cadd` |
| 5 | `theorem` | [symmetric](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/symmetric--4e0214678f18e74001ff6601.md) | 53 | `result-track:4e0214678f18e74001ff66010078eddce03a72b841d04116a0c267e2e531da09` |
| 6 | `theorem` | [comm](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/comm--7c354bb1a1f2c8be747ea2b2.md) | 55 | `result-track:7c354bb1a1f2c8be747ea2b28184f10ac5222e052dde04aa421d294f868eb18a` |
| 7 | `theorem` | [_root_.Disjoint.aedisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/root-disjoint-aedisjoint--e0480a0d8e32e5a87a5fd102.md) | 58 | `result-track:e0480a0d8e32e5a87a5fd10211c47c2fc154861b17fa5dce8b40166e82394c17` |
| 8 | `theorem` | [_root_.Pairwise.aedisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/root-pairwise-aedisjoint--9b81a7e6f07c911e0fb4fc18.md) | 61 | `result-track:9b81a7e6f07c911e0fb4fc18b5e078959bf8db0d3303058f4b21010abe7100f1` |
| 9 | `theorem` | [_root_.Set.PairwiseDisjoint.aedisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/root-set-pairwisedisjoint-aedisjoint--e394b790aaa61383404bf3e5.md) | 65 | `result-track:e394b790aaa61383404bf3e5f5061491ab67080d921555329f25657e046cbcbd` |
| 10 | `theorem` | [mono_ae](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/mono-ae--ad813c60077d7cdb5cb6a642.md) | 69 | `result-track:ad813c60077d7cdb5cb6a6420498addfae1e18029ecbd8aebb8a0578a888baf1` |
| 11 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/mono--234be570fa4a9f79118868b0.md) | 72 | `result-track:234be570fa4a9f79118868b0401798ee84d6c87b8b4d4bb61a9cc62018551c01` |
| 12 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/congr--d68af7481da080cd5c5edb55.md) | 75 | `result-track:d68af7481da080cd5c5edb55c148c9e1e0c3024209cd296d1f86b76cff13fdb5` |
| 13 | `theorem` | [iUnion_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/iunion-left-iff--9a4b1ae93a3103005146a08f.md) | 80 | `result-track:9a4b1ae93a3103005146a08f90975ac174d12b5437d13335ffc5d4fe0806d158` |
| 14 | `theorem` | [iUnion_right_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/iunion-right-iff--b27b494a313aacc17af33eab.md) | 85 | `result-track:b27b494a313aacc17af33eab7cf017786fb03d42928a0e933fae6c36dc920671` |
| 15 | `theorem` | [union_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/union-left-iff--a10eb9e5046bb2919c3938bd.md) | 90 | `result-track:a10eb9e5046bb2919c3938bd43bd27081fa60784cea56db04f4acc1460a8cbbd` |
| 16 | `theorem` | [union_right_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/union-right-iff--8cd266ebcde5050540bc658d.md) | 94 | `result-track:8cd266ebcde5050540bc658d1091ada0ebc67b04a81087d786933079cfa9adea` |
| 17 | `theorem` | [union_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/union-left--ae74686d47eaaeeeb74bdd3e.md) | 97 | `result-track:ae74686d47eaaeeeb74bdd3e3544ea63518beaa5309fb7cbadbf411d0359b9ac` |
| 18 | `theorem` | [union_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/union-right--51edc9fc0b693f16a64bfab9.md) | 100 | `result-track:51edc9fc0b693f16a64bfab93f9fad5a601e7925bfe70d574d654a79d213d4e8` |
| 19 | `theorem` | [diff_ae_eq_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/diff-ae-eq-left--9cd2d54015fb606dc30a69bd.md) | 103 | `result-track:9cd2d54015fb606dc30a69bd26a5347fc2215aa2978c40571f41e2fe3dd0999f` |
| 20 | `theorem` | [diff_ae_eq_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/diff-ae-eq-right--bf107ea96bbccd9e58532ec0.md) | 106 | `result-track:bf107ea96bbccd9e58532ec07c33838167178381c3b56f839b98bd597f43677a` |
| 21 | `theorem` | [measure_diff_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/measure-diff-left--1b1c24f9f4425aea7c10a015.md) | 109 | `result-track:1b1c24f9f4425aea7c10a015b268a0723fd7e33966ec8a4bc3d7243c077c9810` |
| 22 | `theorem` | [measure_diff_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/measure-diff-right--907ab251ee6f849e73e552d1.md) | 112 | `result-track:907ab251ee6f849e73e552d115fff01868f71e75d1f9ab3b5e8ec239030acdc0` |
| 23 | `theorem` | [exists_disjoint_diff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/exists-disjoint-diff--20b0ca88ef547fcb79c2cfcf.md) | 117 | `result-track:20b0ca88ef547fcb79c2cfcf785c1d794e7294d7f11cbea37d2d9876a83a0a85` |
| 24 | `theorem` | [of_null_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/of-null-right--ff9dd7ec5c2cebda8443f203.md) | 123 | `result-track:ff9dd7ec5c2cebda8443f203ff5d3d222e362c9ffd69eaf1cfdb1d5423afbe01` |
| 25 | `theorem` | [of_null_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/of-null-left--02432b29ff1adcde8e5bed14.md) | 126 | `result-track:02432b29ff1adcde8e5bed142132f17b5366f69c20af4ed7571ecda33dd825d5` |
| 26 | `theorem` | [aedisjoint_compl_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/aedisjoint-compl-left--93a6661216ebdb0bfd094312.md) | 131 | `result-track:93a6661216ebdb0bfd09431268371d085d98e74b12501466e3294629d842226b` |
| 27 | `theorem` | [aedisjoint_compl_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant01ba78104c5829db12ed5c63c4cbb7ec5e93f2d833940081ee63b63b99b5318d.lean/declarations/aedisjoint-compl-right--e3aeba5db1278810a2276304.md) | 134 | `result-track:e3aeba5db1278810a22763049fd1b7e010e793e2585c5d10c45651a5dd9270c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
