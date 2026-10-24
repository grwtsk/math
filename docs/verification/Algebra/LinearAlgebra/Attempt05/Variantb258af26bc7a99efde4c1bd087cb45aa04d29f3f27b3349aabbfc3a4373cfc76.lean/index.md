# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt05.Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea33e4270453795191ee6cda73f1ab35a23a527",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea33e4270453795191ee6cda73f1ab35a23a527`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/cartanmatrix--42b9736a7db705edefbc6eb8.md) | 14 | `declaration-track:42b9736a7db705edefbc6eb8c342ce49864fde7ec76bdcff620ab4125518a8ea` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/mutationmatrix-cartan--b4e3206f34bfd1fd22f11424.md) | 17 | `result-track:b4e3206f34bfd1fd22f11424f7e9ff7ebf5a322883b11bc1e9f4502982fae2bd` |
| 3 | `theorem` | [mutation_form_entry](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/mutation-form-entry--6542a53efb0348358b380d9f.md) | 33 | `result-track:6542a53efb0348358b380d9ffa759a6ea0f7ab8a80f62690969f959b1c07cdc3` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/weightedcartan-symmetric--0ec0b52f77daaaf4bb42e9e0.md) | 49 | `result-track:0ec0b52f77daaaf4bb42e9e04fad7108b2bcc2e3a3c525164c205a30bf034fd9` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/mutationmatrix-weighted-metric--4f6ba6c38d550db67fc81dad.md) | 63 | `result-track:4f6ba6c38d550db67fc81dadbdbefd9cad4e4726fc478e442e43cd192fc7df8f` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/mutationmatrix-symmetric-metric--ab498aa4aeb7a4e2534ac681.md) | 81 | `result-track:ab498aa4aeb7a4e2534ac68188fbc5aa61f3d439084066e59519a9214aaf736b` |
| 7 | `theorem` | [mutationMatrix_nonadjacent_commute](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/mutationmatrix-nonadjacent-commute--465da058928b5e51218f8474.md) | 89 | `result-track:465da058928b5e51218f84745010624f244a8385f7b14979a4b2abda6f2b4c11` |
| 8 | `theorem` | [cartan_row_square](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/cartan-row-square--457546f1e8ae461c4fbbee59.md) | 112 | `result-track:457546f1e8ae461c4fbbee595583e1d08450df4243ef51c93fecbf97d992eef8` |
| 9 | `theorem` | [cartan_row_triple](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/cartan-row-triple--e1283f3485f24840415b6383.md) | 124 | `result-track:e1283f3485f24840415b6383716746498997d4d611a4a9b82d59b3b7fc38a60b` |
| 10 | `theorem` | [mutationMatrix_adjacent_braid](../../../../../mathematics/Algebra/LinearAlgebra/Attempt05/Variantb258af26bc7a99efde4c1bd087cb45aa04d29f3f27b3349aabbfc3a4373cfc76.lean/declarations/mutationmatrix-adjacent-braid--6d150dfac643c6776d0a33ae.md) | 138 | `result-track:6d150dfac643c6776d0a33aea7b9a6ff9f2b95d6ce493dac8950fa74352bdc9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
