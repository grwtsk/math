# Verification target: GRWTSK.Algebra.LinearAlgebra.ExteriorPower.Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e6b8e8ef0a495b08c1227945cf158f6e4520c78",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e6b8e8ef0a495b08c1227945cf158f6e4520c78`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean.json)

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
| 1 | `def` | [innerProductForm](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform--9c4189401616e08db2808700.md) | 60 | `declaration-track:9c4189401616e08db28087004df8e54be1569734fb9153b64166bbb9ea41d248` |
| 2 | `lemma` | [innerProductForm_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform-multi-multi--3126081f6a6bf5c6a97d4a2b.md) | 63 | `result-track:3126081f6a6bf5c6a97d4a2ba92eee0ddb75b5cff2d2f38fe4072d595c25dcf5` |
| 3 | `lemma` | [innerProductForm_ιMulti_self](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform-multi-self--a4e348cfa9d65975f7a2deae.md) | 68 | `result-track:a4e348cfa9d65975f7a2deae5869eee76cf4031cd5bb589e4f3e3f2e00e29545` |
| 4 | `lemma` | [flip_innerProductForm](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/flip-innerproductform--96e75a8f95a5d169219855f4.md) | 72 | `result-track:96e75a8f95a5d169219855f4a40d49405a78b097dbb09af08f3640e4038101a0` |
| 5 | `lemma` | [innerProductForm_symm](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform-symm--815719df46f3ff770559b12f.md) | 83 | `result-track:815719df46f3ff770559b12ffc005364df7df88165b220e8e7f973f8e065e201` |
| 6 | `lemma` | [innerProductForm_ιMulti_family_of_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform-multi-family-of-orthonormal--c690c0978b145c95c90a4784.md) | 88 | `result-track:c690c0978b145c95c90a47849d15266b69eb8b1c6bbe28483839e6cc15e844fd` |
| 7 | `lemma` | [innerProductForm_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform-eq-sum--e4c1946f2c27827b5498f4aa.md) | 102 | `result-track:e4c1946f2c27827b5498f4aab5f4ece344a4a704caf05dab859cd5daffb17503` |
| 8 | `lemma` | [innerProductForm_self](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/innerproductform-self--a52ab8020c1cc7f00e5017f0.md) | 110 | `result-track:a52ab8020c1cc7f00e5017f0ff5c9cc294e75fd7395b42f68050ee49c1b9563b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/instance--59b5fd6b3c597519563f6952.md) | 115 | `declaration-track:59b5fd6b3c597519563f6952168cc6ef0954e68377de10944764193800c725d4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/instance--dbac5066e564b5b033cc6195.md) | 129 | `declaration-track:dbac5066e564b5b033cc619550e105874b79c91f58be30011483b99d10ab8eeb` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/instance--879039c3777a9f9e8de577ea.md) | 132 | `declaration-track:879039c3777a9f9e8de577ea1d3da13119710d30c8cb48e1a81c073266de6700` |
| 12 | `lemma` | [inner_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/inner-multi-multi--c8b0fc374c6db159483e316c.md) | 135 | `result-track:c8b0fc374c6db159483e316cadd6edbe7c36c212aef43018da7ce64bbb843e9b` |
| 13 | `lemma` | [inner_ιMulti_self](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/inner-multi-self--6eabe236f276ddfefc1dcbc5.md) | 139 | `result-track:6eabe236f276ddfefc1dcbc5e142330839b1af028af2d59e4144ca75746a21cb` |
| 14 | `def` | [OrthonormalBasis.exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/orthonormalbasis-exteriorpower--cadeb1039db310cda431b2a8.md) | 152 | `declaration-track:cadeb1039db310cda431b2a8f0315701ecd1b4573f21fb008a95bcc0bdb1128c` |
| 15 | `lemma` | [OrthonormalBasis.toBasis_exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/declarations/orthonormalbasis-tobasis-exteriorpower--fd41496247ed97eb398c8c24.md) | 161 | `result-track:fd41496247ed97eb398c8c24db52aa99b26864837a3613f22eb96220957d02a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
