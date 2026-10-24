# Verification target: GRWTSK.Algebra.GroupTheory.Equiv.Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f1b2ceda0294e4cadb0a36b92f29f5169ab99e7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f1b2ceda0294e4cadb0a36b92f29f5169ab99e7`.

Source path: `GRWTSK/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUnits](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/tounits--ea618f04f9c00e885b396836.md) | 28 | `declaration-track:ea618f04f9c00e885b39683661169723713c7aac8a946b96a9bc21bfb9ce6f7c` |
| 2 | `lemma` | [toUnits_val_apply](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/tounits-val-apply--c60dd372e679a96025c27601.md) | 36 | `result-track:c60dd372e679a96025c276010b0aaae5db4dd2fcc622b5c8aa126f35b9c9b51b` |
| 3 | `def` | [mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mapequiv--d34954cfbde411ae901f6d65.md) | 45 | `declaration-track:d34954cfbde411ae901f6d6516bd42e114d6de54ac7517e354193cc71242c1a0` |
| 4 | `theorem` | [mapEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mapequiv-symm--72e94f4443e1e595e1a6983a.md) | 52 | `result-track:72e94f4443e1e595e1a6983a60bbe18e1fd3117780fe6d18f1d52e7a1828b9e4` |
| 5 | `theorem` | [coe_mapEquiv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/coe-mapequiv--ab2c95bd637ce9ce19c1a5dc.md) | 56 | `result-track:ab2c95bd637ce9ce19c1a5dc5ce093da81a414576426c12f470d69a865d8fb8a` |
| 6 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulleft--396fc0ebdbdb853d7e6e3242.md) | 62 | `declaration-track:396fc0ebdbdb853d7e6e3242b17d4e413e2511c5486c5a0ffc34fbf00b6d5b87` |
| 7 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulleft-symm--504d64192100a1cd82c475d8.md) | 69 | `result-track:504d64192100a1cd82c475d87ee42ed905d12909df7cc0cbaa2181f641db647e` |
| 8 | `theorem` | [mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulleft-bijective--6121356679cc28d29edd5122.md) | 73 | `result-track:6121356679cc28d29edd51228f58d3dc306e4eb08aedd729a4c40995c0642c0a` |
| 9 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulright--1dff6bf1cb6abd0705e6b3ad.md) | 79 | `declaration-track:1dff6bf1cb6abd0705e6b3adfecf59e22b218fe1adb07a6dfbce4c74876321a6` |
| 10 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulright-symm--ee8b2140a135c5c72aed1a48.md) | 86 | `result-track:ee8b2140a135c5c72aed1a48b7874a386cb56d91c04da2d57ffd8be08d713884` |
| 11 | `theorem` | [mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulright-bijective--14ab22e7bf3b8b953a3da73d.md) | 90 | `result-track:14ab22e7bf3b8b953a3da73dad4f1f4b488388d3025054cffbb550b45f576fc8` |
| 12 | `def` | [mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulleft--3db05d34cbc5a8e94c3f20d0.md) | 103 | `declaration-track:3db05d34cbc5a8e94c3f20d02a55a978fc81045db413fd261d1fa322dec3ee6e` |
| 13 | `theorem` | [coe_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/coe-mulleft--90b12236fef4b9bc603454bf.md) | 107 | `result-track:90b12236fef4b9bc603454bfab40eb737efa474e1698cd2b83351b2de845cb71` |
| 14 | `theorem` | [mulLeft_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulleft-symm-apply--38d9033cc3f42eebe1518f83.md) | 112 | `result-track:38d9033cc3f42eebe1518f8325a166a23c0674820569102a1af06cc5753bb47c` |
| 15 | `theorem` | [mulLeft_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulleft-symm--69a62b33dbc4e97c20f897b9.md) | 116 | `result-track:69a62b33dbc4e97c20f897b9e3ba6ef614f7bf1ab353130d0cee01cc471791b7` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ToUnits.Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.Group.mulLeft_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/root-grwtsk-algebra-grouptheory-tounits-variant393cf160cd64c4e4fa06c51ff--d9a6a925cf2f779e93196f9c.md) | 120 | `result-track:d9a6a925cf2f779e93196f9c57bb1123877503a0be86ecaaabd91885bf4a6a0b` |
| 17 | `def` | [mulRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulright--8f5a0481940fcf02f8028e8b.md) | 125 | `declaration-track:8f5a0481940fcf02f8028e8bb4e96143cb97588336012491f3e23119a6db8c78` |
| 18 | `theorem` | [coe_mulRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/coe-mulright--6be5257c32d4f3fad3c4e88c.md) | 129 | `result-track:6be5257c32d4f3fad3c4e88c900cb00230e7c9011fe7dc352c0054bcc7d11195` |
| 19 | `theorem` | [mulRight_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulright-symm--27456116311305759d8e0b12.md) | 133 | `result-track:27456116311305759d8e0b12582767b8543ff9d6ff654dd8afcbf0fc53b3ac41` |
| 20 | `theorem` | [mulRight_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulright-symm-apply--475febb271fe836a440ab43b.md) | 138 | `result-track:475febb271fe836a440ab43b5ff5b67446597bf8660886ab22164448994f59b6` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ToUnits.Variant393cf160cd64c4e4fa06c51ffbdefe7a15a4449010eece1fa9539c68ea3172b4.Group.mulRight_bijective](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/root-grwtsk-algebra-grouptheory-tounits-variant393cf160cd64c4e4fa06c51ff--ef7d693df22d5a0c8c423cea.md) | 142 | `result-track:ef7d693df22d5a0c8c423ceab365ab47ebd80cfddd58557b04306b3aa8c8720c` |
| 22 | `def` | [divLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/divleft--1419c96ceea57e37ae50ae23.md) | 147 | `declaration-track:1419c96ceea57e37ae50ae2399d2817144628c344bfa8e5a32498034031fe461` |
| 23 | `theorem` | [divLeft_eq_inv_trans_mulLeft](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/divleft-eq-inv-trans-mulleft--65fe19c07f7f0004e591be68.md) | 154 | `result-track:65fe19c07f7f0004e591be68dde9d17d83612013112ad62c775b5cd9b13d9b16` |
| 24 | `def` | [divRight](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/divright--3c81da9e33e4c3b904642de8.md) | 160 | `declaration-track:3c81da9e33e4c3b904642de8b0e24d9ca0ad192cc2a52f9d27e52fd5da120cc3` |
| 25 | `theorem` | [divRight_eq_mulRight_inv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/divright-eq-mulright-inv--cfd7778eda57e0c583d0a194.md) | 167 | `result-track:cfd7778eda57e0c583d0a1941a93a00d0913ea48cc54d97dbdd64befa4c2cb2d` |
| 26 | `def` | [unitsEquivProdSubtype](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/unitsequivprodsubtype--e258d9ad7f156eb01eb0a250.md) | 177 | `declaration-track:e258d9ad7f156eb01eb0a250eac6324d09d382521ff47c5d3af90aeb634e2ec7` |
| 27 | `def` | [MulEquiv.inv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulequiv-inv--6c66f42c1a75af006263c56d.md) | 187 | `declaration-track:6c66f42c1a75af006263c56dc4edcf95e6df971893cf0767aeb4d042492cc5b8` |
| 28 | `theorem` | [MulEquiv.inv_symm](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulequiv-inv-symm--892f9b2b6f15d4c5ca7ef365.md) | 191 | `result-track:892f9b2b6f15d4c5ca7ef365e5f8bcb4d97d5122504ae5eb608fdb563dc4aaec` |
| 29 | `lemma` | [MulEquiv.isUnit_map](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/mulequiv-isunit-map--d24b5372355f16f63761f6d1.md) | 200 | `result-track:d24b5372355f16f63761f6d1702665a987960c71cd83fdb4dc32c2e0b49d9570` |
| 30 | `theorem` | [isLocalHom_equiv](../../../../../mathematics/Algebra/GroupTheory/Equiv/Variant0337f35a68de8db0a6e1a177a33b0090d6cc9bfe8740c17169af7e3791a2ae25.lean/declarations/islocalhom-equiv--6f5cdd0d992a7d64c6f1d5c5.md) | 206 | `result-track:6f5cdd0d992a7d64c6f1d5c5df497d81e39d0fdb403e2faf3afbfc6f45f4deee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
