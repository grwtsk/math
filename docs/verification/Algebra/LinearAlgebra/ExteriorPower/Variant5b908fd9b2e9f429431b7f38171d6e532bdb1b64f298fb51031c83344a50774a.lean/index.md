# Verification target: GRWTSK.Algebra.LinearAlgebra.ExteriorPower.Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b8acfca3889734d65056e9a88f0e6fe8c461f4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b8acfca3889734d65056e9a88f0e6fe8c461f4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerProductForm](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform--696d8a4ba433599fe5ac17a1.md) | 52 | `declaration-track:696d8a4ba433599fe5ac17a1f187fb15eda990d9338a3b5cfc046dfe95f6f975` |
| 2 | `lemma` | [innerProductForm_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform-multi-multi--397f74eda12f1c7b4d2f20d4.md) | 55 | `result-track:397f74eda12f1c7b4d2f20d433d6346b90c3c4560853debb702704be4117a8cb` |
| 3 | `lemma` | [innerProductForm_ιMulti_self](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform-multi-self--31fe87ee733d27473364c4b3.md) | 60 | `result-track:31fe87ee733d27473364c4b3bd1a2958ba61e6d0dbc473b03d72a956ac9932be` |
| 4 | `lemma` | [flip_innerProductForm](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/flip-innerproductform--742df17e01f8f651ab75425f.md) | 64 | `result-track:742df17e01f8f651ab75425f0b9ca146ce327312ee286c15599495eceb10beb6` |
| 5 | `lemma` | [innerProductForm_symm](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform-symm--fcee526ad604f0bc37dc50e5.md) | 75 | `result-track:fcee526ad604f0bc37dc50e57ada8c9c47e9242f40e740e225f0a950aec7d65d` |
| 6 | `lemma` | [innerProductForm_ιMulti_family_of_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform-multi-family-of-orthonormal--0cd33aa747042dca329ad877.md) | 80 | `result-track:0cd33aa747042dca329ad87796e6a73c0f3d6df6ccf8df2430ee4cb30eee764a` |
| 7 | `lemma` | [innerProductForm_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform-eq-sum--9fc43e81e901098f54abedc8.md) | 94 | `result-track:9fc43e81e901098f54abedc86e0d575b68fcc8d6985856059d96cdb9ec1a62d6` |
| 8 | `lemma` | [innerProductForm_self](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/innerproductform-self--a1a8d73ecc35e62d07c2ede4.md) | 102 | `result-track:a1a8d73ecc35e62d07c2ede45b6197a60b4a709c8c602bff0c9d5fcc858f4ec8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/instance--25e8c8d6b29ea920d8375252.md) | 107 | `declaration-track:25e8c8d6b29ea920d83752521d7c969722cc1f07e0609978be4e1802b7004b4b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/instance--df9e175960d83b3469e37849.md) | 121 | `declaration-track:df9e175960d83b3469e3784962b06aeb46c0277afae1e7d78a075b283cf01708` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/instance--08819a271610101e9c3454fd.md) | 124 | `declaration-track:08819a271610101e9c3454fd200c7e00e196e779988ca8dc6f7c6527683f3684` |
| 12 | `lemma` | [inner_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/inner-multi-multi--049173dea6ac90bb5aab80fc.md) | 127 | `result-track:049173dea6ac90bb5aab80fc94f4354b82f81edf0a47008dfbc7e7394dfccde5` |
| 13 | `lemma` | [inner_ιMulti_self](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/inner-multi-self--eaca6ccb22fb45882aedfbc4.md) | 131 | `result-track:eaca6ccb22fb45882aedfbc41910d644adec64c557068877d2875b242f53875c` |
| 14 | `def` | [OrthonormalBasis.exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/orthonormalbasis-exteriorpower--defb65b420b31332e2227e15.md) | 144 | `declaration-track:defb65b420b31332e2227e152118287d561c8707059c9c2e509d660b965d016a` |
| 15 | `lemma` | [OrthonormalBasis.toBasis_exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variant5b908fd9b2e9f429431b7f38171d6e532bdb1b64f298fb51031c83344a50774a.lean/declarations/orthonormalbasis-tobasis-exteriorpower--ad28150e25be1b5f96c6c818.md) | 153 | `result-track:ad28150e25be1b5f96c6c81806d02397dcb4b13360b79be2cf324782896e51d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
