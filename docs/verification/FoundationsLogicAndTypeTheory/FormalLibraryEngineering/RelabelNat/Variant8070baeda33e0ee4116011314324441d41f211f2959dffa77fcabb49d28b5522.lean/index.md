# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelabelNat.Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2f586ee19a04ac04f1f40fc84e76d13c272f779",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2f586ee19a04ac04f1f40fc84e76d13c272f779`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Inv1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/inv1--ff88f967793247e66e49cac5.md) | 29 | `declaration-track:ff88f967793247e66e49cac58ed8f920e9f103b295f2457f4ff43678d1d04858` |
| 2 | `theorem` | [Inv1.lt_of_get?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/inv1-lt-of-get-eq-some--e25b750d9b896f87368fb6f0.md) | 33 | `result-track:e25b750d9b896f87368fb6f0c3aac5c56f59a5a311b7e72cdd1ab56f4db2497f` |
| 3 | `theorem` | [Inv1.property](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/inv1-property--cde7a6ea00786c5139718f0f.md) | 55 | `result-track:cde7a6ea00786c5139718f0f815f65ed091b0a67bf24b3f23f1330dba32682c7` |
| 4 | `inductive` | [Inv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/inv2--438deb8a43d5afa2368a0f42.md) | 92 | `declaration-track:438deb8a43d5afa2368a0f42a8ba56a71db58d217111ad7b27c06fb88c96f182` |
| 5 | `theorem` | [Inv2.upper_lt_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/inv2-upper-lt-size--da815fb79389110b8179824a.md) | 103 | `result-track:da815fb79389110b8179824a9e0fe3635dd325ddef8581992ee42c64922beb8d` |
| 6 | `theorem` | [Inv2.property](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/inv2-property--03ab4c35b4c817b5a4c5fab2.md) | 111 | `result-track:03ab4c35b4c817b5a4c5fab2de913198d3af74db9591da4cf10482bab3bcceda` |
| 7 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/state--a59a0322fbdbbce7a21d6246.md) | 162 | `declaration-track:a59a0322fbdbbce7a21d6246ded6c657006f690bab5eb6434d0079dd7e140b3e` |
| 8 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/empty--d8486da9290daf3acc23dc77.md) | 185 | `declaration-track:d8486da9290daf3acc23dc7772d7350d8179fed583668cbba31a701e792cb6aa` |
| 9 | `def` | [addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/addatom--d5f4e8c4f2229e9cd317464c.md) | 191 | `declaration-track:d5f4e8c4f2229e9cd317464c9bf5313efd2633a3bc6f6cbf9db59f906778c843` |
| 10 | `def` | [addFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/addfalse--b02999c4eb1871194c2f9cd4.md) | 221 | `declaration-track:b02999c4eb1871194c2f9cd4565c7f21593374ccefc4c96d0cc72b53645f851f` |
| 11 | `def` | [addGate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/addgate--e8a9cef44911c41be1660199.md) | 234 | `declaration-track:e8a9cef44911c41be16601994c811792e864e1d29ae79be4699a60ce627ea984` |
| 12 | `def` | [ofAIGAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/ofaigaux--642f14c9cc32976aa03d57b1.md) | 247 | `declaration-track:642f14c9cc32976aa03d57b18756d35310648e80813677861388a86c4962df9e` |
| 13 | `def` | [ofAIG](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/ofaig--959d8fda5633545983f515a2.md) | 267 | `declaration-track:959d8fda5633545983f515a227bf0d4f64d3ce1db923f74e8425bb41a4c117ad` |
| 14 | `theorem` | [ofAIG.Inv1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/ofaig-inv1--17cdb935f46abc3a3ef85ad7.md) | 273 | `result-track:17cdb935f46abc3a3ef85ad72a85bf2c74d8776daafa8e35ca596aea303d570f` |
| 15 | `theorem` | [ofAIG.Inv2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/ofaig-inv2--3be09f7035bfa7bd11b8646e.md) | 281 | `result-track:3be09f7035bfa7bd11b8646e7dcc1eaa1facbe53ff75709ba33570a3ede9ba10` |
| 16 | `theorem` | [ofAIG_find_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/ofaig-find-unique--e40f3f8dd9ec014e10f1bc73.md) | 288 | `result-track:e40f3f8dd9ec014e10f1bc73ecb8b264520818d176aef0b87f03bf4f038a7acb` |
| 17 | `theorem` | [ofAIG_find_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/ofaig-find-some--95bfc351cc67a5f7f65315c2.md) | 297 | `result-track:95bfc351cc67a5f7f65315c21ca44fc7a9c54921c7bcf605cf7986f705da7796` |
| 18 | `def` | [relabelNat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat--c2ce6ec51a0e780be0a13d43.md) | 310 | `declaration-track:c2ce6ec51a0e780be0a13d43957df66182465190bb5c89dcddfefe2537ba2685` |
| 19 | `def` | [relabelNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat--3821c1f743990db88d557d32.md) | 323 | `declaration-track:3821c1f743990db88d557d3246ba04574067a2d03c6feb8d443f2ef3de706b7b` |
| 20 | `theorem` | [relabelNat'_fst_eq_relabelNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat-fst-eq-relabelnat--6b9b638bcfb57b823928a02e.md) | 327 | `result-track:6b9b638bcfb57b823928a02ea3053edef8d165e55f92f3541cba80bbd7fe1279` |
| 21 | `theorem` | [relabelNat_size_eq_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat-size-eq-size--c558770b5e801ef531c3962e.md) | 331 | `result-track:c558770b5e801ef531c3962e6c8b3285cac06b39a248c2e713025da5e7d3a1c6` |
| 22 | `theorem` | [relabelNat_unsat_iff_of_NonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat-unsat-iff-of-nonempty--977f130ec8d6c2c3949063e9.md) | 334 | `result-track:977f130ec8d6c2c3949063e9387805e191306e4f88989f98991d7dd19879238c` |
| 23 | `theorem` | [relabelNat_unsat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat-unsat-iff--065731956aea09f099c1ae11.md) | 359 | `result-track:065731956aea09f099c1ae11f0e802da851e84ac7816c96fe8311d429e20ae8e` |
| 24 | `def` | [relabelNat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat--3352da0bdb34204c9b6fffe4.md) | 367 | `declaration-track:3352da0bdb34204c9b6fffe4dc25b8d7b00f5e7bab93e74548970b3a5050a44a` |
| 25 | `def` | [relabelNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat--8f7b3d9ed509da89bd6614a9.md) | 381 | `declaration-track:8f7b3d9ed509da89bd6614a937a16029c076ed231578e6ed7e7b0b8e58acabb6` |
| 26 | `theorem` | [relabelNat_unsat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant8070baeda33e0ee4116011314324441d41f211f2959dffa77fcabb49d28b5522.lean/declarations/relabelnat-unsat-iff--a40e40896be2b826e9cd1c69.md) | 390 | `result-track:a40e40896be2b826e9cd1c6977ecc9da5565dc4cab97ae5d2a5eada8909c1c12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
