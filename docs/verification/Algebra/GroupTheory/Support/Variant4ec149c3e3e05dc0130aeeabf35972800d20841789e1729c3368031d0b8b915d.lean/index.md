# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d1d0c126f55f69a65d8c48861a02f03e8b098bb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d1d0c126f55f69a65d8c48861a02f03e8b098bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BourbakiWitt` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_coeff_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-mul-subset--0ef5499eb8323bc294c878a7.md) | 43 | `result-track:0ef5499eb8323bc294c878a738bbffc2bb0b42bbaaa71a3710a2e2d82f47cd50` |
| 2 | `lemma` | [support_coeff_single_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-single-mul-subset--f5fa5d35f9f159d27ffbf644.md) | 54 | `result-track:f5fa5d35f9f159d27ffbf6446f96c17f3709fa717e9927abf45aeba7dde08929` |
| 3 | `theorem` | [support_coeff_mul_single_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-mul-single-subset--e0bca3ab6405465cac6b786b.md) | 61 | `result-track:e0bca3ab6405465cac6b786bcb83d81f7801055b0a4116085a017e331f85d451` |
| 4 | `theorem` | [support_coeff_single_mul_eq_image](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-single-mul-eq-image--ad3995e63d190e84c4e78a45.md) | 68 | `result-track:ad3995e63d190e84c4e78a455d6a45a3020f23bb89424e21f7b6d4d92d3018ab` |
| 5 | `theorem` | [support_coeff_mul_single_eq_image](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-mul-single-eq-image--5c7f0847336bba754fd22090.md) | 76 | `result-track:5c7f0847336bba754fd22090a76ffdf5b877a9cc0361d0e8be0b05bc64f8bc9d` |
| 6 | `theorem` | [support_coeff_mul_single](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-mul-single--e50bac283fb8b904ea458d54.md) | 87 | `result-track:e50bac283fb8b904ea458d541a9528bc48dc89bb43c1a72295ae9b11e675f7b0` |
| 7 | `theorem` | [support_coeff_single_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-single-mul--5add7a254bb40ad33cb20bbc.md) | 95 | `result-track:5add7a254bb40ad33cb20bbc0e8b4fcc9870e2232b733f837e98280686ac7abe` |
| 8 | `lemma` | [support_coeff_one_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-one-subset--7a576d3b4f917284f96137de.md) | 106 | `result-track:7a576d3b4f917284f96137de917662b78a573c03788587c2a62345c3232b4c88` |
| 9 | `lemma` | [support_coeff_one](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/support-coeff-one--5dd70492a2397a6196fd0703.md) | 112 | `result-track:5dd70492a2397a6196fd07033ccc74a4cf8b4ac53921a8a5c1f646c360c06e9d` |
| 10 | `theorem` | [mem_span_support_coeff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/mem-span-support-coeff--80d8318941839d0faadd6734.md) | 120 | `result-track:80d8318941839d0faadd6734a184a4c0c8288b8a90f9cf3c1fd5db382e108203` |
| 11 | `theorem` | [mem_span_support_coeff](../../../../../mathematics/Algebra/GroupTheory/Support/Variant4ec149c3e3e05dc0130aeeabf35972800d20841789e1729c3368031d0b8b915d.lean/declarations/mem-span-support-coeff--08f590c936cc29d6ecd3aebe.md) | 140 | `result-track:08f590c936cc29d6ecd3aebed3101eaeaf7cad501e5ab75111de52ddd813fd24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
