# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservableRecursion.Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2e30dac351989e7f679f7faf30caa480829f2b5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2e30dac351989e7f679f7faf30caa480829f2b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/system--73f9aa293fb1ce55fb692d41.md) | 27 | `declaration-track:73f9aa293fb1ce55fb692d417b9965dde99cad755f68cc7ffc353f7ccb6eba3d` |
| 2 | `def` | [run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/run--346aa78fe37d8e0684ced447.md) | 40 | `declaration-track:346aa78fe37d8e0684ced4477f856d3cfd4d5ebc73364f5e836109f0bd6cf230` |
| 3 | `theorem` | [run_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/run-nil--a296183c7fdb1907010b32c6.md) | 49 | `result-track:a296183c7fdb1907010b32c64999e3723ff1a464051f2ae21a853203559a1f76` |
| 4 | `theorem` | [run_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/run-cons--75f348995572640bd038b558.md) | 56 | `result-track:75f348995572640bd038b558d833d94e8d6f0499dc3766961938d6f4acf7c615` |
| 5 | `theorem` | [run_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/run-append--fd18834759092f12a40ca4e3.md) | 66 | `result-track:fd18834759092f12a40ca4e38a03a1aa8b79ab75bfa567a2d3b1f86e0f9a902a` |
| 6 | `theorem` | [run_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/run-singleton--8335f9a8278bf63300d75a71.md) | 79 | `result-track:8335f9a8278bf63300d75a714cda523b0970b77a974d466ad2e75825f4e53f42` |
| 7 | `def` | [autonomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/autonomous--194ccceb4df4bf9439fa3b4a.md) | 87 | `declaration-track:194ccceb4df4bf9439fa3b4abe3570978556651ddd1904bf58c11f2e40d1ac0b` |
| 8 | `theorem` | [autonomous_run_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variantd5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd.lean/declarations/autonomous-run-replicate--688dfe01f2166013e6b6f344.md) | 97 | `result-track:688dfe01f2166013e6b6f344b96d1800c0d33f0a642bf41219f02e5e55555a00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
