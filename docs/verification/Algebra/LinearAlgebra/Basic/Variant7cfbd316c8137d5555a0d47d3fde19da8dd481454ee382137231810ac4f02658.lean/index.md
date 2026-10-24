# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a14498d7771283064e142cacd03495b38ed96449",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a14498d7771283064e142cacd03495b38ed96449`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.TrivSqZeroExt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/rel--8400eded11cfc0cacfa4ceb4.md) | 52 | `declaration-track:8400eded11cfc0cacfa4ceb49b331316b1fd320623d62d1eec09efd4c35035e6` |
| 2 | `def` | [TensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/tensoralgebra--6173e9c2fc83c0d8a9beb14e.md) | 63 | `declaration-track:6173e9c2fc83c0d8a9beb14e02199a49243372134efdb724c4912aa6c05191b1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/instance--40ebbf27ec7fa31b93487f2e.md) | 68 | `declaration-track:40ebbf27ec7fa31b93487f2e7a30c7b11d484e020419eafb01cec0b16f9f4d62` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/instance--12e7bb1580cc9c7633442a32.md) | 69 | `declaration-track:12e7bb1580cc9c7633442a324352aa96917a47adb67241f8d8f462c4b252f522` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/instalgebra--1a368a4a7819965a4f987cbd.md) | 73 | `declaration-track:1a368a4a7819965a4f987cbdcd7d1dba4eabaf41ff1f8874787148b3733bc1d2` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/example--11afa994240f5825085fda92.md) | 80 | `declaration-track:11afa994240f5825085fda92f01fba3db07170f5581cbc9479883896b0c9dfea` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/instance--b684cb34dabf86aff6064059.md) | 82 | `declaration-track:b684cb34dabf86aff6064059d059ad85938c20c3fb340ff9b2fcdba5df13d222` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/instance--edf22b8a191c21636383f1ed.md) | 88 | `declaration-track:edf22b8a191c21636383f1eda62cf9509bb518f4a9bb7d618f9e270e787df536` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/instance--3788ed99bce07f26a68cb324.md) | 96 | `declaration-track:3788ed99bce07f26a68cb3245e8a70227227490fedda9ac1d34041b2d0529d73` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/example--cfc34c5299cb58336c477b96.md) | 101 | `declaration-track:cfc34c5299cb58336c477b9610d23a18de6b5e6fd62596d1c97d59c42110a090` |
| 11 | `theorem` | [ringQuot_mkAlgHom_freeAlgebra_ι_eq_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/ringquot-mkalghom-freealgebra-eq--c11e819545557173c4909120.md) | 117 | `result-track:c11e819545557173c49091200d643dc70c7dd0de6a71643797b7754d7963d9f4` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/lift--dfda7019d063b7844135cc44.md) | 128 | `declaration-track:dfda7019d063b7844135cc4492fb6c6f29cfdf91ebe61abb416236baad6f7f9c` |
| 13 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/comp-lift--d9a1640dab95bbd742559a47.md) | 152 | `result-track:d9a1640dab95bbd742559a47e8b555195635cb5b03ffaef218c9b7b860b946d7` |
| 14 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/lift-apply--48f142f98b0bf3fdfb96dc01.md) | 158 | `result-track:48f142f98b0bf3fdfb96dc018d876043ce1bdc487ae6af4b05de7b43896623e6` |
| 15 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/lift-unique--8a156b6ea5eae451ce08c32a.md) | 164 | `result-track:8a156b6ea5eae451ce08c32a310a0201d574ad8d76bfe6e9e4a2c6b9bd8ae480` |
| 16 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/lift-comp--45962bd340e1e86238c26392.md) | 174 | `result-track:45962bd340e1e86238c263922313c20ac781a6423140f67635c95fb572284473` |
| 17 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/hom-ext--b3be2f7a7e18bffaaea90e2c.md) | 182 | `result-track:b3be2f7a7e18bffaaea90e2cf01c4d58a18307e5ebd2818ffb447aa6c390d48f` |
| 18 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/induction--f309f07065ca951f9c3066ef.md) | 193 | `result-track:f309f07065ca951f9c3066efb4bb4f28abe3502fe5dde142e0d5ce0b5c59b30f` |
| 19 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/algebramapinv--e7f27b954d86e45eebd2450f.md) | 217 | `declaration-track:e7f27b954d86e45eebd2450f80fc61bfaa9a46eee50832c6006bd776fb7afe8c` |
| 20 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/algebramap-leftinverse--71ba005aead124cc91890a1d.md) | 223 | `result-track:71ba005aead124cc91890a1df9fd0d7211ac7de22aa23aa90535f0a5cac98e49` |
| 21 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/algebramap-inj--00300ff4712a224adb1585d3.md) | 229 | `result-track:00300ff4712a224adb1585d37314aa4c6de5bd569db3f964b35b4e92fc8bc2a4` |
| 22 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/algebramap-eq-zero-iff--1b40f3230ac88973bf873075.md) | 235 | `result-track:1b40f3230ac88973bf8730758869afdb60ab524f8ea9299e6ba896f1d7f887ae` |
| 23 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/algebramap-eq-one-iff--650cc5bdae660e47f5366aac.md) | 240 | `result-track:650cc5bdae660e47f5366aac8e0a70467de4e8c33457ca0ee2804f3765c3ba2e` |
| 24 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/totrivsqzeroext--899ebc33bd43b246dcf79e18.md) | 248 | `declaration-track:899ebc33bd43b246dcf79e186c4eb2d6892b6e3b442aca1c101b8c897a26c429` |
| 25 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/totrivsqzeroext--2acde7790ce6750c98a7beec.md) | 254 | `result-track:2acde7790ce6750c98a7beec2c9e221a430307e69581b9b682d5e40c2d00c58b` |
| 26 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/inv--352bfafc3c86893005586179.md) | 263 | `declaration-track:352bfafc3c868930055861791e4fa10475d8277d6b0acdba16f50061c40fe937` |
| 27 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/leftinverse--97f447ca8e067021db864e99.md) | 269 | `result-track:97f447ca8e067021db864e99f9b9006e6b5c0c8415370efd9b498cb7567a63b4` |
| 28 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/inj--9624b76f5c1b9b1542e6903d.md) | 277 | `result-track:9624b76f5c1b9b1542e6903d82b57b32c7705b5dc8f353739fe235ce2a10eb14` |
| 29 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/eq-zero-iff--bb373652c8eb968732a18bc8.md) | 282 | `result-track:bb373652c8eb968732a18bc8d6bc9233baaada4ac24562cc18b30555ec3659d0` |
| 30 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/eq-algebramap-iff--59fbbde83096b9bbc65227f2.md) | 288 | `result-track:59fbbde83096b9bbc65227f2a1be52f3869b73413c4ecc93b43ec7c6b305cac5` |
| 31 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/ne-one--71b47e5387e3cb0e5c87d988.md) | 301 | `result-track:71b47e5387e3cb0e5c87d98877c683b8be467012e3f79bbd25d91e664771d7a1` |
| 32 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/range-disjoint-one--02ca448e2ac3280c43db5e4e.md) | 307 | `result-track:02ca448e2ac3280c43db5e4e2ea867da703a5a274e96e23f7e578d28964d4c71` |
| 33 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/tprod--7c4d443f14ffefffdbaed242.md) | 321 | `declaration-track:7c4d443f14ffefffdbaed242c62476c8878d4b50f7a35cba3b67e5de67da23bc` |
| 34 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/tprod-apply--7c09bd15670c338cef963933.md) | 326 | `result-track:7c09bd15670c338cef963933c086cb78e3675ad27024a4f8d0027c13b2410bb7` |
| 35 | `def` | [toTensor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/totensor--8c3465ca9ab5a29993e19167.md) | 340 | `declaration-track:8c3465ca9ab5a29993e191674c342631f6c78180434732433d3347a94d7c50a6` |
| 36 | `theorem` | [toTensor_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/declarations/totensor--fd9bf05103e2d84a81fea2ad.md) | 345 | `result-track:fd9bf05103e2d84a81fea2adfb46857a38573418eaacfa58832c60354b7d26da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
