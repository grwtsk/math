# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Relative.Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1692473bf4b54a7ecfd287ab0c8c3c81e3bc6fb5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1692473bf4b54a7ecfd287ab0c8c3c81e3bc6fb5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsRelUpperSet.prop_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-prop-of-mem--d664496914cc9a4d78eb327a.md) | 33 | `result-track:d664496914cc9a4d78eb327a0872c76372194bdc377f675c709cd6c0ac2c2cd3` |
| 2 | `lemma` | [IsRelLowerSet.prop_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-prop-of-mem--9d76773afe5ef79a122dcc65.md) | 34 | `result-track:9d76773afe5ef79a122dcc65477fb61b1120a8be72773a3fb614df19ec6f3063` |
| 3 | `lemma` | [isRelUpperSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-empty--6523ef49a71cd0cae063d077.md) | 36 | `result-track:6523ef49a71cd0cae063d07750a3761dbd565b084ed7ed561a578a06101f31f5` |
| 4 | `lemma` | [isRelLowerSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-empty--8640fcc0961784387fb31725.md) | 37 | `result-track:8640fcc0961784387fb3172538b64007e2d4e2c65050c286a22dd35da267e228` |
| 5 | `lemma` | [isRelUpperSet_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-self--5c2aca70914cc1fccbe698d1.md) | 39 | `result-track:5c2aca70914cc1fccbe698d16e799c0a909439a2c6823666ef893cbedb435405` |
| 6 | `lemma` | [isRelLowerSet_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-self--3cd52e4f77f8538bff490a2e.md) | 40 | `result-track:3cd52e4f77f8538bff490a2e26b250ab61fa53724d68ad31c802a2d249c23a4c` |
| 7 | `lemma` | [IsRelUpperSet.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-union--97873a94b5be397a63b106ab.md) | 42 | `result-track:97873a94b5be397a63b106abcf54d6f74dccc8360c17451f07a836ce74c1b73d` |
| 8 | `lemma` | [IsRelLowerSet.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-union--ad07ce0d767d5be69e455aeb.md) | 48 | `result-track:ad07ce0d767d5be69e455aebbc012a5e43a81a62dc36441a51234f8d97cc13a3` |
| 9 | `lemma` | [IsRelUpperSet.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-inter--7b549d16bd315108ece631ca.md) | 54 | `result-track:7b549d16bd315108ece631cae86fead2d36ce5fa64566c0e35e5f0ed987d25dc` |
| 10 | `lemma` | [IsRelLowerSet.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-inter--52dfe774c355a4c30845aeaf.md) | 59 | `result-track:52dfe774c355a4c30845aeafdb534b84275422b311bdb92790dbbc17d07a3c04` |
| 11 | `lemma` | [IsRelUpperSet.sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-sunion--2d86577306ab1763cafec7fd.md) | 64 | `result-track:2d86577306ab1763cafec7fd6b4c40a201127816cfa1cf41d6c0e929c0df9196` |
| 12 | `lemma` | [IsRelLowerSet.sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-sunion--4c7d0b0d6ee8c14ae0812616.md) | 68 | `result-track:4c7d0b0d6ee8c14ae081261656703f210c5bd3ee7067b4440c1e7e3560ac81bb` |
| 13 | `lemma` | [IsRelUpperSet.iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-iunion--b05aad48df85070ec07506e6.md) | 72 | `result-track:b05aad48df85070ec07506e61601c013c86ed4ffcfffc9054d7ded3aa6748ee7` |
| 14 | `lemma` | [IsRelLowerSet.iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-iunion--b1911ea52c3a988c31fd41fd.md) | 76 | `result-track:b1911ea52c3a988c31fd41fdb3f42b4a3dd2f281277ca730c512bc9b890ce6f7` |
| 15 | `lemma` | [IsRelUpperSet.iUnion₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-iunion--3f816d0fc46c646fae2fab37.md) | 80 | `result-track:3f816d0fc46c646fae2fab3799cef28bff47ab0052e1f10e2ed34fed0547b38f` |
| 16 | `lemma` | [IsRelLowerSet.iUnion₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-iunion--cef72d39e0026633deb57bb2.md) | 84 | `result-track:cef72d39e0026633deb57bb2912bddea7374852b8924b3bc5c6927eda0deb351` |
| 17 | `lemma` | [IsRelUpperSet.sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-sinter--83a1ead248fdc180467c83d3.md) | 88 | `result-track:83a1ead248fdc180467c83d355e0c58f3819746ba5e43a18935ebee1c3fa1da7` |
| 18 | `lemma` | [IsRelLowerSet.sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-sinter--11a7ef84e0965dea5c048c2f.md) | 94 | `result-track:11a7ef84e0965dea5c048c2faa2d51fdd8009063e65596ec39e296cb62c57b5a` |
| 19 | `lemma` | [IsRelUpperSet.iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-iinter--5fc4254f57e04426d1851ab9.md) | 100 | `result-track:5fc4254f57e04426d1851ab9728227b98561aaa6263064d22aeabcc4bd2f134f` |
| 20 | `lemma` | [IsRelLowerSet.iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-iinter--fd1a46c6e537cd2334942ea5.md) | 104 | `result-track:fd1a46c6e537cd2334942ea5a047b10466b4010492d9347196fcf740bd78084b` |
| 21 | `lemma` | [IsRelUpperSet.iInter₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-iinter--6f8d5632737e7c4d00141b3d.md) | 108 | `result-track:6f8d5632737e7c4d00141b3d841d9baee995d6b0f0153abd114b09e814f2a71f` |
| 22 | `lemma` | [IsRelLowerSet.iInter₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-iinter--8581902f889567418f1f34bf.md) | 113 | `result-track:8581902f889567418f1f34bfd87da2b89a1ce515e3d1d317b775028ae2f4f093` |
| 23 | `lemma` | [isUpperSet_subtype_iff_isRelUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isupperset-subtype-iff-isrelupperset--69307760037c22cd2d3cfb28.md) | 118 | `result-track:69307760037c22cd2d3cfb28e539314563c705003eb39e76cf3ef5f18e73a6a9` |
| 24 | `lemma` | [isLowerSet_subtype_iff_isRelLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/islowerset-subtype-iff-isrellowerset--39340491cccca67aae6d62b9.md) | 126 | `result-track:39340491cccca67aae6d62b9d82e57a552d4e916957e44a3cc8afa22f367e360` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/instance--a3ea8c273a66a02dd8c9cada.md) | 134 | `declaration-track:a3ea8c273a66a02dd8c9cada8282bcf303b50c65f6c4e02769074000f512fe0c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/instance--a1c762d7d77b82de3a60d66d.md) | 138 | `declaration-track:a1c762d7d77b82de3a60d66d880a96998b9c56b89b263f667f9fda0f6b2dbcd6` |
| 27 | `lemma` | [RelUpperSet.isRelUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/relupperset-isrelupperset--f54a5645d346a277a25ad1f2.md) | 142 | `result-track:f54a5645d346a277a25ad1f2f71943343e61fea92e8d411fabb24af370c8fbb2` |
| 28 | `lemma` | [RelLowerSet.isRelLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/rellowerset-isrellowerset--5ef37d7e264e45d906fb5c8e.md) | 143 | `result-track:5ef37d7e264e45d906fb5c8e69dffadfc1801a7cf5d8734979d99a1759b77a9f` |
| 29 | `lemma` | [isRelUpperSet_Icc_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrelupperset-icc-le--3803845f60c8ba4fcb7e2a31.md) | 151 | `result-track:3803845f60c8ba4fcb7e2a317afa9febec4d965475e5703ea3587b57d0c4fed7` |
| 30 | `lemma` | [isRelLowerSet_Icc_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Relative/Variant0a3f9cc186a44c0e148fc24d04f25325214d4754e7f00609466e957aa41e4937.lean/declarations/isrellowerset-icc-ge--c342fbd22eb4a2fe260b8ab0.md) | 155 | `result-track:c342fbd22eb4a2fe260b8ab0eb34c19578d04b170f4e21ab4c7b16f26a08f764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
