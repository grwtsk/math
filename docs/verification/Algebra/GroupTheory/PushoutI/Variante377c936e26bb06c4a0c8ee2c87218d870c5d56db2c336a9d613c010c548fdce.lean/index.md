# Verification target: GRWTSK.Algebra.GroupTheory.PushoutI.Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a570a1640fb994f6279ddb82dd6fcb57f5bfc4",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a570a1640fb994f6279ddb82dd6fcb57f5bfc4`.

Source path: `GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.CoprodI` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coprod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Complement` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PushoutI.con](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/pushouti-con--4af054a8666199cb0493076a.md) | 51 | `declaration-track:4af054a8666199cb0493076a4c1a2150c0dceacd502bb0204d757f1c19219d7a` |
| 2 | `def` | [PushoutI](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/pushouti--37bb65c4892c773c2004d9e0.md) | 58 | `declaration-track:37bb65c4892c773c2004d9e0fa69626f863ba9bf30f4076b6c1552e0ef5c8041` |
| 3 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/mul--b2a4178a54b00812999433aa.md) | 67 | `declaration-track:b2a4178a54b00812999433aacd2c353b48c68e505ce4c7b5af562f3bf44f9613` |
| 4 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/one--24898bcfb43f7f26d2cd0a71.md) | 70 | `declaration-track:24898bcfb43f7f26d2cd0a71f3e329da8751b47846b0e7eb6408988256853be2` |
| 5 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/monoid--718053386d5328c48bcd51c0.md) | 73 | `declaration-track:718053386d5328c48bcd51c075727816c6870e205896f767bbe8cb64d340bb56` |
| 6 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/of--a9d2a0e0a126b6f1a3b736e1.md) | 79 | `declaration-track:a9d2a0e0a126b6f1a3b736e173a7db85851ddb3a43726b95f48493bee6f68096` |
| 7 | `def` | [base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/base--ae3361bf21e1b0f20e143341.md) | 84 | `declaration-track:ae3361bf21e1b0f20e1433410c9fdceffc65c3b1742223fb1641e1219ad13cd4` |
| 8 | `theorem` | [of_comp_eq_base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/of-comp-eq-base--488c70578fd76269d9388a0d.md) | 87 | `result-track:488c70578fd76269d9388a0df9aa6a72f41c70e1e8abe5ffa6ac29f13904a668` |
| 9 | `theorem` | [of_apply_eq_base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/of-apply-eq-base--ac0b57c537222aafb7dfe617.md) | 95 | `result-track:ac0b57c537222aafb7dfe617950553449b744d7826c110381a50390bc377763a` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/lift--8092cc9fc392cce832bb069f.md) | 100 | `declaration-track:8092cc9fc392cce832bb069ff6da0b0e5b86c7b56e0ab72b35d0d6410e535f50` |
| 11 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/lift-of--edd8761aaacc18e6d6266ba6.md) | 110 | `result-track:edd8761aaacc18e6d6266ba6c2e254c5405ca9a817165042dd69f77a6b34b793` |
| 12 | `theorem` | [lift_base](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/lift-base--950436c2867d2f375975bb49.md) | 118 | `result-track:950436c2867d2f375975bb4911bbfa0a3e9e4198fa86a6419e0fd201f54fbbb7` |
| 13 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/hom-ext--49d8d21830dfae574bcf6499.md) | 126 | `result-track:49d8d21830dfae574bcf6499fe484d8fee3c8b1fc6d4d6fb77c79ea35dfe84c7` |
| 14 | `theorem` | [hom_ext_nonempty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/hom-ext-nonempty--aded8e3d6fe7a5d52c28d410.md) | 135 | `result-track:aded8e3d6fe7a5d52c28d410bf06d63edf6417ce46c3888065b5e332a030751a` |
| 15 | `def` | [homEquiv](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/homequiv--5fbbd8299ba3b9b030805bc3.md) | 148 | `declaration-track:5fbbd8299ba3b9b030805bc3d75e150498fb252a74023f6ded13dddfe646323b` |
| 16 | `def` | [ofCoprodI](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/ofcoprodi--529aff01fbdc106b3122051c.md) | 158 | `declaration-track:529aff01fbdc106b3122051c7060887b58d9dc3bc8a0fec0ae11340db6dd927d` |
| 17 | `theorem` | [ofCoprodI_of](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/ofcoprodi-of--ed7193f1e512a1dccdd18172.md) | 162 | `result-track:ed7193f1e512a1dccdd18172a6aeed899aae7cfc1f2f131c71f58e2d733973f1` |
| 18 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/induction-on--21b74519a7e020a7b2c28547.md) | 166 | `result-track:21b74519a7e020a7b2c285471486480728ba156b2cca52f0bec5b3ead6b126ca` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/instance--bcd870def68c92f9b99eb559.md) | 189 | `declaration-track:bcd870def68c92f9b99eb559304b0ff2ef88b632e98bbedd46bb37d61603f87a` |
| 20 | `structure` | [Transversal](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/transversal--17119b20d205a331fd095a0e.md) | 220 | `declaration-track:17119b20d205a331fd095a0e3a0191514af05accd2fc178938844ef2218350e1` |
| 21 | `theorem` | [transversal_nonempty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/transversal-nonempty--b158e7f9c71f61e6d43600da.md) | 230 | `result-track:b158e7f9c71f61e6d43600da682ada2ce7a0f634f803ed9248acac3e501d008a` |
| 22 | `structure` | [_root_.Monoid.PushoutI.NormalWord](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/root-monoid-pushouti-normalword--a92d22a9b7c7cb37f1f87140.md) | 243 | `declaration-track:a92d22a9b7c7cb37f1f871409809d038c08ebc4046e7fd08585b32d01e132958` |
| 23 | `structure` | [Pair](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/pair--ac2da7fbe0a814424f08baa9.md) | 256 | `declaration-track:ac2da7fbe0a814424f08baa932726663f5d25ada08b0e7a26680527b499ab219` |
| 24 | `def` | [empty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/empty--6deec6637fc25d0d2309e3a8.md) | 264 | `declaration-track:6deec6637fc25d0d2309e3a8ff8be020040ef985f3a5d53a9b77d249127c92fa` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/instance--e4b200e22d0cf56d3ee05a01.md) | 266 | `declaration-track:e4b200e22d0cf56d3ee05a014b43afd817a5130ddfeb262bdc620032d8df8c2d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/instance--dd9b8c3db5e48d2d60ccec93.md) | 268 | `declaration-track:dd9b8c3db5e48d2d60ccec937b923333a6f41c9d1efdfd2f845bb93d2ae6c7b2` |
| 27 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/ext--6df1db9f7d2e55c535241d3d.md) | 274 | `result-track:6df1db9f7d2e55c535241d3d368fef924de2ab78acda8524fb8ca80011c9e518` |
| 28 | `instance` | [baseAction](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/baseaction--8804351fa833c50920e8fb21.md) | 282 | `declaration-track:8804351fa833c50920e8fb21591045c3f2703d1f750fded319d21593a0e1725f` |
| 29 | `theorem` | [base_smul_def'](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/base-smul-def--b41792a74d58778504527036.md) | 287 | `result-track:b41792a74d587785045270363d8bca171f3ecf27d959264d7c4d1be25e3f20e9` |
| 30 | `def` | [prod](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod--b3d60d0ab3cbcea1b0e2f1fe.md) | 291 | `declaration-track:b3d60d0ab3cbcea1b0e2f1fe42badd7ecfa1c66bf31c51aad6acc3e3b86d6cf7` |
| 31 | `theorem` | [prod_base_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-base-smul--9abb44767bcbef3fe14cbf02.md) | 295 | `result-track:9abb44767bcbef3fe14cbf027d7aa595a7d21278c88ab01aa4ba53f5e73bdfb7` |
| 32 | `theorem` | [prod_empty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-empty--f996c8c99e8b8e91296d0d26.md) | 300 | `result-track:f996c8c99e8b8e91296d0d26af1c70115a72c22bd8b319c248e23f9ab6ef2c5f` |
| 33 | `def` | [cons](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/cons--15d7bba207a810e5901181df.md) | 306 | `declaration-track:15d7bba207a810e5901181df402d89973d45391796b55bbc7bb40e34f8f952e5` |
| 34 | `theorem` | [prod_cons](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-cons--9a6d2bfc299853704d9258f9.md) | 321 | `result-track:9a6d2bfc299853704d9258f9f18348cb40e9a725416e93e86c71e1038a42f863` |
| 35 | `theorem` | [eq_one_of_smul_normalized](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/eq-one-of-smul-normalized--fb0cef8d48ea5142d3579e1b.md) | 330 | `result-track:fb0cef8d48ea5142d3579e1b7f8504573e475833ebb8635a83ffa28784230439` |
| 36 | `theorem` | [ext_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/ext-smul--fd64647e85d9f45d77dc7e3d.md) | 371 | `result-track:fd64647e85d9f45d77dc7e3dc5e4cdc7bafe1a631ff247e3e3e58d15357ccbc6` |
| 37 | `def` | [rcons](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/rcons--363ba19fabc890884629ec16.md) | 388 | `declaration-track:363ba19fabc890884629ec16b92ac960af2e89b2eff6cc64e4089ab55cdbfadd` |
| 38 | `theorem` | [rcons_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/rcons-injective--8f4e34da082e199fbd90b42d.md) | 400 | `result-track:8f4e34da082e199fbd90b42dd91ef677014b5981bbfd3de01c600be9c93e6448` |
| 39 | `def` | [equivPair](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/equivpair--812fb46e18eb950ca6960bea.md) | 414 | `declaration-track:812fb46e18eb950ca6960bea61eeca7911c4d9f79024bd990ff7b3c8d2eb2aea` |
| 40 | `instance` | [summandAction](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/summandaction--7dd7e3001212bbd210f377db.md) | 435 | `declaration-track:7dd7e3001212bbd210f377db9ea7509dd85c75816b0ac66643f34af99f4bf0fc` |
| 41 | `theorem` | [summand_smul_def'](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/summand-smul-def--c9247e02dc5ec783be2b4c5f.md) | 447 | `result-track:c9247e02dc5ec783be2b4c5f7e5dcf6e2848c202d5d6341d8f2c8a87231b2662` |
| 42 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/mulaction--c044d6d818e4c280dca33387.md) | 452 | `declaration-track:c044d6d818e4c280dca3338766e7766142d2293aa7f7821cfe0b43dfea1b2671` |
| 43 | `theorem` | [base_smul_def](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/base-smul-def--02c328c9b6aa0eb5b940cd7d.md) | 468 | `result-track:02c328c9b6aa0eb5b940cd7d7b57650c6e9318cf17475885341fa073d17f879b` |
| 44 | `theorem` | [summand_smul_def](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/summand-smul-def--760129d5f2085a8fecd61199.md) | 474 | `result-track:760129d5f2085a8fecd6119928fc9a94c3a5c3f9a2e7c3b67f62493a6397f66f` |
| 45 | `theorem` | [of_smul_eq_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/of-smul-eq-smul--1671ade7649c054122f1bf3f.md) | 482 | `result-track:1671ade7649c054122f1bf3f65e3a2a8b41a6e5dcff20de921cb1c4204b736b1` |
| 46 | `theorem` | [base_smul_eq_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/base-smul-eq-smul--46d8fff86dba6fde90fdb8e9.md) | 486 | `result-track:46d8fff86dba6fde90fdb8e94c7db8f06ddd905d49298f3f32f81225f038d37d` |
| 47 | `def` | [consRecOn](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/consrecon--f329af01280949230b2646ca.md) | 493 | `declaration-track:f329af01280949230b2646ca779c300d4cea3aeb1d053470775cd61c7d748820` |
| 48 | `theorem` | [cons_eq_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/cons-eq-smul--9feecac9890881c6f45b3efc.md) | 523 | `result-track:9feecac9890881c6f45b3efc85526a97f294f119b24453080973d2c12626cd3d` |
| 49 | `theorem` | [prod_summand_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-summand-smul--85bded1e53ae9f6a062271a7.md) | 533 | `result-track:85bded1e53ae9f6a062271a7285885a28e58c276d85de5087989b8ab1718e0ad` |
| 50 | `theorem` | [prod_smul](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-smul--d92cc160129bcb1dab7071b2.md) | 542 | `result-track:d92cc160129bcb1dab7071b22a25ef5fcd8c389e89d45d2802348d7311594f6c` |
| 51 | `theorem` | [prod_smul_empty](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-smul-empty--fef5d8173a576fd5cd4aa44b.md) | 549 | `result-track:fef5d8173a576fd5cd4aa44b2f572982c3b51e334aadbb3e1c5c5c15b0afcfed` |
| 52 | `def` | [equiv](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/equiv--744074e1d8933415b8ceca98.md) | 558 | `declaration-track:744074e1d8933415b8ceca9873c43a8dc20a53953545581738eccb7802ef9bab` |
| 53 | `theorem` | [prod_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/prod-injective--4fc85bfc1c93f3804f899aa8.md) | 565 | `result-track:4fc85bfc1c93f3804f899aa80543a1cadaeb5d5578524d5ab3957f89f20839f2` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/instance--72f237dedb9a5b0c1bbdeaec.md) | 571 | `declaration-track:72f237dedb9a5b0c1bbdeaec6d4d7d2d77a475e53b82e5efa716af05f315298e` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/instance--cf03b66be4be21465b53b46a.md) | 574 | `declaration-track:cf03b66be4be21465b53b46aff89dd90e691376ce1eebf08fba386d158dcdd20` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/instance--2c603b5406e82678f8b2a9f2.md) | 577 | `declaration-track:2c603b5406e82678f8b2a9f2aa383662964087d6755aec40e1c473b3c7ef5f86` |
| 57 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/of-injective--5d4a937344dec7cddd6509bf.md) | 588 | `result-track:5d4a937344dec7cddd6509bf498dabe3f47ad70fef754eb8cb6d5feb4399cb09` |
| 58 | `theorem` | [base_injective](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/base-injective--6b1bed16dfc6136eef7ce6ba.md) | 599 | `result-track:6b1bed16dfc6136eef7ce6ba1a6f213129ef1bfe5f5a0fed5a28f1c5bb8eee94` |
| 59 | `def` | [Reduced](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/reduced--0dac4c98eaebffb21e45c21c.md) | 616 | `declaration-track:0dac4c98eaebffb21e45c21c764ea26cbbfa475739bf2b790684ab710a39cb13` |
| 60 | `theorem` | [Reduced.exists_normalWord_prod_eq](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/reduced-exists-normalword-prod-eq--1d164ace9e76893a2b26438b.md) | 619 | `result-track:1d164ace9e76893a2b26438b64db9afee1b71e5e512e3fac9ee76d0c1a943b77` |
| 61 | `theorem` | [Reduced.eq_empty_of_mem_range](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/reduced-eq-empty-of-mem-range--fb41845cf23d46063ee96223.md) | 636 | `result-track:fb41845cf23d46063ee9622392b1cbf06a6058e4f8de3ad1fad5916d298a58cc` |
| 62 | `theorem` | [inf_of_range_eq_base_range](../../../../../mathematics/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/declarations/inf-of-range-eq-base-range--b46cb5a5a028eb65a305af66.md) | 655 | `result-track:b46cb5a5a028eb65a305af669cdc6c40ea28412b514cc5377767e51974f640e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
