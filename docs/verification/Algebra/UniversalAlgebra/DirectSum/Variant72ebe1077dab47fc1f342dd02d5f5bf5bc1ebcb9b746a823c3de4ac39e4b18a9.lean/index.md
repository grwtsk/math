# Verification target: GRWTSK.Algebra.UniversalAlgebra.DirectSum.Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f59c8e341e443bbdfc4511c0af4e79ba518dc09",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f59c8e341e443bbdfc4511c0af4e79ba518dc09`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Ideal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/instance--7bdec6956a8d51d1aa29dc9d.md) | 43 | `declaration-track:7bdec6956a8d51d1aa29dc9d0fb9d08b4b2b43b0733abe49750ef44c9740acc9` |
| 2 | `theorem` | [lie_module_bracket_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/lie-module-bracket-apply--868d8d293f6f2f3c703a2dd6.md) | 56 | `result-track:868d8d293f6f2f3c703a2dd6a978293cdea74cba30985deb09ad2cdbee83009f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/instance--0f9f0f276b5cc6aee9c1b4f6.md) | 59 | `declaration-track:0f9f0f276b5cc6aee9c1b4f681d040aae968c5e52e892230e25fe995d641df53` |
| 4 | `def` | [lieModuleOf](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liemoduleof--c2c55c2d8868df6194802212.md) | 70 | `declaration-track:c2c55c2d8868df61948022124ca64cf337ba4f99bb29a7271c52e37d892a2a7e` |
| 5 | `def` | [lieModuleComponent](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liemodulecomponent--c09c54c3e23cf5ca313f8cde.md) | 85 | `declaration-track:c09c54c3e23cf5ca313f8cde17ef9fa44ae198b4b4a9615bc55b1e87695098e7` |
| 6 | `instance` | [lieRing](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liering--66a5d00e4c5bc7bc9cd1810c.md) | 99 | `declaration-track:66a5d00e4c5bc7bc9cd1810c2b2bcd8f786c8b7278651e4450c7c485faaaf123` |
| 7 | `theorem` | [bracket_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/bracket-apply--a214abcf6648078befb2315e.md) | 117 | `result-track:a214abcf6648078befb2315ed48cd901f87f11a33ab12c786283223287a6fe7f` |
| 8 | `theorem` | [lie_of_same](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/lie-of-same--e2238b75bdb3a5e9dc99b2cb.md) | 120 | `result-track:e2238b75bdb3a5e9dc99b2cb62cdc1d4c5ddd7dfedb888a44b4a43f6a74c53a3` |
| 9 | `theorem` | [lie_of_of_ne](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/lie-of-of-ne--14017a4dd3c7ef027d1b8d1e.md) | 124 | `result-track:14017a4dd3c7ef027d1b8d1ea85ee9baab5851bc1f38909657bbe52fa5bdac14` |
| 10 | `theorem` | [lie_of](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/lie-of--bd98d87e9927c521e3cac017.md) | 133 | `result-track:bd98d87e9927c521e3cac0170bd6a42b39d9e7ff095c4d53c6777932349f9974` |
| 11 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liealgebra--8af3584f5f83ca16de2902eb.md) | 139 | `declaration-track:8af3584f5f83ca16de2902eb3e3ba4a51d5ad1858b3dd70d652021df5d79b2f2` |
| 12 | `def` | [lieAlgebraOf](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liealgebraof--17dcfb1676553164a3ef3fa0.md) | 149 | `declaration-track:17dcfb1676553164a3ef3fa0d6bdacc8e43a56acd2e780a0c2410b148711e1fa` |
| 13 | `def` | [lieAlgebraComponent](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liealgebracomponent--a8cd11d33aaa4461a903e197.md) | 156 | `declaration-track:a8cd11d33aaa4461a903e197e368ac0478cc2ea58d600408e3b3de6ad933db02` |
| 14 | `theorem` | [lieAlgebra_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liealgebra-ext--c873eb770165160639c23e2e.md) | 163 | `result-track:c873eb770165160639c23e2e36bff0fbbe90932fdbcce093267c5d4134aeab17` |
| 15 | `def` | [toLieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/toliealgebra--fe0b72e36232e5a91197fc04.md) | 174 | `declaration-track:fe0b72e36232e5a91197fc043f0cde000741d6befe3051065116a8e27778f710` |
| 16 | `instance` | [lieRingOfIdeals](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/lieringofideals--af509968bc5fdf1a541170a7.md) | 216 | `declaration-track:af509968bc5fdf1a541170a7e66e6802011d62334e79948b42ea9bc5fe0a4eb8` |
| 17 | `instance` | [lieAlgebraOfIdeals](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variant72ebe1077dab47fc1f342dd02d5f5bf5bc1ebcb9b746a823c3de4ac39e4b18a9.lean/declarations/liealgebraofideals--60d21d34c040eee0b86d9bfa.md) | 220 | `declaration-track:60d21d34c040eee0b86d9bfa399a9fe013cc8d8b154ee8d9468ca216e88fb1da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
