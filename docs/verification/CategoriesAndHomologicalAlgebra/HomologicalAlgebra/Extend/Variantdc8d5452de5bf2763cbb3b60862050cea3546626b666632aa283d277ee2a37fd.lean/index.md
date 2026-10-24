# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Extend.Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7324babd79b38d233a0ce9562c0f65a95bec0d0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7324babd79b38d233a0ce9562c0f65a95bec0d0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.IsSupported` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/x--a66f01e10623320709a41209.md) | 45 | `declaration-track:a66f01e10623320709a412094b4d07157a4f8c63b608541ef633751e4c4666e2` |
| 2 | `def` | [XIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/xiso--5f8fcfe066e86ec2736c132e.md) | 50 | `declaration-track:5f8fcfe066e86ec2736c132ea09988e8c9effa9aa44d56b45a4da7781d2b92af` |
| 3 | `lemma` | [isZero_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/iszero-x--e0b4c9bee45a9766ada2ea37.md) | 53 | `result-track:e0b4c9bee45a9766ada2ea379e488a9c56fd3b26346d81b3d16d275e4ec34061` |
| 4 | `def` | [XOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/xopiso--eb38c58777755aa04c7c421a.md) | 59 | `declaration-track:eb38c58777755aa04c7c421ad9115482cab24f69ed24ed631420e36b0764e15e` |
| 5 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/d--d06c03cf11f73ce0f291b34a.md) | 65 | `declaration-track:d06c03cf11f73ce0f291b34a44767ebef703e1f8fb403a8dfe14739e7b9949e8` |
| 6 | `lemma` | [d_none_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/d-none-eq-zero--d842d76c0410a7ee2a9ddf31.md) | 70 | `result-track:d842d76c0410a7ee2a9ddf311289cc46327a54f544e82cfd83d2ce4c3a666d3c` |
| 7 | `lemma` | [d_none_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/d-none-eq-zero--c4c1f113de03aa4fc85f0e80.md) | 73 | `result-track:c4c1f113de03aa4fc85f0e806ae92543f0865494e4c7dac6093c46c68a32c045` |
| 8 | `lemma` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/d-eq--f2bc1fbc0184689e4fd897bc.md) | 76 | `result-track:f2bc1fbc0184689e4fd897bce1373a633c545aab6f0a7924ba78d77d497d75d3` |
| 9 | `lemma` | [XOpIso_hom_d_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/xopiso-hom-d-op--6a78e03c3f3aef68f9eb4665.md) | 82 | `result-track:6a78e03c3f3aef68f9eb4665e6bd7a651fda9f29799371dcedc8782c6ae61a56` |
| 10 | `def` | [mapX](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/mapx--79d5bb74aba8680db8b30dbc.md) | 99 | `declaration-track:79d5bb74aba8680db8b30dbce19c514c949dd55405e130f331cdb3748140dd0e` |
| 11 | `lemma` | [mapX_some](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/mapx-some--2e6a7bc27c9f9f5fb08f097e.md) | 103 | `result-track:2e6a7bc27c9f9f5fb08f097e29dca3abf5472b3b0e212fccf543dc0d8292c24a` |
| 12 | `lemma` | [mapX_none](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/mapx-none--96302c0b2d95e2c476cddb73.md) | 110 | `result-track:96302c0b2d95e2c476cddb73a75cae55d780ec5a8d82f939faf3cbbf5e18d6a7` |
| 13 | `def` | [extend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extend--c46a944e6bb1d29f78c5ea31.md) | 118 | `declaration-track:c46a944e6bb1d29f78c5ea316a43ae1a9375b3bd581467bd17a6413579aa47f4` |
| 14 | `def` | [extendXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendxiso--c7e673307b78252cd177c095.md) | 142 | `declaration-track:c7e673307b78252cd177c095a6e6937a19384e3189ffd034f4b908fa3dd00837` |
| 15 | `lemma` | [isZero_extend_X'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/iszero-extend-x--88f0f21f3da9162f880c1f80.md) | 146 | `result-track:88f0f21f3da9162f880c1f80ec08e2a0243e3852fee063977d7c620a3ade9769` |
| 16 | `lemma` | [isZero_extend_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/iszero-extend-x--a0b68a1cd767ce0f87d37da6.md) | 150 | `result-track:a0b68a1cd767ce0f87d37da665656dbb105db1575fa317f55a8e24f893515829` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/instance--85b05c9887f129e0873849b0.md) | 158 | `declaration-track:85b05c9887f129e0873849b05ca0d6a57a79cc7257e791bcfaefb88e19614fbe` |
| 18 | `lemma` | [extend_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extend-d-eq--1edc023eef01cdf3c555a946.md) | 161 | `result-track:1edc023eef01cdf3c555a9464a23c65127a7d23afef42ad340eadcc72b745cdf` |
| 19 | `lemma` | [extend_d_from_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extend-d-from-eq-zero--faabf1acf0dea658f27ac047.md) | 166 | `result-track:faabf1acf0dea658f27ac047c250a3654d84f34b2c38e8a74eb7e4a3eb2402f8` |
| 20 | `lemma` | [extend_d_to_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extend-d-to-eq-zero--77b28d6b9fe37be0a7093645.md) | 175 | `result-track:77b28d6b9fe37be0a7093645672fecba5956c1850723d85e9978e46953497d00` |
| 21 | `def` | [extendMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap--a04b4e461ad8f1903c827e51.md) | 189 | `declaration-track:a04b4e461ad8f1903c827e51598acaeb20717a0ef65868dc14a455c83481d4d3` |
| 22 | `lemma` | [extendMap_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-f--a29ba810000c10297535093f.md) | 209 | `result-track:a29ba810000c10297535093fcdce6b9ef67fc9b15c68d7ce2922f89dffe22a20` |
| 23 | `lemma` | [extendMap_f_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-f-eq-zero--1814b04352ba04781d82868e.md) | 216 | `result-track:1814b04352ba04781d82868e7b6440bd7def70f4d7b9407d261732c141cd7f23` |
| 24 | `lemma` | [extendMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-comp--a795ddab29dca27b963cd6a2.md) | 222 | `result-track:a795ddab29dca27b963cd6a28231df0a742fb49115ca562215a6b49699cb7a9b` |
| 25 | `lemma` | [extendMap_id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-id-f--068ea1ffce7863f3b3ac794e.md) | 232 | `result-track:068ea1ffce7863f3b3ac794eff0621633733e23eeb5b72da1e2b4d0352bebca3` |
| 26 | `lemma` | [extendMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-id--98a80210487901552b3aa496.md) | 239 | `result-track:98a80210487901552b3aa4963927edf5311f3da04e18207bfb86e9fc239f0128` |
| 27 | `lemma` | [extendMap_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-zero--fdbe1fc8720d3fc2b0ccec88.md) | 247 | `result-track:fdbe1fc8720d3fc2b0ccec8825fe1d4d920dd720a59ee603e1a90d61c6a90946` |
| 28 | `def` | [extendOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendopiso--7fdcf5a572f42b32a7c54e2b.md) | 255 | `declaration-track:7fdcf5a572f42b32a7c54e2ba8409baaf75fec799a622d318503f21b382b9b1e` |
| 29 | `lemma` | [extend_op_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extend-op-d--b63fdb71136dedfdb4dd574c.md) | 260 | `result-track:b63fdb71136dedfdb4dd574c537886cd455a1af4e3ec51486750e48bc17c05a4` |
| 30 | `lemma` | [extendMap_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendmap-add--469b6bc7929e0ce831b8fd9d.md) | 271 | `result-track:469b6bc7929e0ce831b8fd9df171a34c88565b2a077b8b8d05a720a708f6f2cd` |
| 31 | `def` | [extendFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/extendfunctor--5d64c67f6fcc5863b21294ea.md) | 290 | `declaration-track:5d64c67f6fcc5863b21294ead80fba3c02fab0afa3348bb495fa4db0832c0b3e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/instance--b4aba6444744a63b0783b3f9.md) | 295 | `declaration-track:b4aba6444744a63b0783b3f9dd41f0108ce2259af597c55b0d6a0d063e0be70d` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variantdc8d5452de5bf2763cbb3b60862050cea3546626b666632aa283d277ee2a37fd.lean/declarations/instance--772567ca5bbdeb45b44999de.md) | 297 | `declaration-track:772567ca5bbdeb45b44999dec1a8a3f7aa4e89f8e74cd42f749166578d3e5c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
