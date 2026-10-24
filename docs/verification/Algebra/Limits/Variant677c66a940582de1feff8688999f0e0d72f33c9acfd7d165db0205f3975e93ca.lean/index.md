# Verification target: GRWTSK.Algebra.Limits.Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "182e7eb24c73307a9d82ee7368dd95b758f257b9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `182e7eb24c73307a9d82ee7368dd95b758f257b9`.

Source path: `GRWTSK/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Under.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Over` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Flat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Equalizer` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFan](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/pifan--b64ca6ae0e5d1170f41b4fa5.md) | 40 | `declaration-track:b64ca6ae0e5d1170f41b4fa5dce6c3a0208adcc915434ee7b00df4bed141789c` |
| 2 | `def` | [piFanIsLimit](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/pifanislimit--73c215d001b848f77c49deeb.md) | 45 | `declaration-track:73c215d001b848f77c49deeb4713c44d13075ff1c4519513ec09ea3b8c45a292` |
| 3 | `def` | [tensorProductFan](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorproductfan--2c5446dc8b84d79690eddbc6.md) | 52 | `declaration-track:2c5446dc8b84d79690eddbc69c15c90dd6e95f93bf303e8857de5aff29b9bd76` |
| 4 | `def` | [tensorProductFan'](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorproductfan--7577857141ab2270fa2c1472.md) | 59 | `declaration-track:7577857141ab2270fa2c1472ec16588d87d36e7ec8d3540844bc57c41a16a440` |
| 5 | `def` | [tensorProductFanIso](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorproductfaniso--e669e20cc96b637099b4bd2d.md) | 64 | `declaration-track:e669e20cc96b637099b4bd2d5cb3d8acd19236bc0b3e40adac45aade09da790a` |
| 6 | `def` | [tensorProductFanIsLimit](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorproductfanislimit--a9944cb9333c656d65f4e406.md) | 80 | `declaration-track:a9944cb9333c656d65f4e4065212bb914576b286953e106513bd9be520a16829` |
| 7 | `def` | [piFanTensorProductIsLimit](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/pifantensorproductislimit--5cce4ed52bcfa70491ddbb5f.md) | 86 | `declaration-track:5cce4ed52bcfa70491ddbb5f0c93ac71bb06e55b79728d5e7ea69e0b2f302887` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/instance--7273a7529df407cccb8ee845.md) | 89 | `declaration-track:7273a7529df407cccb8ee845742fcf1cc9e74060d30a54151f2eac76ca27c899` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/instance--7eb6f7071c0342ff851fa171.md) | 95 | `declaration-track:7eb6f7071c0342ff851fa1716c9e4a3079e1126c650a59d8d236ac4e69b0389a` |
| 10 | `lemma` | [equalizer_comp](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizer-comp--6033e64dfb6ffc73ca328515.md) | 106 | `result-track:6033e64dfb6ffc73ca328515064b618cb26c33e4a9f521eb6c42073021469fbb` |
| 11 | `def` | [equalizerFork](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerfork--29301a43ea7c34e3228e0253.md) | 113 | `declaration-track:29301a43ea7c34e3228e0253f6a20dd730512836bd8b162d7aa2155bc2f7bedb` |
| 12 | `lemma` | [equalizerFork_ι](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerfork--449902ac1876c85c08bd4aa8.md) | 119 | `result-track:449902ac1876c85c08bd4aa81115e46fea50ba1600a01d4b94b93a844430e81a` |
| 13 | `def` | [equalizerFork'](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerfork--6a4e03c0942bafe1d4898c44.md) | 124 | `declaration-track:6a4e03c0942bafe1d4898c44867b4e195332d70c6f9f72ccc10d643933a1b1f5` |
| 14 | `lemma` | [equalizerFork'_ι](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerfork--14ce1865c9c2f6a0e4ca9190.md) | 130 | `result-track:14ce1865c9c2f6a0e4ca919001ac3af97dbf653cadff809b9acb1011073874d1` |
| 15 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerforkislimit--6bc3b79e2a8c8225cfe9952c.md) | 136 | `declaration-track:6bc3b79e2a8c8225cfe9952ca1e56810cc99c8b921a31f159fbdad831f4ba007` |
| 16 | `def` | [equalizerFork'IsLimit](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerfork-islimit--7757d52eb93f9d280fdd8b8a.md) | 143 | `declaration-track:7757d52eb93f9d280fdd8b8a1716a7b81abeb0d2229e44cf8c892586eadab652` |
| 17 | `def` | [tensorProdEqualizer](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorprodequalizer--6b9ccb398eb083aa6b1da1f8.md) | 149 | `declaration-track:6b9ccb398eb083aa6b1da1f852c386c6a347a8563ad275d6dfa38e10d419611f` |
| 18 | `lemma` | [tensorProdEqualizer_ι](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorprodequalizer--8a5de998752c5b42b78a1b59.md) | 156 | `result-track:8a5de998752c5b42b78a1b59fcb942f672f1202ca005f69017e6b86e91595eac` |
| 19 | `def` | [equalizerForkTensorProdIso](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/equalizerforktensorprodiso--3a7f2d6a16ba08a089d03b23.md) | 163 | `declaration-track:3a7f2d6a16ba08a089d03b2364c5713a48041404e51f5ebc6ebae834fca55d35` |
| 20 | `def` | [tensorProdMapEqualizerForkIsLimit](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/tensorprodmapequalizerforkislimit--f3f70b60acc7ee6c7d507b0c.md) | 173 | `declaration-track:f3f70b60acc7ee6c7d507b0ce74f3f676ca86bb3a3b25ed9bb14169239b4a10f` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/instance--4baefe59feb3ebc627567113.md) | 179 | `declaration-track:4baefe59feb3ebc6275671139ce813a0faefaad9fb0cdf627884921a1ea082d0` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/instance--79c7584f2990bd2804815923.md) | 187 | `declaration-track:79c7584f2990bd2804815923b180131804830f4cfbbabac06f50de190884225a` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/instance--06f906195441ba822b9f5a73.md) | 191 | `declaration-track:06f906195441ba822b9f5a73f537bb045c581d92450eee52a2825128f56e30bf` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/instance--7511792b064fd8902a773580.md) | 201 | `declaration-track:7511792b064fd8902a7735803b002aeeeda2fab6d5e043c47ac1ff1e0bc1211c` |
| 25 | `lemma` | [preservesFiniteLimits_of_flat](../../../../mathematics/Algebra/Limits/Variant677c66a940582de1feff8688999f0e0d72f33c9acfd7d165db0205f3975e93ca.lean/declarations/preservesfinitelimits-of-flat--11e0a3ea69b346100d141407.md) | 207 | `result-track:11e0a3ea69b346100d141407171ed9c99b3b2273319e1e6fee462df92d4881be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
