# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "791820c0bb6ccae629967ff9b149721274bdd6a6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `791820c0bb6ccae629967ff9b149721274bdd6a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.ByCases` — import line 1; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [numElems](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/numelems--7c0cc6008cec4f8f1e236cb6.md) | 7 | `declaration-track:7c0cc6008cec4f8f1e236cb6d097977e06bcc77ddc68530c7b374fbbc3fa8359` |
| 2 | `theorem` | [numElems_stop_le_start](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/numelems-stop-le-start--0291ee9f9ef36e03dbae8f87.md) | 14 | `result-track:0291ee9f9ef36e03dbae8f8782e403b8c9e0bd54c2f0347a955b09ba06556dc5` |
| 3 | `theorem` | [numElems_step_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/numelems-step-1--4279981d2e627c1b9e1e350e.md) | 20 | `result-track:4279981d2e627c1b9e1e350e6d9914fa83080171e69f98ba260e9fd54b9b3c81` |
| 4 | `theorem` | [numElems_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/numelems-le-iff--7e59a5b8b3b3c96f385298d7.md) | 23 | `result-track:7e59a5b8b3b3c96f385298d77afbefbcc23d7d0a1a3e60cb56479fe1b5929d06` |
| 5 | `theorem` | [mem_range'_elems](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/mem-range-elems--adf694f08c96633d034baddf.md) | 34 | `result-track:adf694f08c96633d034baddf71ea226cdca26988d81bcca60b04c406e7b80a35` |
| 6 | `theorem` | [forIn'_eq_forIn_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/forin-eq-forin-range--17cdeedc678c49ee08d7c342.md) | 43 | `result-track:17cdeedc678c49ee08d7c34266f30589e2d12c93b71a2fc1b41d92b4fbf83d77` |
| 7 | `theorem` | [forIn_eq_forIn_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdf8a5309db8e63f7b6aaba5465cdef05405d908e03b3a74c7715c6717ab868b4.lean/declarations/forin-eq-forin-range--5ab95fa064baa1e61e01a00c.md) | 88 | `result-track:5ab95fa064baa1e61e01a00c3fdba2d9cdaaa3adc2e6d5ddff44d5f2fb3043f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
