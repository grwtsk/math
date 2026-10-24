# Verification target: GRWTSK.Algebra.LinearAlgebra.VectorSpace.Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c54793623099042080821af4709b3798dd723e20",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c54793623099042080821af4709b3798dd723e20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/extend--19139cba4e05451c6a88a6bb.md) | 59 | `declaration-track:19139cba4e05451c6a88a6bb7e4e88692fd97d1538511bcb2b41fa9c88513f5d` |
| 2 | `theorem` | [extend_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/extend-apply-self--aee632857eb5caadfe776018.md) | 66 | `result-track:aee632857eb5caadfe776018340bb55bec20d1da5d03f04c979f3195419f2e59` |
| 3 | `theorem` | [coe_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/coe-extend--8a310af2ab1e7a7b1d62af3b.md) | 72 | `result-track:8a310af2ab1e7a7b1d62af3b6c7ee646b182c325a3bc7b4fab0b1c5e4692f5b5` |
| 4 | `theorem` | [range_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/range-extend--af204ce4f15ef28a63caaab5.md) | 76 | `result-track:af204ce4f15ef28a63caaab58edd92f0661fc47d3138bd489d0d7ff662529088` |
| 5 | `def` | [sumExtendIndex](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/sumextendindex--7f9e18aabe7da331521dfca7.md) | 86 | `declaration-track:7f9e18aabe7da331521dfca79f22749fd2890728d5ffa93f1a7e331544c68929` |
| 6 | `def` | [sumExtend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/sumextend--320db8f005ce10a40c984087.md) | 90 | `declaration-track:320db8f005ce10a40c9840877ea87e8fc61edd4568ed7c08e4a79e4902cc2e72` |
| 7 | `theorem` | [subset_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/subset-extend--35aa470165178021128609c2.md) | 103 | `result-track:35aa470165178021128609c2065fe67b447cd8ddbffb7a1e4f6e28c4f1874c96` |
| 8 | `def` | [ofVectorSpaceIndex](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/ofvectorspaceindex--ccd7a0402227cfa741440019.md) | 113 | `declaration-track:ccd7a0402227cfa74144001902e95165b9b1e9d45303754f26c9ce5e289ee62a` |
| 9 | `def` | [ofVectorSpace](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/ofvectorspace--4e52ba450e5eccef5be8787b.md) | 118 | `declaration-track:4e52ba450e5eccef5be8787bf9f8bb6cc9946d97aa408b5023734dc6ff96fe6e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/instance--a49f19ca8f37fa32a6d03303.md) | 122 | `declaration-track:a49f19ca8f37fa32a6d03303511357d39de08bd0d6b415e283d9381cab606b41` |
| 11 | `theorem` | [ofVectorSpace_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/ofvectorspace-apply-self--0d5059a75f37bd541c245f02.md) | 126 | `result-track:0d5059a75f37bd541c245f02c78fef62bfc1f3810bdc232a627d25f885ec0b73` |
| 12 | `theorem` | [coe_ofVectorSpace](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/coe-ofvectorspace--4e58330d401b3c2ab982e0cd.md) | 132 | `result-track:4e58330d401b3c2ab982e0cd791fb1b7683f8dbcf337bad5da7e74298cdc9923` |
| 13 | `theorem` | [ofVectorSpaceIndex.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/ofvectorspaceindex-linearindependent--db4b8291b65e98d52582ac62.md) | 136 | `result-track:db4b8291b65e98d52582ac62579aea42647c390871f7637e914275f7192ae9d9` |
| 14 | `theorem` | [range_ofVectorSpace](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/range-ofvectorspace--9a718a176caa33c04dbe38cb.md) | 143 | `result-track:9a718a176caa33c04dbe38cbc14bc49342e9ad713de81d1fac7b32437bbcb1b2` |
| 15 | `theorem` | [exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/exists-basis--a5ab980103b644ad8095a0ff.md) | 147 | `result-track:a5ab980103b644ad8095a0ff43731eca544d878600330a6579af4ff91e6321d8` |
| 16 | `theorem` | [VectorSpace.card_fintype](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/vectorspace-card-fintype--03b8cf545c483028375c4034.md) | 161 | `result-track:03b8cf545c483028375c403451cca92a9c8b5631192445a5aedccff47899edb9` |
| 17 | `theorem` | [nonzero_span_atom](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/nonzero-span-atom--10c5867da8401fcec1762eea.md) | 172 | `result-track:10c5867da8401fcec1762eead4f4de4d0395cc663224180d2be4f2e730331d6c` |
| 18 | `theorem` | [atom_iff_nonzero_span](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/atom-iff-nonzero-span--b28ee74716ca4f5aaa4cb9ac.md) | 190 | `result-track:b28ee74716ca4f5aaa4cb9ac764c092af47bdbeeebbec82131b3cc7bcf03f7f2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/instance--4cf5ae39dba573715d87ee9c.md) | 205 | `declaration-track:4cf5ae39dba573715d87ee9c7106189d470806f1c5fe2f8deaedd87ca9b14b96` |
| 20 | `theorem` | [LinearMap.exists_leftInverse_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/linearmap-exists-leftinverse-of-injective--3ba4a86093dbdc6fd417fb49.md) | 215 | `result-track:3ba4a86093dbdc6fd417fb4989b2c31f39fcc7f8f53fe0a26d009b5dee44c949` |
| 21 | `theorem` | [Submodule.exists_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/submodule-exists-iscompl--970673667e9f2f0c5f6ec9dd.md) | 238 | `result-track:970673667e9f2f0c5f6ec9ddadfa317597924e93247b128814190e90adea944b` |
| 22 | `instance` | [Module.Submodule.complementedLattice](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/module-submodule-complementedlattice--69b7db2082f316fa7070d61d.md) | 243 | `declaration-track:69b7db2082f316fa7070d61df920a7cee08e7de41c6603632c4a6f1688492327` |
| 23 | `theorem` | [LinearMap.exists_rightInverse_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/linearmap-exists-rightinverse-of-surjective--abbd89c71b5de4edbf534e31.md) | 247 | `result-track:abbd89c71b5de4edbf534e31bd03af2031456232869c395824574ffe765d49aa` |
| 24 | `theorem` | [LinearMap.exists_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/linearmap-exists-extend--4fbb5e2e68d2dba27aae8dea.md) | 259 | `result-track:4fbb5e2e68d2dba27aae8dea8a148ad839eee285d8d2c9da59c0d183dd0a6e8e` |
| 25 | `theorem` | [Submodule.exists_le_ker_of_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/submodule-exists-le-ker-of-lt-top--0761104cd7aceff33aa8a256.md) | 269 | `result-track:0761104cd7aceff33aa8a256ecebf840f4d1224835f35922d0f966a71a4632b5` |
| 26 | `theorem` | [quotient_prod_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/declarations/quotient-prod-linearequiv--11465b93cc7df57a3662cc84.md) | 283 | `result-track:11465b93cc7df57a3662cc8423f05ddc4ff61a86cdf79d45b7c7aecc11634837` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
