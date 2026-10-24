# Verification target: GRWTSK.Algebra.LinearAlgebra.Subspace.Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean.json)

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
| 1 | `structure` | [Subspace](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/subspace--87c493e20556735ae92950ba.md) | 45 | `declaration-track:87c493e20556735ae92950baa557dfe1bb7783220402ed2ddad6cb5e92b05159` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/instance--47e8bc89ae0d49e4ca5ff812.md) | 56 | `declaration-track:47e8bc89ae0d49e4ca5ff812158769093083a5396681b110692654097887b6e5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/instance--25cff1524c87dc660491f78a.md) | 63 | `declaration-track:25cff1524c87dc660491f78a5150348426b7985a5d0c4cb2127119c85fcea603` |
| 4 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/mem-carrier-iff--e02588d261e5e6e2a96777b9.md) | 66 | `result-track:e02588d261e5e6e2a96777b9938746c93fe47cdf702f188878b9e247c86a88e7` |
| 5 | `theorem` | [mem_add](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/mem-add--fc2ae20837eba66dab0d9110.md) | 69 | `result-track:fc2ae20837eba66dab0d9110337056e23df12257202f39ffa9831014ec060007` |
| 6 | `inductive` | [MemSpan](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/memspan--27376af78bce33ac05e9a8b6.md) | 77 | `declaration-track:27376af78bce33ac05e9a8b6103f0349bd949568a4fdcc5caa57b9b709122e0d` |
| 7 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span--26ae3eb3d83dbae72f4849e1.md) | 85 | `declaration-track:26ae3eb3d83dbae72f4849e1a029394a6629961044343c6043a4540186b40e5c` |
| 8 | `theorem` | [subset_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/subset-span--07578cdf5b611553aa57d258.md) | 90 | `result-track:07578cdf5b611553aa57d2583db8e82cea0ce767b8bd4b9437ce87ac7ca2c746` |
| 9 | `lemma` | [span_induction](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-induction--aaf53f00fab15f7ff75b0c5f.md) | 96 | `result-track:aaf53f00fab15f7ff75b0c5f76e7c1aa24072e8dea980c13a7a82ae80f3e0508` |
| 10 | `def` | [gi](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/gi--dc803707b514973006b81c11.md) | 109 | `declaration-track:dc803707b514973006b81c116d2c2b0b933d8309446b67fd3536ffe568228425` |
| 11 | `theorem` | [span_coe](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-coe--848164c991a3d0409dab9af5.md) | 122 | `result-track:848164c991a3d0409dab9af5bdd74030397907be6802f5219fd7e233e59cd691` |
| 12 | `instance` | [instInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/instinf--9bc5f10055d9244b7290c125.md) | 126 | `declaration-track:9bc5f10055d9244b7290c125a27a75dba6684ca97975e513298c3b9b95ff89e0` |
| 13 | `instance` | [instInfSet](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/instinfset--5d5c1eb5b9de2b3660c0edc1.md) | 132 | `declaration-track:5d5c1eb5b9de2b3660c0edc15576cb4ca7f05cc2323dece5a4071e8bf393501c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/instance--af3d26db84028e313768813f.md) | 139 | `declaration-track:af3d26db84028e313768813f34edbe7f16a32300ccb683c6ed75bdb2a5b0b190` |
| 15 | `instance` | [subspaceInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/subspaceinhabited--5462e88aba2681233dd98332.md) | 149 | `declaration-track:5462e88aba2681233dd98332b553e1e3d05f7102be8d12254be8eedad584806e` |
| 16 | `theorem` | [span_empty](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-empty--b8d4873daeddcde660846598.md) | 153 | `result-track:b8d4873daeddcde660846598b5d2c54c6ff357ce445997348d777aa38cbb861c` |
| 17 | `theorem` | [span_univ](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-univ--b615d32b593b0f59628bca63.md) | 157 | `result-track:b615d32b593b0f59628bca63995597089d1e65088ea44190d59a1d62b336b46e` |
| 18 | `theorem` | [span_le_subspace_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-le-subspace-iff--472e80866ee8ba2e4188cfcd.md) | 164 | `result-track:472e80866ee8ba2e4188cfcd7a03a07d55a3aee7fd67aa777653ca524b454070` |
| 19 | `theorem` | [monotone_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/monotone-span--2919f7f70ea3c17317ca81b9.md) | 170 | `result-track:2919f7f70ea3c17317ca81b9f477da8d6ae05424a331fada8add51ad27f95d2f` |
| 20 | `lemma` | [span_le_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-le-span--08a7b9f626801c95f8f431cc.md) | 174 | `result-track:08a7b9f626801c95f8f431ccd43065fe0fe22a00293685b51db452d017f8aaba` |
| 21 | `theorem` | [subset_span_trans](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/subset-span-trans--e16ef5fc228860740b9e6ab6.md) | 176 | `result-track:e16ef5fc228860740b9e6ab62090eab49f3b98500cf402c19c9c937e2b7e3e59` |
| 22 | `theorem` | [span_union](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-union--795306eb795288aa467929ce.md) | 181 | `result-track:795306eb795288aa467929cec9e7b6c9b57efe52a2cd210f79ad2448bc4a5b00` |
| 23 | `theorem` | [span_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-iunion--1c87fc239335c2b0037dd121.md) | 186 | `result-track:1c87fc239335c2b0037dd121152353a9b16b2067c9385d57abae6ea571f40175` |
| 24 | `theorem` | [sup_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/sup-span--5816c9691c66f2b57c557f15.md) | 191 | `result-track:5816c9691c66f2b57c557f15caaffd14911474c020b40cb14aeaead8356357b9` |
| 25 | `theorem` | [span_sup](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-sup--887f9f11c2c1ff1db44c22c3.md) | 194 | `result-track:887f9f11c2c1ff1db44c22c3d47800e641e4553bb28d1748ce9194c5f9780e91` |
| 26 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/mem-span--7755d4b03bf39005161d1295.md) | 199 | `result-track:7755d4b03bf39005161d129585865daa091a038f5032d49aad59095505ba1e04` |
| 27 | `theorem` | [span_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-eq-sinf--cd103572c912c2655f8ae4bb.md) | 206 | `result-track:cd103572c912c2655f8ae4bb4e2a18e5b350ffa599be26e881be3b40a20840da` |
| 28 | `theorem` | [span_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-eq-of-le--ee86ac681230732ecd8dbf8b.md) | 217 | `result-track:ee86ac681230732ecd8dbf8bb4073032673877b47c1bd50ca135a9d000ff84c0` |
| 29 | `theorem` | [span_eq_span_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/span-eq-span-iff--efab86140df8eb6a00850dd8.md) | 223 | `result-track:efab86140df8eb6a00850dd8c5ffcc58802628bff7b1fb21d183759bed0d2ef8` |
| 30 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/submodule--1b019ef92a25d08a0547b396.md) | 229 | `declaration-track:1b019ef92a25d08a0547b396af91f0b924f1f3d7bac8ccdfe38736262c2717f5` |
| 31 | `theorem` | [mem_submodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/mem-submodule-iff--55a34f6b8488a05c49434cb3.md) | 262 | `result-track:55a34f6b8488a05c49434cb3b8ea1db97718017877ca2d8624986d93230daa89` |
| 32 | `lemma` | [bot_coe](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/bot-coe--40553ff6fd1f87dd0173665b.md) | 267 | `result-track:40553ff6fd1f87dd0173665bc7997475ebe3e74236c716ca3f322006111c81e2` |
| 33 | `abbrev` | [projectivization](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/projectivization--4d3f4d17b6b910dc07dbb372.md) | 285 | `declaration-track:4d3f4d17b6b910dc07dbb37244c9ac18d68318a7e95dd9f4b938001130a206e4` |
| 34 | `theorem` | [mk_mem_projectivization_iff](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/mk-mem-projectivization-iff--273dca8fc1019f1b309c5eff.md) | 289 | `result-track:273dca8fc1019f1b309c5eff15e05bbc651a21757a5f3aa50bbe049d64ccf557` |
| 35 | `theorem` | [mem_projectivization_iff_submodule_le](../../../../../mathematics/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/declarations/mem-projectivization-iff-submodule-le--c8d2a93b4b3aeb84063b2c1a.md) | 292 | `result-track:c8d2a93b4b3aeb84063b2c1ad178924506c8f92dd4cd093bea5387023eaf8ae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
