# Verification target: GRWTSK.Algebra.Ideal.Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84ce960053b24d78c66f477f00b1400cfd8c4a96",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84ce960053b24d78c66f477f00b1400cfd8c4a96`.

Source path: `GRWTSK/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ideal.ResidueField](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield--842043fa82dd1be81d283b7a.md) | 33 | `declaration-track:842043fa82dd1be81d283b7a7031a8100700a218779b26aae008ed66ab2f864b` |
| 2 | `abbrev` | [Ideal.ResidueField.map](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-map--b69232515bd609323c18e6e7.md) | 38 | `declaration-track:b69232515bd609323c18e6e7c91735162a3fc6e797d388e70e94372967408b0d` |
| 3 | `lemma` | [Ideal.ResidueField.map_algebraMap](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-map-algebramap--1139eb19ce452376ab6f5dbc.md) | 43 | `result-track:1139eb19ce452376ab6f5dbc1c7484126ac7ca305a0f0c9fdebd373f6b1c1684` |
| 4 | `lemma` | [RingHom.SurjectiveOnStalks.residueFieldMap_bijective](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ringhom-surjectiveonstalks-residuefieldmap-bijective--3a5be041f52197503c7b9e79.md) | 50 | `result-track:3a5be041f52197503c7b9e79877b756236d9b0e59441fed13035c962bc44b9d5` |
| 5 | `def` | [Ideal.ResidueField.mapₐ](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-map--cd51684439e4ad3f999c4a9e.md) | 61 | `declaration-track:cd51684439e4ad3f999c4a9e189dfc6133a53cbba9a58b83517659c885a2c3fa` |
| 6 | `lemma` | [Ideal.ResidueField.mapₐ_apply](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-map-apply--e5637a22b2b54b0bba644ae1.md) | 68 | `result-track:e5637a22b2b54b0bba644ae1fc44e6a19697cbed181f9dc30e7a4e49ee2500d5` |
| 7 | `lemma` | [Ideal.algebraMap_residueField_eq_zero](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-algebramap-residuefield-eq-zero--27d48c8fdd5c7790603d53b0.md) | 74 | `result-track:27d48c8fdd5c7790603d53b0119c2f765638b6d57c8527d565420303499aaf3c` |
| 8 | `lemma` | [Ideal.ker_algebraMap_residueField](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-ker-algebramap-residuefield--44fd076ccf62aead4a1b2238.md) | 81 | `result-track:44fd076ccf62aead4a1b223865f3092f5001719f6b7c7775180d8eedf356e5c6` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--95414772690da68db0aed492.md) | 86 | `declaration-track:95414772690da68db0aed492db92c65a1226a758f11f724ab271c017b92a6247` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--a96aa9cae3ff832881c2bee7.md) | 90 | `declaration-track:a96aa9cae3ff832881c2bee7e9a6a75fc06d3a14b49ffe1932e27eefba6ac378` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--71ce0b91a3f1145be55bd6ec.md) | 93 | `declaration-track:71ce0b91a3f1145be55bd6ecfb25d20d7a157e82bb07daaedbab07077f3564d6` |
| 12 | `lemma` | [Ideal.algebraMap_quotient_residueField_mk](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-algebramap-quotient-residuefield-mk--c61ee6c93c219b08cb3bb46c.md) | 97 | `result-track:c61ee6c93c219b08cb3bb46c17a21cf2215b167f06221f13d08f29452b5e1110` |
| 13 | `lemma` | [Ideal.injective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-injective-algebramap-quotient-residuefield--8a0677b37a8eaba71ca8b11c.md) | 101 | `result-track:8a0677b37a8eaba71ca8b11cbca2c6d04faf9d82de965e0effe9b1215e169c47` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--04a7fc45a07ce9e46e8bf9fc.md) | 108 | `declaration-track:04a7fc45a07ce9e46e8bf9fcd5f9df6e381577445672adb6a106ee40a5fac9c2` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--38eba86b0d9c3fd1632bc2e4.md) | 128 | `declaration-track:38eba86b0d9c3fd1632bc2e469c046e40c56b30bd7234a1a7cfb8a10c06f84a7` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--61ad3ffc1f1b05276028fcdf.md) | 132 | `declaration-track:61ad3ffc1f1b05276028fcdf2e7e5c4fc282c5e7ea553c23f8ff25a372875f3d` |
| 17 | `lemma` | [Ideal.bijective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-bijective-algebramap-quotient-residuefield--e049f4ab3f34ba499d7c0750.md) | 135 | `result-track:e049f4ab3f34ba499d7c07502c634587c21904988b28d0e47b3ef8c0069fc3f8` |
| 18 | `lemma` | [Ideal.algebraMap_residueField_surjective](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-algebramap-residuefield-surjective--09042d9fb06b614c13c97aca.md) | 140 | `result-track:09042d9fb06b614c13c97acaeac7dcc01dc65e9c4a2ff8098eaea1367c6d50f4` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--b2eb976f4e1bc2624a340331.md) | 145 | `declaration-track:b2eb976f4e1bc2624a3403312f7a34b503f2cba796d528c019ab03514b49b469` |
| 20 | `def` | [Ideal.algEquivResidueFieldOfField](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-algequivresiduefieldoffield--b2f1704d68893e0b5b64fdc5.md) | 150 | `declaration-track:b2f1704d68893e0b5b64fdc58a0f050e716b140a29c31def35959dc9e36801f1` |
| 21 | `lemma` | [Ideal.algEquivResidueFieldOfField_apply](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-algequivresiduefieldoffield-apply--22f4d73e9bd04e69b1c0fc1a.md) | 157 | `result-track:22f4d73e9bd04e69b1c0fc1a17803b83cd23a395a1a65fac5af9977dfc06259d` |
| 22 | `lemma` | [Ideal.surjectiveOnStalks_residueField](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-surjectiveonstalks-residuefield--eb49b97d0f89be1a7128e69c.md) | 161 | `result-track:eb49b97d0f89be1a7128e69cdb91469374835504033d2623797819366c2f6e26` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--9399c30ea770d6087b501e9a.md) | 176 | `declaration-track:9399c30ea770d6087b501e9a7eda6564b8fc8832ed25ae49af82758322661558` |
| 24 | `def` | [Ideal.residueFieldRingEquiv](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefieldringequiv--0a6f4df17f8d14cc731b5104.md) | 181 | `declaration-track:0a6f4df17f8d14cc731b51040514ccb2ebd9e3bfd5273993c330b4677fc17dbe` |
| 25 | `abbrev` | [Ideal.residueFieldAlgEquiv](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefieldalgequiv--699ff79de93619849e5aee09.md) | 186 | `declaration-track:699ff79de93619849e5aee0903554deeacc20563ad29d5b56cd3307f727e4370` |
| 26 | `abbrev` | [Ideal.residueFieldAlgEquiv'](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefieldalgequiv--43498c5e469ac42fb19d7c72.md) | 191 | `declaration-track:43498c5e469ac42fb19d7c72ddfc3c2faf73e7e95ea61732613968602372859e` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--acabd09043d8bebd9c2feec8.md) | 197 | `declaration-track:acabd09043d8bebd9c2feec8f1fb39aa8ad1e289aa065004f26785c69c680e91` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/instance--a07fa0c44bbdb5070d355481.md) | 200 | `declaration-track:a07fa0c44bbdb5070d355481eb53dee88e06dd28330b088cd1d823b9e53bf708` |
| 29 | `def` | [Ideal.ResidueField.lift](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-lift--b2427fb351c1d42f8abba1c3.md) | 209 | `declaration-track:b2427fb351c1d42f8abba1c30bf99c7e2aaefe0a24b6fe4a04250fb84e75a7dd` |
| 30 | `lemma` | [Ideal.ResidueField.lift_algebraMap](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-lift-algebramap--870a06f534008bba49e8ff95.md) | 216 | `result-track:870a06f534008bba49e8ff956248656b88711f3d38dc1580ef584856bd22b854` |
| 31 | `def` | [Ideal.ResidueField.liftₐ](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-lift--2c601b3014fa4aa582ed7b83.md) | 225 | `declaration-track:2c601b3014fa4aa582ed7b83ed3585563db4eba18d4cef0a2f71a4d8cddd60b1` |
| 32 | `lemma` | [Ideal.ResidueField.liftₐ_algebraMap](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-lift-algebramap--8032a5585f39ac7621cd9e1f.md) | 231 | `result-track:8032a5585f39ac7621cd9e1f35200b02ab2b89e0fa7f517b45131307df5733f9` |
| 33 | `lemma` | [Ideal.ResidueField.liftₐ_comp_toAlgHom](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-lift-comp-toalghom--897f6058054f64ff38c1ec04.md) | 236 | `result-track:897f6058054f64ff38c1ec04fd34236d443d02744e6fe351492d4ec2954af944` |
| 34 | `lemma` | [Ideal.ResidueField.ringHom_ext](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-ringhom-ext--004978e90e752bf1661de238.md) | 242 | `result-track:004978e90e752bf1661de238643f8d032a1db8f00b14c67a9e9670a2d948254b` |
| 35 | `lemma` | [Ideal.ResidueField.algHom_ext](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-alghom-ext--f39a443d002781e56ebbe0ae.md) | 247 | `result-track:f39a443d002781e56ebbe0ae64b6e0470079d86106c673358ce3691f49d01fe9` |
| 36 | `lemma` | [Ideal.ResidueField.mapₐ_id](../../../../mathematics/Algebra/Ideal/Variant97f7aad5eb6bf0dec4cb7f1f64b9eb226fae0dee85435d167b5b0f66826a6b36.lean/declarations/ideal-residuefield-map-id--014d8fb76e609bc70667df46.md) | 252 | `result-track:014d8fb76e609bc70667df46bdcfdb3771a6df8ec3d42f1485d22f0513123129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
