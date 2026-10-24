# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd4255afbd201f0b694f07ce5f2f64ff74fc670d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd4255afbd201f0b694f07ce5f2f64ff74fc670d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compareLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/comparelex--6c3e74878f9bd0aec1e3393d.md) | 27 | `declaration-track:6c3e74878f9bd0aec1e3393da35e0cf58acc56a9fdf083f57cbcf04704322549` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--2a205b5f4dcbe3cc2776dfb8.md) | 30 | `declaration-track:2a205b5f4dcbe3cc2776dfb8a57e58c6c1b7517877d0b4b70bff1b4e3c3c1c7a` |
| 3 | `theorem` | [compareLex_eq_compareLex_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/comparelex-eq-comparelex-toarray--278e2a8830f52bfbf2e474f1.md) | 33 | `result-track:278e2a8830f52bfbf2e474f1b43ebb35fac1ccba375fbbb91f8fd9e0f690b7f0` |
| 4 | `theorem` | [compareLex_eq_compareLex_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/comparelex-eq-comparelex-tolist--7db57121ceb0cdcac8c6a284.md) | 37 | `result-track:7db57121ceb0cdcac8c6a284d95d755532a675ee044e2c2f89166063a65e895b` |
| 5 | `theorem` | [compare_eq_compare_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/compare-eq-compare-toarray--f8e858d2c1cebfdda2362671.md) | 41 | `result-track:f8e858d2c1cebfdda2362671c5861e0384b89dc16db8fbdce3e521f67cae555c` |
| 6 | `theorem` | [compare_eq_compare_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/compare-eq-compare-tolist--1f8adfd6818390a07f334491.md) | 45 | `result-track:1f8adfd6818390a07f334491306706ef1eec9fdeb9cd1be35200e337c1010370` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--bda9757f7f85a5aa774b5cc3.md) | 51 | `declaration-track:bda9757f7f85a5aa774b5cc35411bf69b11201766b853e4c5e6668655208cc00` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--f50dddd7095b790890893691.md) | 54 | `declaration-track:f50dddd7095b790890893691b0022a3115fd476c2d0facb63fc9b3ad503649fd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--50b7afb9d8dc83ce5b924c1f.md) | 57 | `declaration-track:50b7afb9d8dc83ce5b924c1fc564aa72973bd3d68be8ca3e76ad6cdf9bd3d0fc` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--c9ace0732d83528f98ce52ad.md) | 61 | `declaration-track:c9ace0732d83528f98ce52ad1a5560fe4ef096017cbe56caf189079f149ca555` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--01e410c4ba9e0672dd046c51.md) | 64 | `declaration-track:01e410c4ba9e0672dd046c512dc7a163ec55c00bf41365f99367043eab43c4e4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--8f413175c41ed04fcc64fa14.md) | 67 | `declaration-track:8f413175c41ed04fcc64fa147576f7f19d89a976a8f0eac1a49aa018578026e4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--956a73cac5b5c24c08d7246b.md) | 70 | `declaration-track:956a73cac5b5c24c08d7246bcc003b8cc61bb85d6f00ec925e7ff64919d6f6aa` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--86532dfe036d2cd52f7fb58e.md) | 73 | `declaration-track:86532dfe036d2cd52f7fb58edea9111e49eaf150e16c9dbccf361cb44cc4473b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--8ac63d94a37387dee53d066c.md) | 76 | `declaration-track:8ac63d94a37387dee53d066c6477489b85829bd8ab473de2ce16335e80b951c7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant0dc9901738545d70fa21a0f956ee4bb63ece5bc539520e7f63584a753ce54a18.lean/declarations/instance--debd938e366a55efcbd80ab4.md) | 79 | `declaration-track:debd938e366a55efcbd80ab4037fb00616fd780cc558e9983096c4cd0ad1b702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
