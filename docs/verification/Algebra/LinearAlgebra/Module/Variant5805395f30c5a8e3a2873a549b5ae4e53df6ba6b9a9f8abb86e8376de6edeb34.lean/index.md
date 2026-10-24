# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dcc0342cb6db8817a4fa3fc7e0959646d0e3a5b",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dcc0342cb6db8817a4fa3fc7e0959646d0e3a5b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SMul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Cardinality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Invertible` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--c02efce34d87fe2a106a5db0.md) | 53 | `declaration-track:c02efce34d87fe2a106a5db054c46216f7967a3d6c940bd4e3bbaac77b4c5951` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--f2d9cbc17650f7717527e34d.md) | 56 | `declaration-track:f2d9cbc17650f7717527e34d1a38406a64186db733da34011c79c290210f3f3d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--c25ee15479e53b37e14ff752.md) | 59 | `declaration-track:c25ee15479e53b37e14ff75288add7435b8be7e52aa7ea9857913ae4bcb306a4` |
| 4 | `instance` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/mulaction--bf801883e774606bbedbe3f0.md) | 62 | `declaration-track:bf801883e774606bbedbe3f0f965b99f1180a9bd51ef461cac279756363739b3` |
| 5 | `instance` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/distribsmul--4085165821ac1e17d5b012f7.md) | 66 | `declaration-track:4085165821ac1e17d5b012f7e8d5a8d7e896c29521232d95f60f7717c03c5b1c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--61c358e270093a43d5fcdaa7.md) | 70 | `declaration-track:61c358e270093a43d5fcdaa7a8dfed29fd63640e89ed4641fc4f28f11e40e2f8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--36e03795be04df14c093d4f5.md) | 73 | `declaration-track:36e03795be04df14c093d4f53cad1e789c118510e3c37f60581db9024cafedc2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--1e8d66d20aba8cfb3d22eec4.md) | 77 | `declaration-track:1e8d66d20aba8cfb3d22eec436ab54276191f783db56e1105cb3a69bcab624ac` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--393d803333e002c8dbe159b6.md) | 83 | `declaration-track:393d803333e002c8dbe159b6df6720d5c2984af3e07d9ff1212947f10a9c1dda` |
| 10 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/coe-algebramap--3472812e92af146e6b2df1ef.md) | 87 | `result-track:3472812e92af146e6b2df1efd463f3661f8bbb619ca1cf528d7b3577bde687b4` |
| 11 | `theorem` | [_root_.AlgHom.map_coe_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/root-alghom-map-coe-real-complex--31d07a7cc84b083dd27d0f5c.md) | 98 | `result-track:31d07a7cc84b083dd27d0f5c8dbd511bb0d8dad0def1abbf1afb09196c670d76` |
| 12 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/alghom-ext--5a34487ab11899e15d147a15.md) | 104 | `result-track:5a34487ab11899e15d147a15983268d73705308ad708b9e9d4e0579d0bd9711a` |
| 13 | `def` | [basisOneI](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/basisonei--095964585b6dd1344c2643e8.md) | 114 | `declaration-track:095964585b6dd1344c2643e86abb4c32dff79923ce3e8f3763568bd229bc1174` |
| 14 | `theorem` | [coe_basisOneI_repr](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/coe-basisonei-repr--c7f91dd46c9ac973c296937d.md) | 128 | `result-track:c7f91dd46c9ac973c296937da5d85c4fca7277f7fef3b5917f1776017050269a` |
| 15 | `theorem` | [coe_basisOneI](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/coe-basisonei--f66151d52cdf390be453b9e5.md) | 134 | `result-track:f66151d52cdf390be453b9e560401482247a8d7464cd01fd8c076ae09a930e68` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--5a7ae82ded4e7e771615a7d5.md) | 146 | `declaration-track:5a7ae82ded4e7e771615a7d503623fa1ff204458c9a203458fac49ee1b0069c4` |
| 17 | `theorem` | [finrank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/finrank-real-complex--0109f04027a57b057df87ef7.md) | 150 | `result-track:0109f04027a57b057df87ef7bda6ebea89c40c2a478c63fe42f79fb13470a13e` |
| 18 | `theorem` | [rank_real_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/rank-real-complex--4acff4c97e1067f907a6eaeb.md) | 155 | `result-track:4acff4c97e1067f907a6eaeb25cafd5dae10c6ca1619bb52e94b7ae3a5c68beb` |
| 19 | `theorem` | [rank_real_complex'.](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/rank-real-complex--551b69e4b5e3d0c7725815c9.md) | 158 | `result-track:551b69e4b5e3d0c7725815c9a3a474e2a94844672b98b9fd5b82228d8debcd64` |
| 20 | `theorem` | [finrank_real_complex_fact](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/finrank-real-complex-fact--a3c30b511a2af44b9cb8542d.md) | 164 | `result-track:a3c30b511a2af44b9cb8542dfaf16937adb1ad53686c843952910089ff1794d0` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--5732ac09c816c02659849cbe.md) | 172 | `declaration-track:5732ac09c816c02659849cbeecf38534600d63ae2a9bb0c21396079890857a10` |
| 22 | `instance` | [Module.real_complex_tower](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/module-real-complex-tower--e34df058874d51182fe750d3.md) | 177 | `declaration-track:e34df058874d51182fe750d3b6f4d1e512a54cf40298d6f620dbf05e9be8dd9d` |
| 23 | `theorem` | [Complex.coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/complex-coe-smul--861c871128cc31bef8093510.md) | 183 | `result-track:861c871128cc31bef8093510e14b91e3831f160bd809812e9868eedf9301f8f5` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--d879315a10c3b6152e21bff5.md) | 190 | `declaration-track:d879315a10c3b6152e21bff5864b3711ce9d1d14f1eb304d4840348e8c89c3d3` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--03fa6ff2b2c53288a7fe06d2.md) | 195 | `declaration-track:03fa6ff2b2c53288a7fe06d2dcd6d9a7a45d8781efc65f732b21864a27492cec` |
| 26 | `theorem` | [rank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/rank-real-of-complex--b358f734311a6d1f6d260616.md) | 200 | `result-track:b358f734311a6d1f6d26061654760ef59c7f1efc2feab46c03aa6cac89e83f95` |
| 27 | `theorem` | [finrank_real_of_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/finrank-real-of-complex--be4c4a7e13ba0110423eba45.md) | 207 | `result-track:be4c4a7e13ba0110423eba45e087adea5cbc4e69f1335dfc424fe9adc1d7f47c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/instance--bda58aad4f881c5843bd72d4.md) | 212 | `declaration-track:bda58aad4f881c5843bd72d467518a5c7ed92086fd33c735d8a54e6e0cb5d41f` |
| 29 | `def` | [reLm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/relm--1779cbb155ec52e9ed9cee6f.md) | 222 | `declaration-track:1779cbb155ec52e9ed9cee6fa06bf312dca195a7e0ce8c95a184be3d07fa15ce` |
| 30 | `theorem` | [reLm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/relm-coe--7dd6f52dbbf2f51a565ba572.md) | 229 | `result-track:7dd6f52dbbf2f51a565ba572d51a38220a2b2378bc660817485140b67a5705f6` |
| 31 | `def` | [imLm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/imlm--be83fbe2d346c05e7d19fc1f.md) | 234 | `declaration-track:be83fbe2d346c05e7d19fc1f0b1d5b7002035331c550a41546a25edecb4d97a0` |
| 32 | `theorem` | [imLm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/imlm-coe--f89ddc2f2314578d4ca5b944.md) | 241 | `result-track:f89ddc2f2314578d4ca5b94453358b9cf4009f526c881e3d60e31137294f4e34` |
| 33 | `def` | [ofRealAm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/ofrealam--9afb652b4d711d74f2ca5562.md) | 246 | `declaration-track:9afb652b4d711d74f2ca55627eba6bc1f74ecc14f955f7db2e86bc674bd0ee99` |
| 34 | `theorem` | [ofRealAm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/ofrealam-coe--f19e92e69df74795d2987778.md) | 251 | `result-track:f19e92e69df74795d29877785c213e3fe0f69cd3a8e30e60a61edb7acc8cfcc6` |
| 35 | `def` | [conjAe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/conjae--44bdc9099a2db01ea8faa05c.md) | 256 | `declaration-track:44bdc9099a2db01ea8faa05c8ab4408ae4cc7827a6700d64979ca3d129fc98f6` |
| 36 | `theorem` | [conjAe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/conjae-coe--06cd559540879db1fbff734c.md) | 265 | `result-track:06cd559540879db1fbff734c17eb11f7af48af7288a2db1c6f8ace17618c3fce` |
| 37 | `theorem` | [toMatrix_conjAe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/tomatrix-conjae--6db57da643a1bf3286f00550.md) | 271 | `result-track:6db57da643a1bf3286f00550d500b122375ec1983685bdabc059bfb247dacea4` |
| 38 | `theorem` | [real_algHom_eq_id_or_conj](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/real-alghom-eq-id-or-conj--aefa83b2527c5eda9bdb1024.md) | 279 | `result-track:aefa83b2527c5eda9bdb102483e6a17d92015ad44cbc9cfd5e5b9cb0ed50b0b9` |
| 39 | `def` | [equivRealProdAddHom](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/equivrealprodaddhom--afccef1ba50be0ba629c69c4.md) | 288 | `declaration-track:afccef1ba50be0ba629c69c4e2d5dd0f7f9d4e9e68197e7cef378a72f254b84e` |
| 40 | `def` | [equivRealProdLm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/equivrealprodlm--9e93a3f120faa3219dfbeca3.md) | 294 | `declaration-track:9e93a3f120faa3219dfbeca34a37b758d245d418f5e5583f51fe92cf4268a29f` |
| 41 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/liftaux--1b2bde3be92f8e57fab1d9dd.md) | 307 | `declaration-track:1b2bde3be92f8e57fab1d9ddf210da1baf01febab12ff9464e9676790b2bf996` |
| 42 | `theorem` | [liftAux_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/liftaux-apply--d186976f8ced5d0fc27f1210.md) | 326 | `result-track:d186976f8ced5d0fc27f1210f090ac4a2889189c39ff4fb8aac86c45a7dbf1e5` |
| 43 | `theorem` | [liftAux_apply_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/liftaux-apply-i--aff4dc7db4931feed492d990.md) | 330 | `result-track:aff4dc7db4931feed492d990105cac8ac92436822c8ed42edcd18bc6759a47f3` |
| 44 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/lift--4f053ce296aef8a7f4bfe809.md) | 341 | `declaration-track:4f053ce296aef8a7f4bfe80949ef474269850f80c20763c0e36672798b2f135d` |
| 45 | `theorem` | [liftAux_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/liftaux-i--8607eda9e1fa4deb01b89a99.md) | 350 | `result-track:8607eda9e1fa4deb01b89a99a9fb1cb083e72f2ec1ccc70fd14366e01cfcad39` |
| 46 | `theorem` | [liftAux_neg_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/liftaux-neg-i--198a62476ab4a66e09b2d522.md) | 357 | `result-track:198a62476ab4a66e09b2d522781b16dd60f90d56f6adebea24fb167d66cabb27` |
| 47 | `def` | [skewAdjoint.negISMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/skewadjoint-negismul--690db386e761b36b34412b8d.md) | 375 | `declaration-track:690db386e761b36b34412b8d79fe7d9538ceb5a375d30f36bb39322c57c57da0` |
| 48 | `theorem` | [skewAdjoint.I_smul_neg_I](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/skewadjoint-i-smul-neg-i--4881ee03e0fb2f4a62db9d21.md) | 391 | `result-track:4881ee03e0fb2f4a62db9d21f2f403f8498f90d4b288db9153f155d117f58519` |
| 49 | `def` | [realPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/realpart--b9dacc6fa1cf721e4aeb414b.md) | 400 | `declaration-track:b9dacc6fa1cf721e4aeb414bea06d5c5aa4376638f7c8c7edd37ea323b1c5c84` |
| 50 | `def` | [imaginaryPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/imaginarypart--c5e31a4e5072e537a5918c60.md) | 409 | `declaration-track:c5e31a4e5072e537a5918c6029f163829938ceb2d6ee4ca76284d7feba61ebe2` |
| 51 | `theorem` | [realPart_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/realpart-apply-coe--e3fe112c00e994988e1394fa.md) | 419 | `result-track:e3fe112c00e994988e1394faa403ef2a2bd109632df57711b12e21201bf40ad7` |
| 52 | `theorem` | [imaginaryPart_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/imaginarypart-apply-coe--ce0b48ff384aca0379478e4d.md) | 425 | `result-track:ce0b48ff384aca0379478e4d6756cf72fa9f588437f7982bfb42380c5b0071a3` |
| 53 | `theorem` | [realPart_add_I_smul_imaginaryPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/realpart-add-i-smul-imaginarypart--532335445d0be6effaf5c703.md) | 433 | `result-track:532335445d0be6effaf5c70356cfe523a11a2e2367fa48b463a61437bb4f259b` |
| 54 | `theorem` | [realPart_I_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/realpart-i-smul--61756141241b1f650d8b585b.md) | 441 | `result-track:61756141241b1f650d8b585bd54ca498a9cfc508a640409eba01b20d89bb0dd0` |
| 55 | `theorem` | [imaginaryPart_I_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/imaginarypart-i-smul--8615dd4b04251f6eb73caeb4.md) | 451 | `result-track:8615dd4b04251f6eb73caeb4ed2c345cf163d5a497526b72c7e625b8c7ed2cce` |
| 56 | `theorem` | [realPart_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/realpart-smul--e147690b4a55cd0721201788.md) | 460 | `result-track:e147690b4a55cd0721201788fbef911d864084476fee7964ea9367176cab7ce7` |
| 57 | `theorem` | [imaginaryPart_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/imaginarypart-smul--675735e7d46fe85aff5f4585.md) | 467 | `result-track:675735e7d46fe85aff5f458522844af640f67596e0017717898962baa401227e` |
| 58 | `lemma` | [Real.rank_rat_real](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/real-rank-rat-real--eb7bfe0a60b464513d22757e.md) | 481 | `result-track:eb7bfe0a60b464513d22757eb4ca1970c5b013ed29e3b0b286f77dfc311845af` |
| 59 | `lemma` | [Complex.rank_rat_complex](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/complex-rank-rat-complex--694150fa86a907d296a0c920.md) | 486 | `result-track:694150fa86a907d296a0c920be2ffec9bb3e70ec620d1bb4c0534ca8fac6d8d6` |
| 60 | `theorem` | [Complex.nonempty_linearEquiv_real](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/declarations/complex-nonempty-linearequiv-real--5517b72262500c78fe869fbb.md) | 492 | `result-track:5517b72262500c78fe869fbb1a9eee5bc21fe96bac12d9f8bc91fb0801bee043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
