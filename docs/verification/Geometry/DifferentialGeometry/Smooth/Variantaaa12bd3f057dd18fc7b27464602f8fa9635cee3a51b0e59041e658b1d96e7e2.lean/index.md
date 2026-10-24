# Verification target: GRWTSK.Geometry.DifferentialGeometry.Smooth.Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "476f47d527c0d340cae23555ab99e7d80b527abe",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `476f47d527c0d340cae23555ab99e7d80b527abe`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.SmoothFunctions` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Sheaf.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothSheaf](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf--69a71b9c2dd376e79529d51f.md) | 94 | `declaration-track:69a71b9c2dd376e79529d51fa2c125926af982b1c5069efcdeeaad1ac6110a9b` |
| 2 | `instance` | [smoothSheaf.coeFun](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-coefun--db458df14a65a536a8d88f60.md) | 99 | `declaration-track:db458df14a65a536a8d88f60d58c2d9d3d3eb5320343aed507442efebc77c14e` |
| 3 | `lemma` | [smoothSheaf.obj_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-obj-eq--66ae13db2f79cdc545b9029c.md) | 107 | `result-track:66ae13db2f79cdc545b9029c1da4542656e2fce8699d11397376dbd2edc1304d` |
| 4 | `def` | [smoothSheaf.eval](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-eval--21e169e4b83943c68e5fc518.md) | 112 | `declaration-track:21e169e4b83943c68e5fc518f0565ee99b65d1b63ee26c4cacbf8cdc897196ec` |
| 5 | `def` | [smoothSheaf.evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-evalhom--506a7841f22f99bd68f0ae80.md) | 117 | `declaration-track:506a7841f22f99bd68f0ae80c3a40da555da22580b10543458d6661b17fe13a3` |
| 6 | `def` | [smoothSheaf.evalAt](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-evalat--59eabdafba0df57b66ba7ce8.md) | 124 | `declaration-track:59eabdafba0df57b66ba7ce8f80465fd5de7ed097e7b57f2bbf2788c17ee91e7` |
| 7 | `lemma` | [smoothSheaf.ι_evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-evalhom--a71e5d7616afe4510abccc1e.md) | 128 | `result-track:a71e5d7616afe4510abccc1ea63f9b7b64fc241e90402848862ee1d676a0747b` |
| 8 | `lemma` | [smoothSheaf.eval_surjective](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-eval-surjective--4b904188b6da766ad737534c.md) | 135 | `result-track:4b904188b6da766ad737534c65d770d11cce5049c1154d931650d3276e008ba4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/instance--d51a42d695f63ad96b63b82b.md) | 140 | `declaration-track:d51a42d695f63ad96b63b82b23ff4e5ce0309c11f8463c8128aa95a1eb962b20` |
| 10 | `lemma` | [smoothSheaf.eval_germ](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-eval-germ--4630b4d710d4cf8a232ca8d0.md) | 145 | `result-track:4630b4d710d4cf8a232ca8d0e784b2c113bee1da8a63ecaf6ee0c20d4a3f8164` |
| 11 | `lemma` | [smoothSheaf.contMDiff_section](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheaf-contmdiff-section--b7ab4257fe73cd6bcc2b6c9c.md) | 150 | `result-track:b7ab4257fe73cd6bcc2b6c9c84ffe73604737a61ceac6fba1dc9d54d5f154087` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/instance--f8f185896a83ab927381cb3f.md) | 165 | `declaration-track:f8f185896a83ab927381cb3fbd62be1d1134e8b04657f7d39e4c356ed9f8134c` |
| 13 | `def` | [smoothPresheafGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothpresheafgroup--bbd2061304cc58a14a203dcb.md) | 173 | `declaration-track:bbd2061304cc58a14a203dcbdc9216b616fd474ad490fb5436f0416b4583d433` |
| 14 | `def` | [smoothSheafGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafgroup--ccf1132cafd042a21c5a66ac.md) | 184 | `declaration-track:ccf1132cafd042a21c5a66ac7f4a5e8d8ee8273a2b12711bd39feb3528db34cf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/instance--dbe29ffe27dca660eb2723b8.md) | 196 | `declaration-track:dbe29ffe27dca660eb2723b8645db72a1f8d57c9d2c7c66d379cb958848fb6fc` |
| 16 | `def` | [smoothPresheafCommGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothpresheafcommgroup--186c3270800e65ef37da43e6.md) | 204 | `declaration-track:186c3270800e65ef37da43e62425ef695acb8498ddb800720d103b363aef4a27` |
| 17 | `def` | [smoothSheafCommGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommgroup--bd80b07d935269f8172cd6f1.md) | 215 | `declaration-track:bd80b07d935269f8172cd6f1db6782bbb58bc7b1fe6db19eea33fef17723f85d` |
| 18 | `def` | [smoothSheafCommGroup.compLeft](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommgroup-compleft--a6261d024704d27ed889972e.md) | 228 | `declaration-track:a6261d024704d27ed889972ec156b01e679f6d3d6266d35b4e0db382e9ade642` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/instance--dd813fe0a4ac549a68dc6286.md) | 240 | `declaration-track:dd813fe0a4ac549a68dc6286ea103a0003cce9422512d41acc5a2bdc82eb56cb` |
| 20 | `def` | [smoothPresheafRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothpresheafring--585e9d6400f7f2332bde82a2.md) | 245 | `declaration-track:585e9d6400f7f2332bde82a25119842bc6df358d931cbcb2e2d45e4c10866fd3` |
| 21 | `def` | [smoothSheafRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafring--443a7acff6f1f1d4be4c97f9.md) | 254 | `declaration-track:443a7acff6f1f1d4be4c97f9878077d6be8f934d14ea1464e9def89c35c972a3` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/instance--6245823c2091478709a42a64.md) | 266 | `declaration-track:6245823c2091478709a42a6418fd95e71aeac878dfb0a4055f06c2d1d6a81fd9` |
| 23 | `def` | [smoothPresheafCommRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothpresheafcommring--db4bdf0f84a1d5f95a79fdb5.md) | 271 | `declaration-track:db4bdf0f84a1d5f95a79fdb5a9c6118b59d134a526d09f64c202a418fadfd190` |
| 24 | `def` | [smoothSheafCommRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring--7c322ed13afefd66df170545.md) | 280 | `declaration-track:7c322ed13afefd66df170545f2128e696e81e5b4e983eed9d52fd60cebbbca7e` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/example--57d93e1e7f0f9a7899b7c2af.md) | 289 | `declaration-track:57d93e1e7f0f9a7899b7c2afb41c45ae9e3b5133f28197167c82947174d32af8` |
| 26 | `instance` | [smoothSheafCommRing.coeFun](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-coefun--b5a96627ed14d30ed98d6900.md) | 292 | `declaration-track:b5a96627ed14d30ed98d69004574ab58faf521ccc1d5de7ad712e3b08bcc3536` |
| 27 | `def` | [smoothSheafCommRing.forgetStalk](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-forgetstalk--cf7b3795b1b896b9706d100d.md) | 300 | `declaration-track:cf7b3795b1b896b9706d100d9828cb7d97aabdbf3bf5e9aa44d4eb0d92b1c2cc` |
| 28 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_hom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-forgetstalk-hom--ddc477175a3b35cf93577ed1.md) | 305 | `result-track:ddc477175a3b35cf93577ed1b9978367a90cbe9e7e4c4296de76918ba8373b04` |
| 29 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-forgetstalk-inv--630f14a05691c576e50710ca.md) | 316 | `result-track:630f14a05691c576e50710ca26cca17dede952064d50117f46a6f8d652ca23a7` |
| 30 | `def` | [smoothSheafCommRing.evalAt](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-evalat--bc5b4826097f2bb33c13ed6b.md) | 325 | `declaration-track:bc5b4826097f2bb33c13ed6b4fcc89eb48ef8717b982f5a5d70aceb6db10e3de` |
| 31 | `def` | [smoothSheafCommRing.evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-evalhom--bb304870a64fd652161f2a04.md) | 332 | `declaration-track:bb304870a64fd652161f2a04a6a8c07a8257b623005c86dc7c84f476fa101db2` |
| 32 | `def` | [smoothSheafCommRing.eval](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-eval--75f80cbd2a0ee9404624d2bc.md) | 340 | `declaration-track:75f80cbd2a0ee9404624d2bce254163b324c252671e76ebd15f76a2ac36f7bbe` |
| 33 | `lemma` | [smoothSheafCommRing.ι_evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-evalhom--d175515a42f8b0ce46830723.md) | 343 | `result-track:d175515a42f8b0ce46830723ee66aaad67a7eaa3afaeff5185aa48cdefa94ca0` |
| 34 | `lemma` | [smoothSheafCommRing.evalHom_germ](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-evalhom-germ--b8efa1f17b09f6f0ba67b9db.md) | 348 | `result-track:b8efa1f17b09f6f0ba67b9db1d266f740982664db927a5bf10a8df61aa467e8a` |
| 35 | `lemma` | [smoothSheafCommRing.forgetStalk_inv_comp_eval](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-forgetstalk-inv-comp-eval--87df12ce1618b6ce3219904a.md) | 355 | `result-track:87df12ce1618b6ce3219904a6821bc6018b6b8400e77cffc92b65508832ad2d3` |
| 36 | `lemma` | [smoothSheafCommRing.forgetStalk_hom_comp_evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-forgetstalk-hom-comp-evalhom--90d154551772e14e290a2691.md) | 367 | `result-track:90d154551772e14e290a2691485a1f18998f385547fac23bf3315d3364136485` |
| 37 | `lemma` | [smoothSheafCommRing.eval_surjective](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-eval-surjective--80a9e9789c13b67da8316f13.md) | 374 | `result-track:80a9e9789c13b67da8316f13acd1fb48510a162388c5bafc2707377d82701b2d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/instance--15cfb76a95f5d30f08fb4982.md) | 381 | `declaration-track:15cfb76a95f5d30f08fb498238286394c0a075f6187fa9ae9ac384824399c699` |
| 39 | `lemma` | [smoothSheafCommRing.eval_germ](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/declarations/smoothsheafcommring-eval-germ--d7f1b98e9667ba33e0f3321a.md) | 386 | `result-track:d7f1b98e9667ba33e0f3321aebd91a6209c693fa019f485b33b192bb03508237` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
