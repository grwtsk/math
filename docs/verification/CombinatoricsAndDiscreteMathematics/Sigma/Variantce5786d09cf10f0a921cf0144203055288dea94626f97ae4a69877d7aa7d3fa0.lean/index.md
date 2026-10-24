# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6559ace371334df548f1c054b03c3eca10170a1a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6559ace371334df548f1c054b03c3eca10170a1a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigma--1298e12d43303f04d11222d7.md) | 49 | `declaration-track:1298e12d43303f04d11222d7abdf5765ae1da7420f4986048eab944da806f894` |
| 2 | `theorem` | [mem_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/mem-sigma--8914956aafeef410ef0d7f13.md) | 55 | `result-track:8914956aafeef410ef0d7f130f0a5d46809764e14e649c46a0e8d7ba9548eca3` |
| 3 | `theorem` | [coe_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/coe-sigma--6c7974ba06c8858c68039174.md) | 59 | `result-track:6c7974ba06c8858c68039174584b34b211c69383cd95e66319615430907d8cd5` |
| 4 | `theorem` | [sigma_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigma-nonempty--88c1f68daddce3640731f2aa.md) | 64 | `result-track:88c1f68daddce3640731f2aa7931db8796cfc239b0b48ac842918738de50c517` |
| 5 | `theorem` | [sigma_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigma-eq-empty--e496933599a0c59eec1edfb9.md) | 70 | `result-track:e496933599a0c59eec1edfb95885e6e2724abdb77095608aa0e502f40346cb4a` |
| 6 | `theorem` | [sigma_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigma-mono--1d3fe44339fe5d73212798fc.md) | 74 | `result-track:1d3fe44339fe5d73212798fc85e01a49be9ee761b422c226d547c538d2ff9f87` |
| 7 | `theorem` | [pairwiseDisjoint_map_sigmaMk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/pairwisedisjoint-map-sigmamk--1c825538431e70cbbb84d0d5.md) | 79 | `result-track:1c825538431e70cbbb84d0d50e1a71bacb2cf47a6d78cf51480e804e58e775da` |
| 8 | `theorem` | [disjiUnion_map_sigma_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/disjiunion-map-sigma-mk--09b6a8af772c94709777373b.md) | 88 | `result-track:09b6a8af772c94709777373bc9b73651c7687fff0c84de702cb55271d0842991` |
| 9 | `theorem` | [sigma_eq_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigma-eq-biunion--d40de55c6dd1649d996aa618.md) | 93 | `result-track:d40de55c6dd1649d996aa6188d7d1c1b0c67dd11c10efa09a79537d0fd749832` |
| 10 | `theorem` | [sup_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sup-sigma--ee0941def5ece4e621b8b2c6.md) | 100 | `result-track:ee0941def5ece4e621b8b2c6441db78384fcfa53bf65715df50fe461b5528fa9` |
| 11 | `theorem` | [inf_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/inf-sigma--bb2d74fa1811710775acb585.md) | 107 | `result-track:bb2d74fa1811710775acb585fda7ca3c30c7868697edd1ce0a340dcb61165cbb` |
| 12 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.biSup_finsetSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--c45376768a9415f2155df3be.md) | 111 | `result-track:c45376768a9415f2155df3be7ead225ba83eb6105aa4a441d7343d07f78b4892` |
| 13 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.biSup_finsetSigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--62daa18066cc4b55d89a70fc.md) | 115 | `result-track:62daa18066cc4b55d89a70fca4e298e98d27759bc6e671031eb4cfc1566ed8ff` |
| 14 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.biInf_finsetSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--34532b12f5729872db7d63e2.md) | 119 | `result-track:34532b12f5729872db7d63e22a878f5c39944c3313ff3aa95ea36326e2bf2666` |
| 15 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.biInf_finsetSigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--d1c0c31b93203e24600eb0d3.md) | 123 | `result-track:d1c0c31b93203e24600eb0d3b141262c02332be0c3e6f0acddf8abccc506c989` |
| 16 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.Set.biUnion_finsetSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--e37d79980abc706b31e0fc71.md) | 127 | `result-track:e37d79980abc706b31e0fc71658a1c167dca14523072a57a3e3194d2432d75d7` |
| 17 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.Set.biUnion_finsetSigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--b85f91cede92c9c3526d20b1.md) | 131 | `result-track:b85f91cede92c9c3526d20b11cfee3669cefceb2f77779efa2421dcc5be0d64e` |
| 18 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.Set.biInter_finsetSigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--a7577a5e868fda893e7d9616.md) | 135 | `result-track:a7577a5e868fda893e7d96164ee5a5c959064f65dc0f58a7366876472a14419c` |
| 19 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.Set.biInter_finsetSigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sigma-varianta52a5534a76--08e91ac286175471a97f4887.md) | 139 | `result-track:08e91ac286175471a97f48874b7b4ee630a7a9c26f96c679034cfed698781b7b` |
| 20 | `def` | [sigmaLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigmalift--483a1b79da9a8b756500209a.md) | 150 | `declaration-track:483a1b79da9a8b756500209a1c59f05728bc4553177a53940a0e4da859105290` |
| 21 | `theorem` | [mem_sigmaLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/mem-sigmalift--37fed49ef37922506d18303e.md) | 154 | `result-track:37fed49ef37922506d18303e7bfae5de70202297462c43d09b9ce49c3a1bcc56` |
| 22 | `theorem` | [mk_mem_sigmaLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/mk-mem-sigmalift--8f125027b3de6cc10b7171ca.md) | 173 | `result-track:8f125027b3de6cc10b7171ca3b6941d7a8b906b498f84d1a59b704fe5ef832da` |
| 23 | `theorem` | [notMem_sigmaLift_of_ne_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/notmem-sigmalift-of-ne-left--5986866d2cbe01614950294f.md) | 180 | `result-track:5986866d2cbe01614950294f0f4f9842ebf965afd4b9cd76afc1418bf333e248` |
| 24 | `theorem` | [notMem_sigmaLift_of_ne_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/notmem-sigmalift-of-ne-right--b6247e525c5fd6fe96bfb5b7.md) | 188 | `result-track:b6247e525c5fd6fe96bfb5b7c3d493ea5282c828d05f8a7faae8963d741dd82e` |
| 25 | `theorem` | [sigmaLift_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigmalift-nonempty--681220583066a0e6e3b854b2.md) | 198 | `result-track:681220583066a0e6e3b854b22d6d5e64779f55b36236e8e7b29a2d6dd5d2c507` |
| 26 | `theorem` | [sigmaLift_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigmalift-eq-empty--99f75f38ab7c6505d909fa7e.md) | 203 | `result-track:99f75f38ab7c6505d909fa7ed0c64b1deae9450a30117a2b74df0916986bb7a3` |
| 27 | `theorem` | [sigmaLift_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/sigmalift-mono--357079df38e8a4be8cfe13b9.md) | 209 | `result-track:357079df38e8a4be8cfe13b975a173b410e951b75f45a5525c7f5caedb271173` |
| 28 | `theorem` | [card_sigmaLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variantce5786d09cf10f0a921cf0144203055288dea94626f97ae4a69877d7aa7d3fa0.lean/declarations/card-sigmalift--e6d042a037649622c7790b8f.md) | 219 | `result-track:e6d042a037649622c7790b8fc11e5fa45e994ebcc43f20d1ece20a081f73a200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
