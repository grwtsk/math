# Verification target: GRWTSK.Topology.AlgebraicTopology.Resolution.Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7836ab35befa89fafebc496c65ad11911016cdeb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7836ab35befa89fafebc496c65ad11911016cdeb`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Resolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftFZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/liftfzero--bb1e7ee1e9454ada5fe66691.md) | 50 | `declaration-track:bb1e7ee1e9454ada5fe6669115b9e936350158bf439e11d2809e0cc8c9e8e1d3` |
| 2 | `lemma` | [exact₀](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/exact--0266e7cef601f9538bd8f093.md) | 60 | `result-track:0266e7cef601f9538bd8f093cb5baff4b3010fa533c99861ce79a529c1435a35` |
| 3 | `def` | [liftFOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/liftfone--654ab8f221a0dc2ce6cbed1f.md) | 65 | `declaration-track:654ab8f221a0dc2ce6cbed1f7316699bd6ad9da04353147ef0589c166af98902` |
| 4 | `theorem` | [liftFOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/liftfone-zero-comm--edb5d4d212b6379314308eaf.md) | 70 | `result-track:edb5d4d212b6379314308eaff6a6068d8a3ed90a9469cbc6bd1cb39fa8db1eb2` |
| 5 | `def` | [liftFSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/liftfsucc--8cafe25a51b07b1067d07fbd.md) | 76 | `declaration-track:8cafe25a51b07b1067d07fbdff60108e36cc9dbe02271f7150cd2beea4bc553a` |
| 6 | `def` | [lift](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lift--a3d4968331b26bb50e9c877f.md) | 86 | `declaration-track:a3d4968331b26bb50e9c877facdd87f92625aa25f85c0a77026ea6ce910e1bb9` |
| 7 | `theorem` | [lift_commutes](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lift-commutes--b8a1c980b37a2990379bb9ab.md) | 93 | `result-track:b8a1c980b37a2990379bb9abe10c7a4f566dc0e4e74b16a2db9a9f4b122b6a34` |
| 8 | `lemma` | [lift_commutes_zero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lift-commutes-zero--5aab976fc8f2ea2f98bd4369.md) | 99 | `result-track:5aab976fc8f2ea2f98bd436959a402e74d87bbfc09b0c6f19dcaa221d7341efa` |
| 9 | `def` | [liftHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzerozero--00e6a68958f7a2f2cfc48ff7.md) | 105 | `declaration-track:00e6a68958f7a2f2cfc48ff7e7e182655a5abdf16d1232aeab523b7321d10ace` |
| 10 | `lemma` | [liftHomotopyZeroZero_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzerozero-comp--222ae6af6057a59fc6ec165d.md) | 110 | `result-track:222ae6af6057a59fc6ec165df21f097ccc30bace6e065e953d1814945f908c8a` |
| 11 | `def` | [liftHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzeroone--2983663eeae95bdadba66267.md) | 116 | `declaration-track:2983663eeae95bdadba6626724f6224b22fb7702f253bc507a15ebe65faa450a` |
| 12 | `lemma` | [liftHomotopyZeroOne_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzeroone-comp--d1a8f4784e57d233b14ae9fe.md) | 124 | `result-track:d1a8f4784e57d233b14ae9fe4a0a4ca1eaac051c858fb6d0589e1d7a50b334d2` |
| 13 | `def` | [liftHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzerosucc--bf13fce1972138d01f20df5c.md) | 131 | `declaration-track:bf13fce1972138d01f20df5c35c1d87ba7cb1c935b4205dda2e944d350350950` |
| 14 | `lemma` | [liftHomotopyZeroSucc_comp](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzerosucc-comp--63266855a5495673ea84b106.md) | 139 | `result-track:63266855a5495673ea84b106f9d0486d7193bed2f4d385a75111fef441c60b9a` |
| 15 | `def` | [liftHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopyzero--9a29a20ae69c24682d040e61.md) | 148 | `declaration-track:9a29a20ae69c24682d040e61db33478c6175b20760d6078cba7a53f18290fce3` |
| 16 | `def` | [liftHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/lifthomotopy--2e1b4676db8579d5890a9271.md) | 155 | `declaration-track:2e1b4676db8579d5890a9271a47fc0e3226f01a0d8f21c236941e43a562f8d38` |
| 17 | `def` | [liftIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/liftidhomotopy--553fb9055955b56e7b8cd72b.md) | 161 | `declaration-track:553fb9055955b56e7b8cd72b3c31f3b87a19592820271386dbb3cb5d394ba21d` |
| 18 | `def` | [liftCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/liftcomphomotopy--2043a8f69b1639e9b7efe40a.md) | 166 | `declaration-track:2043a8f69b1639e9b7efe40a97d6b7125a78ba3f89fe166cb12542ff03d9ef30` |
| 19 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/homotopyequiv--782a54e3edadae8d2930736a.md) | 173 | `declaration-track:782a54e3edadae8d2930736ae355b58f10c39363d36d42b44e263ce4f625c2d7` |
| 20 | `theorem` | [homotopyEquiv_hom_π](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/homotopyequiv-hom--e2ce77ebdc9c257b2f45f90c.md) | 183 | `result-track:e2ce77ebdc9c257b2f45f90c35ae806361b5710771e5e294ac46c03002098026` |
| 21 | `theorem` | [homotopyEquiv_inv_π](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/homotopyequiv-inv--c6f93569b26080010a532c32.md) | 187 | `result-track:c6f93569b26080010a532c3281094cbd3ac16fdf0c26916e2a19d6757a5b6b29` |
| 22 | `abbrev` | [projectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/projectiveresolution--4ce8baf710b2e71ed478cf0c.md) | 195 | `declaration-track:4ce8baf710b2e71ed478cf0cfda116e0f63b3aeef4af8566bb006d12c6799e68` |
| 23 | `def` | [projectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/projectiveresolutions--2be8f14a1b3324840e665775.md) | 210 | `declaration-track:2be8f14a1b3324840e665775f667401b3778df57af319fcc9651b6896ad62d97` |
| 24 | `def` | [ProjectiveResolution.iso](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/projectiveresolution-iso--32197454f721f0aae4c3e198.md) | 226 | `declaration-track:32197454f721f0aae4c3e1989784939c1d892e3d3e0f71ce4ff8997bd69e0eec` |
| 25 | `lemma` | [ProjectiveResolution.iso_inv_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/projectiveresolution-iso-inv-naturality--17c4e4cbf3c545d9d0eb18de.md) | 232 | `result-track:17c4e4cbf3c545d9d0eb18defe01c0f766364ff2c08f0adefe23ed4c797fccf1` |
| 26 | `lemma` | [ProjectiveResolution.iso_hom_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/projectiveresolution-iso-hom-naturality--f4a3682a367bbe84265d8fb1.md) | 243 | `result-track:f4a3682a367bbe84265d8fb1042a3d81e2c1f4a45bcf62dbd8f12f8f942fb472` |
| 27 | `theorem` | [exact_d_f](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/exact-d-f--e97ef1f526ba7249a7bb16d6.md) | 256 | `result-track:e97ef1f526ba7249a7bb16d6adbe5c2da585bc9b6d627d8fc100bd9876ddecde` |
| 28 | `def` | [ofComplex](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/ofcomplex--1e3c3d4a93c3b61af4d13aa3.md) | 287 | `declaration-track:1e3c3d4a93c3b61af4d13aa39db42e9158bd46489f6a7f86c42a077dd4decd09` |
| 29 | `lemma` | [ofComplex_d_1_0](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/ofcomplex-d-1-0--27cc3dc6b97bd8d38609a3b3.md) | 291 | `result-track:27cc3dc6b97bd8d38609a3b3361f5e81b1cfdfcb85a2d006305b4a75a41fd7b4` |
| 30 | `lemma` | [ofComplex_exactAt_succ](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/ofcomplex-exactat-succ--6f85b12fa31c00a71c90d799.md) | 295 | `result-track:6f85b12fa31c00a71c90d79948cb1fa75ef75205dbb11768343c2985842557e1` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/instance--72400ae7088157a7bc706aca.md) | 306 | `declaration-track:72400ae7088157a7bc706aca376de0cab8f923333133ce92341ccdf9d00afa46` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/instance--dd80792fa6415da78626d95a.md) | 329 | `declaration-track:dd80792fa6415da78626d95a865690ffd382fd90fa19213308a5ca55255c2128` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/declarations/instance--4aefa3424824525c2fab2e07.md) | 331 | `declaration-track:4aefa3424824525c2fab2e071de57a965bd84f409de981133b06e04ab1ab9078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
