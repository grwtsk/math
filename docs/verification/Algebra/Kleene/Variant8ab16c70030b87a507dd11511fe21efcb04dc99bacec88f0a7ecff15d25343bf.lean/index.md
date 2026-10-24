# Verification target: GRWTSK.Algebra.Kleene.Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbad1201d0600c33e49f3fd217ba51f91472ea38",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbad1201d0600c33e49f3fd217ba51f91472ea38`.

Source path: `GRWTSK/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IdemSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/idemsemiring--233837f597fcd7b9bff1795d.md) | 69 | `declaration-track:233837f597fcd7b9bff1795d9a1a88e66b793456dc3173bb6c2ed5c203ac495e` |
| 2 | `class` | [IdemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/idemcommsemiring--edff30aa10ed8f7990af0eff.md) | 80 | `declaration-track:edff30aa10ed8f7990af0eff0abc2570d4ec2f686bc0ce802cece04ab3d1256f` |
| 3 | `class` | [KStar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar--3c126f839024ab50514fd38c.md) | 84 | `declaration-track:3c126f839024ab50514fd38ced4e2aaec16d45d7df99e0dd0b8b7395c5e8eb14` |
| 4 | `class` | [KleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kleenealgebra--e0cbf6cc3469dd56c34c8c42.md) | 99 | `declaration-track:e0cbf6cc3469dd56c34c8c42e49f15f1a3e902ca50255b60dcdaf6eda8da9aec` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--3ba213a3f026203e3d4feb30.md) | 108 | `declaration-track:3ba213a3f026203e3d4feb302ce3d0ace7d9094178f79fd36a2aaf0995a5f428` |
| 6 | `def` | [IdemSemiring.ofSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/idemsemiring-ofsemiring--1e1cb2d2ae6442d57f4ef82d.md) | 115 | `declaration-track:1e1cb2d2ae6442d57f4ef82de0235f1e2fbb316eb7354b8c493255a9a3f42b75` |
| 7 | `theorem` | [add_eq_sup](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/add-eq-sup--d67ac160403a2004d1bf4d65.md) | 141 | `result-track:d67ac160403a2004d1bf4d654646efde95b9107bb7f9378c2bc3faad8837bbb0` |
| 8 | `theorem` | [add_idem](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/add-idem--991ec915bb029fa830b0a4d4.md) | 149 | `result-track:991ec915bb029fa830b0a4d4ef39d2a5a5b40fd11d440ef6339f981324b0f53d` |
| 9 | `theorem` | [nsmul_eq_self](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/nsmul-eq-self--384c59fc1c88d093fb915a26.md) | 152 | `result-track:384c59fc1c88d093fb915a261bae563736264653861ba6b76171adf10e3a5508` |
| 10 | `theorem` | [add_eq_left_iff_le](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/add-eq-left-iff-le--774ef051d85db76d62fdbaa5.md) | 158 | `result-track:774ef051d85db76d62fdbaa52ea391f861b8c0794abec781b6d136e295f80102` |
| 11 | `theorem` | [add_eq_right_iff_le](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/add-eq-right-iff-le--c4d2f874829d29d8d21cc409.md) | 161 | `result-track:c4d2f874829d29d8d21cc4094fb596cc69841656ed19d36eb4cca1638ffb5213` |
| 12 | `theorem` | [add_le_iff](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/add-le-iff--01603dc5c94195ce45fb0910.md) | 170 | `result-track:01603dc5c94195ce45fb09103eb4239a39baf531a03161426dfa5ed9ced7145f` |
| 13 | `theorem` | [add_le](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/add-le--4ce39a7bff146e227856fd4e.md) | 173 | `result-track:4ce39a7bff146e227856fd4e33e15bdeeb52534f410534f031724e16f2940803` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--892bd6ecaaf373248b0b10e7.md) | 178 | `declaration-track:892bd6ecaaf373248b0b10e724c504fd3b9c533c23c3b5bfd161c187dc9c21d6` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--9babcd48d5b02a77baad4ef4.md) | 189 | `declaration-track:9babcd48d5b02a77baad4ef4310d338115501c9e580bff433054c94501aaf781` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--21408989ff3903815ec6051f.md) | 195 | `declaration-track:21408989ff3903815ec6051ff87318733f0b188e54d7a9aaa3505ec44123f855` |
| 17 | `theorem` | [one_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/one-le-kstar--22fc28c0032f4624db8a74ec.md) | 207 | `result-track:22fc28c0032f4624db8a74ec8cb8e77d224d9aa86c36a052fc45f3d7bdd76bc2` |
| 18 | `theorem` | [mul_kstar_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/mul-kstar-le-kstar--95de7c3a7238ac98a242157c.md) | 211 | `result-track:95de7c3a7238ac98a242157cf9d67cdb57141cbbd16c5a2e0c1d327f1b498427` |
| 19 | `theorem` | [kstar_mul_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-mul-le-kstar--a61758915023534d27159e92.md) | 215 | `result-track:a61758915023534d27159e9240cf576a7e29fa4711f681145db478816140c561` |
| 20 | `theorem` | [mul_kstar_le_self](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/mul-kstar-le-self--2653a9ed6000b7e8d7f6849d.md) | 219 | `result-track:2653a9ed6000b7e8d7f6849de650e63da88f7b0e1d758f6201e884b527afe6b3` |
| 21 | `theorem` | [kstar_mul_le_self](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-mul-le-self--c13daa75098aeb6e86e63dc8.md) | 223 | `result-track:c13daa75098aeb6e86e63dc8d693ef68a12d82bf7de078ca8342fb818d46116a` |
| 22 | `theorem` | [mul_kstar_le](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/mul-kstar-le--c42fc75bf3047a9b68375b08.md) | 227 | `result-track:c42fc75bf3047a9b68375b0828832338d1c88634e6e7581b77a2dd9430fc44e1` |
| 23 | `theorem` | [kstar_mul_le](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-mul-le--d69fa87840495976b83710d4.md) | 231 | `result-track:d69fa87840495976b83710d45f9e48144c0fda6d7a1c8b8d505f4ee15279fe5e` |
| 24 | `theorem` | [kstar_le_of_mul_le_left](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-le-of-mul-le-left--52295c0c955abd4fffd70a83.md) | 235 | `result-track:52295c0c955abd4fffd70a83187cb32e3013d544cd62d3cf36e2444123982a13` |
| 25 | `theorem` | [kstar_le_of_mul_le_right](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-le-of-mul-le-right--39f927803c2d2f61c2fc2aa0.md) | 239 | `result-track:39f927803c2d2f61c2fc2aa0a5ab6b9795ffe95b6a87d4a89f783ce7398d262f` |
| 26 | `theorem` | [le_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/le-kstar--0f125f7b4088509c839f826f.md) | 244 | `result-track:0f125f7b4088509c839f826f74299f665bd05cf0a70720e7f6f6f2d6d5770daf` |
| 27 | `theorem` | [kstar_mono](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-mono--e4c8d14717a667fe0d4a74de.md) | 249 | `result-track:e4c8d14717a667fe0d4a74de7b09e7e831c1b1dc7b8c4eea502a06a05980c0f1` |
| 28 | `theorem` | [kstar_eq_one](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-eq-one--03a44f3063d8f21bfb2cc2d5.md) | 255 | `result-track:03a44f3063d8f21bfb2cc2d5ad86ab1b04105ff10a5259ecd75c21ee4c9f0507` |
| 29 | `theorem` | [kstar_zero](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-zero--1e0b034d2dbdc12106b9f803.md) | 261 | `result-track:1e0b034d2dbdc12106b9f803db4602806086fb3a04b8b678cdf3f417702c0cb5` |
| 30 | `theorem` | [kstar_one](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-one--e1795bdabd72d3e1d510f630.md) | 266 | `result-track:e1795bdabd72d3e1d510f630c458e78f7fe7b417d1a93fcbd01dc789dee07f2f` |
| 31 | `theorem` | [kstar_mul_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-mul-kstar--d70e7d61053daa1cbdb1d4b5.md) | 271 | `result-track:d70e7d61053daa1cbdb1d4b541a9229ecf097556ea97c06ad138179e9545fffb` |
| 32 | `theorem` | [kstar_eq_self](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-eq-self--a76ef32261f9a85887f8a8dc.md) | 276 | `result-track:a76ef32261f9a85887f8a8dce865facc5bf3a10322a9722fe74a28ffccad1747` |
| 33 | `theorem` | [kstar_idem](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-idem--26ff7a73f31340ff0c25bd33.md) | 282 | `result-track:26ff7a73f31340ff0c25bd33baa13279ffa0e6afe3cceb19ae765cabb27ba97a` |
| 34 | `theorem` | [pow_le_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/pow-le-kstar--9b7327532e1671bea9e51105.md) | 287 | `result-track:9b7327532e1671bea9e511056c16bb9b2a81ae77157c3111c65cd2541ce02ed1` |
| 35 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instidemsemiring--dee42d43fac91bec9bc32dc7.md) | 298 | `declaration-track:dee42d43fac91bec9bc32dc7c2d9ca36e84861618590614e486f8af32c1c99d1` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--04afabb456988710d40c10c4.md) | 302 | `declaration-track:04afabb456988710d40c10c4565b4191ed5684b016aee2a5f393af696012901a` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--40f1869bd2837d316d74c96e.md) | 307 | `declaration-track:40f1869bd2837d316d74c96e3821ee498b1b6c4a3568a7f0268928da178d5c3f` |
| 38 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-def--4cd902a28b9cab2d8911dea3.md) | 316 | `result-track:4cd902a28b9cab2d8911dea30a11a2f9a8e7cc72cd740d247b4e84ce2b2fe4c9` |
| 39 | `theorem` | [fst_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/fst-kstar--bb03cc3489bfd201e1f7b195.md) | 321 | `result-track:bb03cc3489bfd201e1f7b195eb3c96e4702ed41695c4781fd83836f2b3aef639` |
| 40 | `theorem` | [snd_kstar](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/snd-kstar--9c00d85716f79259a78df00f.md) | 326 | `result-track:9c00d85716f79259a78df00f14e576771aaa5588113f326f58bec3c4dd67d4f6` |
| 41 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instidemsemiring--a37d37c180943b639cb1ef08.md) | 334 | `declaration-track:a37d37c180943b639cb1ef08b05e27605a106868f5151faa3ba11d70a730f522` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--525759510a940617b6ef875b.md) | 338 | `declaration-track:525759510a940617b6ef875b327683cbaa8f4cea966b9b58f62b1f9d0ec5c38e` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/instance--0ca6785107fed02e078f4b91.md) | 343 | `declaration-track:0ca6785107fed02e078f4b910870e655dffb0906dae4977d277d7f22f18eb0a1` |
| 44 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-def--173590fb791e567c7f76224c.md) | 352 | `result-track:173590fb791e567c7f76224c14dc3062b8deef9f8f368cd49e18aec404545403` |
| 45 | `theorem` | [kstar_apply](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kstar-apply--d5272da7903693b1685ef308.md) | 357 | `result-track:d5272da7903693b1685ef3081ca4498bf56db8673c4e4bbfa80c1e39320d12ca` |
| 46 | `def` | [idemSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/idemsemiring--fc463cc3c418791d42f11cf6.md) | 368 | `declaration-track:fc463cc3c418791d42f11cf6e1ff91d347848b7ad2785bb61cd068ee6fc6dc3b` |
| 47 | `def` | [idemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/idemcommsemiring--9a12520c61e15324a9b16650.md) | 384 | `declaration-track:9a12520c61e15324a9b166508ba3d8b8082263ca6f160459a745936a16fecf86` |
| 48 | `def` | [kleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant8ab16c70030b87a507dd11511fe21efcb04dc99bacec88f0a7ecff15d25343bf.lean/declarations/kleenealgebra--8ac9f246e386468f9994f870.md) | 397 | `declaration-track:8ac9f246e386468f9994f870b07b07e104bdaea84d25a505ddee152cc77ca191` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
