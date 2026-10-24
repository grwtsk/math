# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteIndex.Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30fe13f399ecccb49c5692dca7c420d0030b9cc3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30fe13f399ecccb49c5692dca7c420d0030b9cc3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean.json)

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
| 1 | `def` | [indToCoindAux](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux--32777a8215a63188b621b843.md) | 44 | `declaration-track:32777a8215a63188b621b84358071e5e65b7613d207fad73c75a30083576c15e` |
| 2 | `lemma` | [indToCoindAux_self](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-self--7e2b3b8f1db4fdd79ffb578a.md) | 51 | `result-track:7e2b3b8f1db4fdd79ffb578a94aeae7c9b5030e05db50b16229d80c5f76d54da` |
| 3 | `lemma` | [indToCoindAux_of_not_rel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-of-not-rel--13b3eab44403aada11093ec2.md) | 57 | `result-track:13b3eab44403aada11093ec263319b4d0ff42ea516b98fb96ab88de4fd716bb4` |
| 4 | `lemma` | [indToCoindAux_mul_snd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-mul-snd--d0f36bf299eafd2c10083d58.md) | 62 | `result-track:d0f36bf299eafd2c10083d587983333a0e345722702205e6dd92ca0012bd5bd0` |
| 5 | `lemma` | [indToCoindAux_mul_fst](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-mul-fst--b6a91099c06028cd631c593e.md) | 72 | `result-track:b6a91099c06028cd631c593e475db0cd9f84f14e4a052bb184c211aac59f613c` |
| 6 | `lemma` | [indToCoindAux_snd_mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-snd-mul-inv--fab33b7d70be1ce7d1a3b4e1.md) | 84 | `result-track:fab33b7d70be1ce7d1a3b4e1f3c3a7e54c0c86787b5c28808ccc5ba294b97341` |
| 7 | `lemma` | [indToCoindAux_fst_mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-fst-mul-inv--fb51478dc5ef5fb72563699d.md) | 92 | `result-track:fb51478dc5ef5fb72563699da0d6d9b643c2f5fe4d609baf59c5b61fa6bcbe3e` |
| 8 | `lemma` | [indToCoindAux_comm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoindaux-comm--aa3e6140c655394ea141b4c7.md) | 96 | `result-track:aa3e6140c655394ea141b4c7aea8f93b2cfe1275b3e6e2076dc185b52da70269` |
| 9 | `abbrev` | [indToCoind](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoind--265a1bd31f067003b9ff747a.md) | 106 | `declaration-track:265a1bd31f067003b9ff747a22384346f4e1c28f286b41ea1a44a6bfe97f7cdd` |
| 10 | `def` | [coindToInd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindtoind--4ad435cc22955df89882d614.md) | 121 | `declaration-track:4ad435cc22955df89882d6142b67d07a528b5fb60f15e9c322b552fe46145ac5` |
| 11 | `lemma` | [coindToInd_of_support_subset_orbit](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindtoind-of-support-subset-orbit--3956331786b018813d3445c3.md) | 132 | `result-track:3956331786b018813d3445c3527c922ca129f8cd63ca2d71d4b3ce8a9bdb0fbb` |
| 12 | `lemma` | [coindToInd_indToCoind](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindtoind-indtocoind--cfef57404065afbb1419d7c1.md) | 149 | `result-track:cfef57404065afbb1419d7c1e9c3e02f3efda2d6134c41fd72a6f059f0229bdc` |
| 13 | `lemma` | [indToCoind_coindToInd](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indtocoind-coindtoind--e938c09a66a866435f915263.md) | 162 | `result-track:e938c09a66a866435f915263f714bb59c28e6dff252c5fed1fe0529ed63d1551` |
| 14 | `def` | [indCoindIso](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indcoindiso--abf9715b8680e1f2046cec6e.md) | 178 | `declaration-track:abf9715b8680e1f2046cec6e0a05e67520e7e757e59785aecd14a7109ac6fbe9` |
| 15 | `def` | [indCoindNatIso](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/indcoindnatiso--a4e2655bd67fab7bfa6d8431.md) | 189 | `declaration-track:a4e2655bd67fab7bfa6d8431a5b53921d952ae5b59969f9fae18e26145fea7a2` |
| 16 | `def` | [resIndAdjunction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/resindadjunction--93620850b2d9d33854d79434.md) | 198 | `declaration-track:93620850b2d9d33854d794342fca25eed7c99c3d7d65e1d688275dc7775797e7` |
| 17 | `theorem` | [instIsRightAdjointSubtypeMemSubgroupIndFunctorSubtype](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/instisrightadjointsubtypememsubgroupindfunctorsubtype--7293fb36540928a9e75803bb.md) | 204 | `result-track:7293fb36540928a9e75803bbc528c041c9cb08eb02716acd8b690d71ae84290a` |
| 18 | `lemma` | [resIndAdjunction_counit_app](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/resindadjunction-counit-app--7557a66daa86e2df764734aa.md) | 211 | `result-track:7557a66daa86e2df764734aaff61506005582f970ebad101fd5c98e5aa2fd33e` |
| 19 | `lemma` | [resIndAdjunction_unit_app](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/resindadjunction-unit-app--a00a8d3cc43ff9faa32a2303.md) | 217 | `result-track:a00a8d3cc43ff9faa32a23032b16042010903903b18ff5709914185c42a94ab8` |
| 20 | `lemma` | [resIndAdjunction_homEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/resindadjunction-homequiv-apply--a05756b05fa2e754dff65ba7.md) | 222 | `result-track:a05756b05fa2e754dff65ba7321716be62bbe779a27e511e73dd447b33e88da2` |
| 21 | `lemma` | [resIndAdjunction_homEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/resindadjunction-homequiv-symm-apply--e52ff00337b31146a134f87a.md) | 229 | `result-track:e52ff00337b31146a134f87a3cb527a014ce9b143ebb9807a38e667a0ec1ed12` |
| 22 | `def` | [coindResAdjunction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindresadjunction--ef2449fbd990335cd0848503.md) | 239 | `declaration-track:ef2449fbd990335cd0848503872190d8c8af61a03e13472d91a8c1061a0df16c` |
| 23 | `theorem` | [instIsLeftAdjointSubtypeMemSubgroupCoindFunctorSubtype](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/instisleftadjointsubtypememsubgroupcoindfunctorsubtype--353a388b3937f51249d69379.md) | 245 | `result-track:353a388b3937f51249d6937980f423e095c85485074329460a993d03c15c4db9` |
| 24 | `lemma` | [coindResAdjunction_counit_app](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindresadjunction-counit-app--e65da1989986807a918a9227.md) | 250 | `result-track:e65da1989986807a918a9227b9e1a4f701682fe4a954d6fd173ed2f1964d4871` |
| 25 | `lemma` | [coindResAdjunction_unit_app](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindresadjunction-unit-app--bd744b94d26d94c28120f09f.md) | 257 | `result-track:bd744b94d26d94c28120f09fb4945f3734a9ca633932020edeb457dd2309d77d` |
| 26 | `lemma` | [coindResAdjunction_homEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindresadjunction-homequiv-apply--e4c45ff231cdf1dad6054c0e.md) | 263 | `result-track:e4c45ff231cdf1dad6054c0ee79c017d10586b1e11baa6f23cfd554001160907` |
| 27 | `lemma` | [coindResAdjunction_homEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteIndex/Variant978ff7498be920fb5a46661aaab840e10047e3c01c3d292760e7e8dcf25e4f68.lean/declarations/coindresadjunction-homequiv-symm-apply--6b1b0a4835556942efa6191f.md) | 269 | `result-track:6b1b0a4835556942efa6191f47aaa41636a4f7ac55935babc0b78e0d8d2d1b33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
