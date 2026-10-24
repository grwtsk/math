# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ebd6484fa8853cadce00ad8ac9cdc611aa92575",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ebd6484fa8853cadce00ad8ac9cdc611aa92575`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean.json)

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
| 1 | `class` | [IsStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/isstableunderretracts--f17fb59311b39ed25ebfe882.md) | 40 | `declaration-track:f17fb59311b39ed25ebfe882fdc46fa7e5e86144ffb1efa74fc3601cf5101c90` |
| 2 | `lemma` | [of_retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/of-retract--500011459af3b3b73e0b6110.md) | 43 | `result-track:500011459af3b3b73e0b611061d42d7ba3965885c3b0d88c260ecc0e9e45bd9f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/instance--5b23c8bcc7df2fb418940487.md) | 47 | `declaration-track:5b23c8bcc7df2fb41894048715ec2c3a14b6858d2f86136513580be7e46035e1` |
| 4 | `instance` | [IsStableUnderRetracts.monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/isstableunderretracts-monomorphisms--e946d23c1945f5a8b9404826.md) | 52 | `declaration-track:e946d23c1945f5a8b9404826bfe5488a8f31d77b837e7abdb7fcd63c727a2cca` |
| 5 | `instance` | [IsStableUnderRetracts.epimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/isstableunderretracts-epimorphisms--acb87304681a9450ac6a34a8.md) | 57 | `declaration-track:acb87304681a9450ac6a34a86c83631ae6fc6876dac14b1cde41b2cf7aa976b7` |
| 6 | `instance` | [IsStableUnderRetracts.isomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/isstableunderretracts-isomorphisms--17b05b4616c1961a3ac638b4.md) | 62 | `declaration-track:17b05b4616c1961a3ac638b4a9a32813f600fbd46e87ac1aa9ef570c5dfa7493` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/instance--cea18518a4d2768fbec053e7.md) | 68 | `declaration-track:cea18518a4d2768fbec053e790525b5204fd98cdebd4bda13980758bc247ea79` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/instance--932ef638460678d4243bba96.md) | 72 | `declaration-track:932ef638460678d4243bba9618277b64c42041561c631a924386610fd9e80504` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/instance--50f26074941d52d8f3112fb9.md) | 76 | `declaration-track:50f26074941d52d8f3112fb97b6314f1eff3078dba2381d308b6fe191a300cc7` |
| 10 | `def` | [retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/retracts--0106f0bcadd98f9def2b97c0.md) | 83 | `declaration-track:0106f0bcadd98f9def2b97c043789c9e5ad6f8161e91e140c7c0cce9025cfe8a` |
| 11 | `lemma` | [le_retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/le-retracts--f25f37e17edb9ba5397eb0bc.md) | 86 | `result-track:f25f37e17edb9ba5397eb0bc95d15eb85ee998e57597087d7e7b21f74e7c02b0` |
| 12 | `lemma` | [retracts_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/retracts-monotone--c18466c3cad048faf4fbab6c.md) | 90 | `result-track:c18466c3cad048faf4fbab6cc2e81b2c0c8144481b969c98bd645e928f69392e` |
| 13 | `lemma` | [isStableUnderRetracts_iff_retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/isstableunderretracts-iff-retracts-le--2148ff433b77a58177050051.md) | 94 | `result-track:2148ff433b77a5817705005189513a1d2e205d24b0a7a30a7b8ae4456db27a92` |
| 14 | `lemma` | [retracts_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/retracts-le--503f290c020bc1c6b5eabccc.md) | 103 | `result-track:503f290c020bc1c6b5eabccca924bf1746da1edf060edbcfc023c7789ecab100` |
| 15 | `lemma` | [retracts_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/retracts-le-iff--fab2c36ba9a856f866803766.md) | 108 | `result-track:fab2c36ba9a856f866803766be35c6db94addd0f9429ee7c04c6a858ce773d3a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Retract/Variant7f5c23f38895508fcf850c9f259bd0ba46c922b80b317f165666a6f2ee274605.lean/declarations/instance--c881f7f0c1477597881b4bf5.md) | 115 | `declaration-track:c881f7f0c1477597881b4bf53be9362708fb17ba205a2b5b2ef1d2335de96e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
