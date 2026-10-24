# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a8d7a487cd4e6c0511b29034f6914061fae0750",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a8d7a487cd4e6c0511b29034f6914061fae0750`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DomMulAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/dommulact--12a6764914a13a0faab7d308.md) | 92 | `declaration-track:12a6764914a13a0faab7d308d31d0976d7efc6675059ac852a06ff6627a9d8c4` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk--69ff4661b57814e197608862.md) | 103 | `declaration-track:69ff4661b57814e1976088625c59c1d1baea98c4faadd8c54f856bfbc2e79f54` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--b2a8d798a82147fdfc7847e6.md) | 118 | `declaration-track:b2a8d798a82147fdfc7847e64a03f1a2a7e6da28a01468797dec0b9464e7e5ac` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--38b3a4b08914c05eb870b7b7.md) | 121 | `declaration-track:38b3a4b08914c05eb870b7b7fd01a95b67eb800108169f090dbcdfc4d9432b91` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--c9cec51ec0fbc5e442130717.md) | 122 | `declaration-track:c9cec51ec0fbc5e44213071702fc1e36439a0893074f636a1f0925f44fef4646` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--5a4594816bd95a474b83dd6b.md) | 123 | `declaration-track:5a4594816bd95a474b83dd6b427772d703b64fb732dde73de841223b4700d96e` |
| 7 | `lemma` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-one--afc3a13965c453478ffc8279.md) | 126 | `result-track:afc3a13965c453478ffc827944ea20d43b44a4edbad74f7da5fb984beb3b168e` |
| 8 | `lemma` | [symm_mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/symm-mk-one--bba261f49b89bc76ef0d77bf.md) | 129 | `result-track:bba261f49b89bc76ef0d77bfd6dc3687f8982d13d9dad9b9218870b09fa7c871` |
| 9 | `lemma` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-mul--6f4e75b5b2438d5f21f79689.md) | 132 | `result-track:6f4e75b5b2438d5f21f7968937da98b150ed58868d07c33513a4f7f52780f6f3` |
| 10 | `lemma` | [symm_mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/symm-mk-mul--9fa18863a9c5e0aa9a2c8802.md) | 135 | `result-track:9fa18863a9c5e0aa9a2c8802414aaadafdbd679f3652831a5f725a8c1874c7eb` |
| 11 | `lemma` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-inv--5430fee1bfad02fbcc1cc036.md) | 138 | `result-track:5430fee1bfad02fbcc1cc0364c0bc30baca3af8865734251f22a6e117aa99b2f` |
| 12 | `lemma` | [symm_mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/symm-mk-inv--21c5dd9c318618d3b0eb5c29.md) | 141 | `result-track:21c5dd9c318618d3b0eb5c290d918eac8548ce97708a8f5f626b4f89ce0d5296` |
| 13 | `lemma` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-pow--fd1f2e6d80a623e8d1899db8.md) | 144 | `result-track:fd1f2e6d80a623e8d1899db8a48eeb9950874c6a083ba23b7e2485c18afe4af0` |
| 14 | `lemma` | [symm_mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/symm-mk-pow--3e2d41c6ed361c766967d6a0.md) | 147 | `result-track:3e2d41c6ed361c766967d6a00e2134089c15f6ab72899fb3b778506b099d9515` |
| 15 | `lemma` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-zpow--a5d95c26960f5fc6b6b15966.md) | 150 | `result-track:a5d95c26960f5fc6b6b1596635f128dfbbff355e90c855802c22afff2ac6e81e` |
| 16 | `lemma` | [symm_mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/symm-mk-zpow--9cc410ba83245fd0f80199c2.md) | 153 | `result-track:9cc410ba83245fd0f80199c234d0595e22a2547458051ef7275745d54ff59684` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--3608eb4119bc4f3e4e1dedc0.md) | 158 | `declaration-track:3608eb4119bc4f3e4e1dedc0f5e712758d78c5473de88ccc7c3947594789faea` |
| 18 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/smul-apply--9d201f9df7ba63ebe41f804b.md) | 162 | `result-track:9d201f9df7ba63ebe41f804b7e0dc45d30e1ef12e929f98fdff90a628ac782b9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--7f0234a172ec8ec4988e687b.md) | 165 | `declaration-track:7f0234a172ec8ec4988e687bd4657c96e6be03f301fec46a5f49b76a41b72ded` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--668e14f50687790e97cd982d.md) | 169 | `declaration-track:668e14f50687790e97cd982d5fe492465195cdb4a9720266d4abf58902fdeee7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--0a5c792a421f64201839c532.md) | 173 | `declaration-track:0a5c792a421f64201839c532c9ead3a46b68e67aff747716dc2a9746cd67ffb7` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--4f103841e34a3b052b1f0711.md) | 177 | `declaration-track:4f103841e34a3b052b1f0711edb21e3217b4369fa54962c9e092270647473482` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--7772a80568e03fbccb2a14a1.md) | 185 | `declaration-track:7772a80568e03fbccb2a14a14cdb018ceca9c06c86258973cd956bba60886018` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--efbbe3a1c9e4ef33365892c9.md) | 188 | `declaration-track:efbbe3a1c9e4ef33365892c9962ca7f949f5a2fa46e0ac2104363a2c2958cd9b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--5c8338e17c3cd9802839a12e.md) | 192 | `declaration-track:5c8338e17c3cd9802839a12e6e9fd2fb3fba9a4e645cfccc4c157a617b4e1a30` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--296ab224f4f228fa18952520.md) | 196 | `declaration-track:296ab224f4f228fa1895252084e19c0e920fe579175ed67a8d1f7e0a7fd1532e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--0f45d499f83964a08676a5f4.md) | 200 | `declaration-track:0f45d499f83964a08676a5f4f1daabd284722f9b9872f5de5485df70a542a388` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--64a7c42946c7cef71747b6d7.md) | 208 | `declaration-track:64a7c42946c7cef71747b6d773b7867c647ff5083694184057162d36ce420b22` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--11ecb9bdd821d19c740ea70d.md) | 211 | `declaration-track:11ecb9bdd821d19c740ea70d73a6e7d956eaec468ec6c6698808df9ff129b17c` |
| 30 | `theorem` | [smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/smul-monoidhom-apply--5d3c6b8c4b2097e3e9fed628.md) | 215 | `result-track:5d3c6b8c4b2097e3e9fed628c8b2dbf6227c97dfd2a23a44e8b3eb3f021c52a8` |
| 31 | `theorem` | [mk_smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-smul-monoidhom-apply--eb1cb6b9f261149c1d1bd9b7.md) | 219 | `result-track:eb1cb6b9f261149c1d1bd9b7747508b011baa95e6714a32dc83da05b0468ed0e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--c53ace593cda875d618a0b90.md) | 221 | `declaration-track:c53ace593cda875d618a0b904beaa3f2f59140730142d9fc4bbddf98a4eb1c17` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--1f89eb7ca9228d67ea03a4dd.md) | 231 | `declaration-track:1f89eb7ca9228d67ea03a4ddc554cf0ca1dc36c53e949645de046d5c1055536c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--8751348fa30c10fa86448e59.md) | 234 | `declaration-track:8751348fa30c10fa86448e599b7f3a295aad6196b711c671c5c2136c852b43b1` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--ebe401107fa1a869de4112c9.md) | 237 | `declaration-track:ebe401107fa1a869de4112c9f9a75baae0007876e29bddad5d4802c4b2076b57` |
| 36 | `theorem` | [smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/smul-addmonoidhom-apply--66f61a7366e3d44f71fa17e3.md) | 240 | `result-track:66f61a7366e3d44f71fa17e39d9eec608aefed8c209be16eb350d008f3c093ed` |
| 37 | `theorem` | [mk_smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/mk-smul-addmonoidhom-apply--fb45a1fa9fb70aeda46f1ef9.md) | 244 | `result-track:fb45a1fa9fb70aeda46f1ef99d0c94c5c7b6514a0d8fe88a04a68f6ea36ab502` |
| 38 | `theorem` | [coe_smul_addMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/coe-smul-addmonoidhom--1b739756b13255d623d806ad.md) | 246 | `result-track:1b739756b13255d623d806ade38794a28f54dde3470c92b2af7177fbd4f22859` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--2118659df9f11ff77eb23e91.md) | 253 | `declaration-track:2118659df9f11ff77eb23e91a9a7b0808896033fd102e0d274e99be3a2c3391e` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--5395b0a49b5f5a885c1a2f05.md) | 256 | `declaration-track:5395b0a49b5f5a885c1a2f059077d2bce269d878b7d9ad181d2f4aabe8b9e1d0` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10d5505ea39e5c9851030ca38c91f6be919f8e1e6f8e06d02658bcca050cea0a.lean/declarations/instance--60bff1a756fd6199a02f5109.md) | 260 | `declaration-track:60bff1a756fd6199a02f5109240f0c9891603145902206fa4398f0646fd98dec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
