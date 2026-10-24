# Verification target: GRWTSK.Algebra.Defs.Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef82e5b6ae63d3a303c0cea68bea07ec36071095",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef82e5b6ae63d3a303c0cea68bea07ec36071095`.

Source path: `GRWTSK/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebra--0cc33b89bb4e863ff16415b1.md) | 93 | `declaration-track:0cc33b89bb4e863ff16415b1408e259f531c7222a7beddfc67d76f4f4fd5e614` |
| 2 | `def` | [algebraMap](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebramap--430e5b7fea4f0d2b8c98e03f.md) | 103 | `declaration-track:430e5b7fea4f0d2b8c98e03ffc5b72b9540d663c8431bb1b8db4eb9d11d28586` |
| 3 | `def` | [Algebra.cast](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebra-cast--dc4bb46d19763ca76c817ba6.md) | 108 | `declaration-track:dc4bb46d19763ca76c817ba609868ac786e1f8106790fbfa75db9cc62521bced` |
| 4 | `instance` | [coeHTCT](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coehtct--79375ba96fd3122db4346751.md) | 113 | `declaration-track:79375ba96fd3122db4346751b22ff7f5ae6a4ef306ef27ab77645bc9b9e1ed27` |
| 5 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-zero--2079c5405a483402f6803e1c.md) | 122 | `result-track:2079c5405a483402f6803e1c7736999167fa83baea4029c754b12133a6d7765c` |
| 6 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-one--77b96e7302d479bcbd96240c.md) | 126 | `result-track:77b96e7302d479bcbd96240c2905c8662b3f964b60c7a779b670c6a7222769a7` |
| 7 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-natcast--560281e1f0da8c67af6aca64.md) | 130 | `result-track:560281e1f0da8c67af6aca64df0395ed9258804a1a1299b88e80dbba1501a08e` |
| 8 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-add--ea81dc941a4a317adbbe4de6.md) | 134 | `result-track:ea81dc941a4a317adbbe4de6303ee915a7e15bb01a9ee9e64e10f123c73d89a4` |
| 9 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-mul--0fb3ee5f4684af6d5ccf40dc.md) | 138 | `result-track:0fb3ee5f4684af6d5ccf40dcc2eda33e46e5e60b89fad7a8a1cee6ea041d9ef0` |
| 10 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-pow--ba4afc0b4522e7532086fc0f.md) | 142 | `result-track:ba4afc0b4522e7532086fc0fc8a4282288dd41d698395cbdbbe2ad7a254aebdb` |
| 11 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-neg--7840587955820e2c7438b5e8.md) | 152 | `result-track:7840587955820e2c7438b5e84129a67dacc2db5e71dc5ea295a6073a8ae8d074` |
| 12 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-sub--efc19098a126a33936f6dc00.md) | 156 | `result-track:efc19098a126a33936f6dc00523edb4d038bef5dc9d0e5bca119779ec6020528` |
| 13 | `abbrev` | [RingHom.toAlgebra'](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ringhom-toalgebra--eedb28bd2b13fae01539b515.md) | 166 | `declaration-track:eedb28bd2b13fae01539b515ec3cae1f07ce8e4dbb40ce6095092b95b332e43d` |
| 14 | `theorem` | [RingHom.smul_toAlgebra'](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ringhom-smul-toalgebra--156ab03a144d41a5256cbb1e.md) | 175 | `result-track:156ab03a144d41a5256cbb1ebb9bf06257c130ff443101f94feca4ff77e82158` |
| 15 | `theorem` | [RingHom.algebraMap_toAlgebra'](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ringhom-algebramap-toalgebra--dc391b394fa07c6f96bc47a3.md) | 181 | `result-track:dc391b394fa07c6f96bc47a34b13a9611a97f8255b039d65bc6ad35f0804708a` |
| 16 | `abbrev` | [RingHom.toAlgebra](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ringhom-toalgebra--2b9f1814511329282d2ae86f.md) | 188 | `declaration-track:2b9f1814511329282d2ae86fade0501cad37e7fe69cda76f853ffa5062b01f29` |
| 17 | `theorem` | [RingHom.smul_toAlgebra](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ringhom-smul-toalgebra--773e0d233a4f1c27adf02960.md) | 191 | `result-track:773e0d233a4f1c27adf0296021900f44bcf9a3f06e36cb7dfe723b2d88e739de` |
| 18 | `theorem` | [RingHom.algebraMap_toAlgebra](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ringhom-algebramap-toalgebra--12652281fc2474851e0e1d2a.md) | 196 | `result-track:12652281fc2474851e0e1d2a3aeab47fe136f4a98f1368c244546a7e96ee77db` |
| 19 | `abbrev` | [ofModule'](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ofmodule--9da2e60f98ddd2cf0fd6a2a1.md) | 209 | `declaration-track:9da2e60f98ddd2cf0fd6a2a10092c54dde9facdf606a847953caa158dbc57859` |
| 20 | `abbrev` | [ofModule](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/ofmodule--bedcde4a22a2a1174554caf3.md) | 226 | `declaration-track:bedcde4a22a2a1174554caf3d3410d318b12b88bf268b0b3706fc120c187df8b` |
| 21 | `theorem` | [algebra_ext](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebra-ext--256fb29dfb56dd7498d05a4e.md) | 241 | `result-track:256fb29dfb56dd7498d05a4e6d43205a63f3502035587e14dd39ff768356c726` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/instance--9e26c072b7d0dcf9fc95234e.md) | 253 | `declaration-track:9e26c072b7d0dcf9fc95234ee211cf081701ce3ccda1a9dec01b839bc125dd0c` |
| 23 | `theorem` | [smul_def](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/smul-def--2e8931d499f4b8dd462eeb6a.md) | 262 | `result-track:2e8931d499f4b8dd462eeb6a8ed91e2a6a116b3ad87af94643465fb7318843e3` |
| 24 | `theorem` | [algebraMap_eq_smul_one](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebramap-eq-smul-one--c52e82bb58b6d9adfb874ae4.md) | 265 | `result-track:c52e82bb58b6d9adfb874ae4c98670fbe491a3c166645e5857772f641ed74c0d` |
| 25 | `theorem` | [algebraMap_eq_smul_one'](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebramap-eq-smul-one--346654ae2e8176a9d6cb3ae2.md) | 270 | `result-track:346654ae2e8176a9d6cb3ae239164dffcda5bd31bc195d1ac23c8bf84798b446` |
| 26 | `theorem` | [commutes](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/commutes--de3e868a75bce40a9c3f71b5.md) | 274 | `result-track:de3e868a75bce40a9c3f71b52232a9e0d6582eb710a97344602acdf42e64f2ac` |
| 27 | `lemma` | [commute_algebraMap_left](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/commute-algebramap-left--18bcd0a8776956f6aadc19ce.md) | 277 | `result-track:18bcd0a8776956f6aadc19ce33af31b7f869114434445009ec19bd903f71e289` |
| 28 | `lemma` | [commute_algebraMap_right](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/commute-algebramap-right--dc3e7624db9761c011292633.md) | 280 | `result-track:dc3e7624db9761c011292633fe921a85b094a7a4ddc675937930a41daabb786c` |
| 29 | `theorem` | [left_comm](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/left-comm--6ab3c092fcb971ad774d1a19.md) | 284 | `result-track:6ab3c092fcb971ad774d1a190bb9f80c2573eecc8dfdaaca6ba2558a2d718306` |
| 30 | `theorem` | [right_comm](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/right-comm--134d1fbb8250e48f3dd25e0c.md) | 289 | `result-track:134d1fbb8250e48f3dd25e0cbb0a5c8d279b768ec1326c5104bfb155ecf862a4` |
| 31 | `instance` | [_root_.IsScalarTower.right](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/root-isscalartower-right--a933dcf81720038942eaec75.md) | 293 | `declaration-track:a933dcf81720038942eaec754ec4305e821b0ff8d46fcbe16c64a7aa97fe5ded` |
| 32 | `theorem` | [_root_.RingHom.smulOneHom_eq_algebraMap](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/root-ringhom-smulonehom-eq-algebramap--5b19e8a290d55da068a251ec.md) | 297 | `result-track:5b19e8a290d55da068a251ecb7a77f91ab0781108b996d05b09839b3173b6421` |
| 33 | `theorem` | [mul_smul_comm](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/mul-smul-comm--6088e53a279a691bcfe5920b.md) | 306 | `result-track:6088e53a279a691bcfe5920bb7265c2a64459a07ecb5aeff303acc1315006362` |
| 34 | `theorem` | [smul_mul_assoc](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/smul-mul-assoc--410159a3c864fde939c70078.md) | 312 | `result-track:410159a3c864fde939c7007804326af7a9dcdc7e2b279820897971d560e04e19` |
| 35 | `theorem` | [_root_.smul_algebraMap](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/root-smul-algebramap--cfc0460582c9a64edc90673e.md) | 316 | `result-track:cfc0460582c9a64edc90673e498764ace4b4c0df53ba0e318c09ff89aa7eba2f` |
| 36 | `abbrev` | [compHom](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/comphom--9af86cc9d9d1c7fc04b65f59.md) | 329 | `declaration-track:9af86cc9d9d1c7fc04b65f592b44bc520a6f6e66fb95e111b6a000c31a47b1ce` |
| 37 | `theorem` | [compHom_smul_def](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/comphom-smul-def--0c8cbb848e6b3729c72817af.md) | 335 | `result-track:0c8cbb848e6b3729c72817af750c5854c6b864324e7387fbde9918db2f488cf4` |
| 38 | `theorem` | [compHom_algebraMap_eq](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/comphom-algebramap-eq--e7e91313495950a60fcb0581.md) | 339 | `result-track:e7e91313495950a60fcb0581bbd51bf06247a3d8083c3b1f61a1fcba975c58e6` |
| 39 | `theorem` | [compHom_algebraMap_apply](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/comphom-algebramap-apply--4a16144739a65550d5429c0d.md) | 343 | `result-track:4a16144739a65550d5429c0dda4d0bda8a8100595973d37dbe8cc5619a792104` |
| 40 | `def` | [linearMap](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/linearmap--6787d517bb2ceb43fa921f94.md) | 355 | `declaration-track:6787d517bb2ceb43fa921f94303831bfb607308de79b0e58e900221b5ff54af8` |
| 41 | `theorem` | [linearMap_apply](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/linearmap-apply--a96c30b573e48bed3c325f0d.md) | 359 | `result-track:a96c30b573e48bed3c325f0d5ada52b2a6b03603b179e7f07ca983fc15083329` |
| 42 | `theorem` | [coe_linearMap](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/coe-linearmap--f78b0f9407e0597d13e80732.md) | 362 | `result-track:f78b0f9407e0597d13e80732b5ae85da21fdf537eba23d75578b98f1c52f9760` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/instance--e50ee74dbc16dc71ef7fb365.md) | 366 | `declaration-track:e50ee74dbc16dc71ef7fb365f26d8a4b6151e535f141dadbc0307746cb3293b0` |
| 44 | `theorem` | [map_eq_id](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/map-eq-id--90cfe4d08ef9f6588a9bd770.md) | 378 | `result-track:90cfe4d08ef9f6588a9bd7704de0e7c445275dfd025ec3e6b57df04d03b17c10` |
| 45 | `theorem` | [map_eq_self](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/map-eq-self--0b20041613ce6226047df552.md) | 381 | `result-track:0b20041613ce6226047df552ba957a34c0f42a71316f127dc7592245c20b6cd8` |
| 46 | `theorem` | [smul_eq_mul](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/smul-eq-mul--9ec62498e8560e63f139025d.md) | 385 | `result-track:9ec62498e8560e63f139025d7aa2c1d0b0bce97e5135d5700bf7b0a14a462ee7` |
| 47 | `theorem` | [algebraMap.coe_smul](../../../../mathematics/Algebra/Defs/Variantff772779b0ff6da51c3a4929a0ea515cbefdad3af7760ec8c989aa48203d1010.lean/declarations/algebramap-coe-smul--872f0c1623c9ea70ff309519.md) | 395 | `result-track:872f0c1623c9ea70ff3095191dec45ca51f5a4a887e596c42b3dfa05faaac74b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
