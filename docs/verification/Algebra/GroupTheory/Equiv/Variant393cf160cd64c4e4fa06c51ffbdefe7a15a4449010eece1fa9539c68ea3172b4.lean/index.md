# Verification target: GRWTSK.Algebra.GroupTheory.Equiv.Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f5a8f7a0ef06b43c4d9a79ea0155aa84c9a5f1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f5a8f7a0ef06b43c4d9a79ea0155aa84c9a5f1`.

Source path: `GRWTSK/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/tounits--cfb8c804c493771557a9c729.md) | 20 | `declaration-track:cfb8c804c493771557a9c72949babdab3811bf50a0d8627d974e68100e3b069d` |
| 2 | `lemma` | [toUnits_val_apply](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/tounits-val-apply--ed81fef7a768a3745fad1b28.md) | 28 | `result-track:ed81fef7a768a3745fad1b28080cc4419ccc29a3e010b20347ec032fb14ff5d0` |
| 3 | `def` | [mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mapequiv--08fb89de99171a3dbeb4628f.md) | 37 | `declaration-track:08fb89de99171a3dbeb4628fadd177d4ef09eee1d482378fa7af2a82d3b573e2` |
| 4 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mapequiv-symm--d685b591d4e7d6bb3fd7e549.md) | 44 | `result-track:d685b591d4e7d6bb3fd7e5494f7c6801d19c4d9329a1d5f18dc582c7be6a7954` |
| 5 | `theorem` | [coe_mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/coe-mapequiv--1eb1fdfafa892262980b3f35.md) | 48 | `result-track:1eb1fdfafa892262980b3f350302da323d343df9f72db2bbde6dd4a4fdfab8f4` |
| 6 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulleft--a19d6ff3d2f6c0e1efb791e8.md) | 54 | `declaration-track:a19d6ff3d2f6c0e1efb791e807344d9885ec7af9ad02f40ae22af0235135fe6e` |
| 7 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulleft-symm--ded9954aca4dc583848eb87d.md) | 61 | `result-track:ded9954aca4dc583848eb87d68e8c10b0bc7d9e17ee91330d2761104aabe6702` |
| 8 | `theorem` | [mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulleft-bijective--07c256e8c7356f0dd22511ba.md) | 65 | `result-track:07c256e8c7356f0dd22511ba86db687bebba7c2a135ab4e1aea86a4f70f53004` |
| 9 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulright--456bc83f88be9d8b6a221ad4.md) | 71 | `declaration-track:456bc83f88be9d8b6a221ad43a7a388a998aba3c5f9997e51888cff6084ca04d` |
| 10 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulright-symm--ff9bdc2f0f0c1f53a2336c09.md) | 78 | `result-track:ff9bdc2f0f0c1f53a2336c09669a090b1ce0a0caaf02d00b33d599931d07a77e` |
| 11 | `theorem` | [mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulright-bijective--1e8faf9894a79f0d4f93d72b.md) | 82 | `result-track:1e8faf9894a79f0d4f93d72ba2592ae22216891308f3770d7bfe7737b6a7cf24` |
| 12 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulleft--d9dbd1519f0d919ef2f8e24a.md) | 95 | `declaration-track:d9dbd1519f0d919ef2f8e24a3c092cd9e9b913bdde7e072fe58336193f3037d0` |
| 13 | `theorem` | [coe_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/coe-mulleft--30487d330ed371bf9a1505d7.md) | 99 | `result-track:30487d330ed371bf9a1505d771326e253b8da0ed36c08d1fcd35968cb5f3fc8f` |
| 14 | `theorem` | [mulLeft_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulleft-symm-apply--3a90d95b186e8090263ec22f.md) | 104 | `result-track:3a90d95b186e8090263ec22fe402f67a9e5fc07e619fd52d3882ff13ca267877` |
| 15 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulleft-symm--549497b760e15dfcea6d791b.md) | 108 | `result-track:549497b760e15dfcea6d791b8a4cc0790934c0895bcb3190d43a10837e337f1e` |
| 16 | `theorem` | [_root_.Group.mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/root-group-mulleft-bijective--bb3ad83ac414ad057e171f51.md) | 112 | `result-track:bb3ad83ac414ad057e171f51189864353fff88ab78bb725b0fe61bd0e3366296` |
| 17 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulright--80790a95e873359e9c573536.md) | 117 | `declaration-track:80790a95e873359e9c5735360f0549f2019b1449ac229cac76ee1593878bde62` |
| 18 | `theorem` | [coe_mulRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/coe-mulright--4a336a19c9ec2f41a64d0322.md) | 121 | `result-track:4a336a19c9ec2f41a64d0322ed9dddfe68b713d4d7e18eb227c600d8ce108260` |
| 19 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulright-symm--c0eddffecc3ac48e411658d0.md) | 125 | `result-track:c0eddffecc3ac48e411658d0ed2b7b0b3c38232897def0fe8e026a6635f2837a` |
| 20 | `theorem` | [mulRight_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulright-symm-apply--5d58c89501596c6bb38b6d7a.md) | 130 | `result-track:5d58c89501596c6bb38b6d7a830eefe6f85c6e07f010b75ab22e80d46a248643` |
| 21 | `theorem` | [_root_.Group.mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/root-group-mulright-bijective--655f8b409b1fb79eee72c7da.md) | 134 | `result-track:655f8b409b1fb79eee72c7dacdcf41379a3ccab11c8a9733bdc25f75e9b8f66b` |
| 22 | `def` | [divLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/divleft--05fb8b9d16225c134430a2e4.md) | 139 | `declaration-track:05fb8b9d16225c134430a2e4fca30a49ced62bdb2eebccb057e9add3fb365967` |
| 23 | `theorem` | [divLeft_eq_inv_trans_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/divleft-eq-inv-trans-mulleft--0029f230fe2698486d321ad7.md) | 146 | `result-track:0029f230fe2698486d321ad7f17da2f5fe78a908d6882c89bd95c625e908ad9a` |
| 24 | `def` | [divRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/divright--91f4d7b9329dfd5e70a30225.md) | 152 | `declaration-track:91f4d7b9329dfd5e70a302257f1cbfdb5acdeef062c9ecce83e30493551d3c8b` |
| 25 | `theorem` | [divRight_eq_mulRight_inv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/divright-eq-mulright-inv--a2c7292f0def47bfd56a6ae9.md) | 159 | `result-track:a2c7292f0def47bfd56a6ae9e7254cf9ab015ca6c3295b01d5b5b91ac74cfe7c` |
| 26 | `def` | [unitsEquivProdSubtype](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/unitsequivprodsubtype--fef40baae350f1ea81794fe4.md) | 169 | `declaration-track:fef40baae350f1ea81794fe46bdfaeeb066da6d8f4efc10c62213fb8e9f2b8e7` |
| 27 | `def` | [MulEquiv.inv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulequiv-inv--9fce2bdeb18fe6356998f657.md) | 179 | `declaration-track:9fce2bdeb18fe6356998f6574de2802d22d84c6151bbae7bb4500bb94d923f0b` |
| 28 | `theorem` | [MulEquiv.inv_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulequiv-inv-symm--05a7e092e568161710dca4a0.md) | 183 | `result-track:05a7e092e568161710dca4a0b11d1fd9403037a8567fd0533bf2f0e4fb40c3bd` |
| 29 | `lemma` | [MulEquiv.isUnit_map](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/mulequiv-isunit-map--ebab210406472405cd2a90f3.md) | 192 | `result-track:ebab210406472405cd2a90f32ee57bc67277426b86690f03485c0273f7f3abed` |
| 30 | `theorem` | [isLocalHom_equiv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.lean/declarations/islocalhom-equiv--66182572ec517cc2393aa19e.md) | 198 | `result-track:66182572ec517cc2393aa19e0a3c7909d3a4490ddbd6edb2a65a74e86bf63f94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
