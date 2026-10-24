# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97a6ba5890c5fc4fd27fb0f2fa47676810daade9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97a6ba5890c5fc4fd27fb0f2fa47676810daade9`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ExtremallyDisconnected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Stonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/stonean--0e62af6abd9135b9a63b1cd0.md) | 49 | `declaration-track:0e62af6abd9135b9a63b1cd0684f6e10e954e6ae61f18a3c44bea03049f00202` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--d1927e9e42ab376124680692.md) | 58 | `declaration-track:d1927e9e42ab37612468069296cfda58f83727af8e74109e4d0017d38f5f87c1` |
| 3 | `def` | [toStonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/tostonean--424d6f5a7f6b1923754ec2e5.md) | 80 | `declaration-track:424d6f5a7f6b1923754ec2e5f4db9a5fee57afb50685560f5260fa2c3717be3d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--d394f4e4fd41acb666f7227e.md) | 89 | `declaration-track:d394f4e4fd41acb666f7227e26b65ae3c8f296b1f0b4d84f2ee3b0b05f420931` |
| 5 | `def` | [toCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/tocomphaus--387d829ae711187b994b3070.md) | 94 | `declaration-track:387d829ae711187b994b307085b679ba8fd5caadaa0066a44583943c86879f4b` |
| 6 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/of--da84facb31ababfe81a26653.md) | 100 | `declaration-track:da84facb31ababfe81a26653389e47e47d81378b3a235726a43e38f31d8dd681` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--dc9c794549af63aeed0c4ab2.md) | 105 | `declaration-track:dc9c794549af63aeed0c4ab2c84d2e8cf6ccbf78aa36f02358b49deb624343b1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--4ab791f8fe9ace8e0148448c.md) | 109 | `declaration-track:4ab791f8fe9ace8e0148448c6cdffd053abd0cc3faf77f23e08e0d5705001b3f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--a4103586494d37ae7829debe.md) | 112 | `declaration-track:a4103586494d37ae7829debe7b3f6da18e15db134c60b3643d8cf82b1d22bf41` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--29a1cf2269df04ba7aac6fd5.md) | 115 | `declaration-track:29a1cf2269df04ba7aac6fd5ca873ec68500f8b24e53e037a92ddc1034cef28c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--6bfb00205df3b617426889f0.md) | 116 | `declaration-track:6bfb00205df3b617426889f0e45c1b94fa4fb26df6b27437f59fd14de6d6a9fd` |
| 12 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/insttopologicalspace--4fc37bed67ee60f4a1496a86.md) | 119 | `declaration-track:4fc37bed67ee60f4a1496a86b4b1c184e9fc8f4f197eaeb88150f3ec84e9f910` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--371a2abaa6815db437b1609b.md) | 123 | `declaration-track:371a2abaa6815db437b1609b68a1d8d2ffbc2ae59e5063d2020b602c59cbd797` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--b3a341e831149e716c4436c8.md) | 127 | `declaration-track:b3a341e831149e716c4436c895d13d5a8298823d0588ca68f4554fe1b24345f0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--537d4b895e2b2f5f663039c2.md) | 130 | `declaration-track:537d4b895e2b2f5f663039c2d5c2470d7168f9ad72eeb137f02e8d80f497c339` |
| 16 | `def` | [toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/toprofinite--6e8daa586daa63467db9d5a3.md) | 135 | `declaration-track:6e8daa586daa63467db9d5a32f9083e4a6783b9275a7ecd0c06ac1ced9f0c73a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--45f3a0175916b59008119072.md) | 142 | `declaration-track:45f3a0175916b59008119072d2a1bddbb8fe336da7b79973468bc900facdf668` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--e5b1270028de1d89d1a17d6b.md) | 146 | `declaration-track:e5b1270028de1d89d1a17d6baf5490ca47fc20d544e064368899265a672413cc` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/example--19f7e4f83f5f70f830e4d6dc.md) | 150 | `declaration-track:19f7e4f83f5f70f830e4d6dc314b3b2459a5a2e06c541ebf019855d3cf55a77f` |
| 20 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/isoofhomeo--22aee4bb25d6abf0ade6f3d4.md) | 156 | `declaration-track:22aee4bb25d6abf0ade6f3d4aa35f29518deb8b6c1b44fd1fc8b353a5c89bd2d` |
| 21 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/homeoofiso--6a922dda5c919f626f587296.md) | 162 | `declaration-track:6a922dda5c919f626f587296b8311d5b3a9c886812cbf821bd4dd74defb8e4e4` |
| 22 | `def` | [isoEquivHomeo](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/isoequivhomeo--22629c7ca2e7a6c3e00847ba.md) | 168 | `declaration-track:22629c7ca2e7a6c3e00847baa7fb041b2a74644ee98f0958f17d5a2214f15f13` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/instance--75c5c06126fb9b05557d74b4.md) | 175 | `declaration-track:75c5c06126fb9b05557d74b44d7110b013c5fd9c1569bb9759b67dba686dec72` |
| 24 | `def` | [presentation](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/presentation--29c844e6ac911f5b70aeb69c.md) | 194 | `declaration-track:29c844e6ac911f5b70aeb69cff7a6743908997ebaccb2486557a614261d81d26` |
| 25 | `def` | [presentation.π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/presentation--2f7191bc09efd860b53c9aca.md) | 209 | `declaration-track:2f7191bc09efd860b53c9acabd0df8cec2fd9b5b4ac3b0b126b0eb2d810a44ce` |
| 26 | `instance` | [presentation.epi_π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/presentation-epi--6e34b10f7e9543956b8772b6.md) | 214 | `declaration-track:6e34b10f7e9543956b8772b6d33dca799b0279e6b275784ebcfb7a12f0583f71` |
| 27 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/lift--07587719542db4854a446074.md) | 231 | `declaration-track:07587719542db4854a4460748db81dcf72f08152fdefc44af30ac2c456fbe286` |
| 28 | `lemma` | [lift_lifts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/lift-lifts--39e36ebe38fdd5c3df1fedbe.md) | 236 | `result-track:39e36ebe38fdd5c3df1fedbe08f6622853a6d9fe3d7edbc6578281091030e80c` |
| 29 | `lemma` | [Gleason](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9acc90d993811af9c45a92dc6c5b7a822939c1da90ffb71d93c51f3f10c9eb8d.lean/declarations/gleason--30a896d3b4b2c855aad318e7.md) | 239 | `result-track:30a896d3b4b2c855aad318e71e80cc3a9249e6659d8c3633816da435406a7648` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
