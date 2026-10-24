# Verification target: GRWTSK.Algebra.Ideal.Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02faa6f81f372cea61432a60b4bb003408f4f0c0",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02faa6f81f372cea61432a60b4bb003408f4f0c0`.

Source path: `GRWTSK/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean.json)

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
| 1 | `abbrev` | [Ideal.ResidueField](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield--3832915fd79d64e57f615b59.md) | 41 | `declaration-track:3832915fd79d64e57f615b597212b06714abe3f0b16cb95c3ac5afefd85c726c` |
| 2 | `abbrev` | [Ideal.ResidueField.map](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-map--5626af96bde10e94802b4899.md) | 46 | `declaration-track:5626af96bde10e94802b4899eb7dd44f2d1332dcec9458bd3eb7806540d70e8e` |
| 3 | `lemma` | [Ideal.ResidueField.map_algebraMap](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-map-algebramap--d4ccb92e0c54541a3167662d.md) | 51 | `result-track:d4ccb92e0c54541a3167662d92870b09eef086608d5b597f7cb5c0242b091f9c` |
| 4 | `lemma` | [RingHom.SurjectiveOnStalks.residueFieldMap_bijective](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ringhom-surjectiveonstalks-residuefieldmap-bijective--06942bca8b1427be44655cc2.md) | 58 | `result-track:06942bca8b1427be44655cc206567de8c9509b511402f7543c8ea1e25966d5d2` |
| 5 | `def` | [Ideal.ResidueField.mapₐ](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-map--1a57ad34c49ef41632ba338c.md) | 69 | `declaration-track:1a57ad34c49ef41632ba338c4bc45c355112a259efa960b0fd7926d2c0b7799f` |
| 6 | `lemma` | [Ideal.ResidueField.mapₐ_apply](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-map-apply--8454012d5a1da6169d86a959.md) | 76 | `result-track:8454012d5a1da6169d86a959081407e57c9300a01e1f62168ed324df7429a004` |
| 7 | `lemma` | [Ideal.algebraMap_residueField_eq_zero](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-algebramap-residuefield-eq-zero--b38aae6e5066e0da87b027e4.md) | 82 | `result-track:b38aae6e5066e0da87b027e46e4cd0fbd317df7caf48cdd8f9cd7b929cd0f567` |
| 8 | `lemma` | [Ideal.ker_algebraMap_residueField](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-ker-algebramap-residuefield--f5391ff3f8c7cdd074787753.md) | 89 | `result-track:f5391ff3f8c7cdd07478775394968cf7f3e7c2bf7ae8d1c83086d37b0447bce4` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--57244b64ce3ae03535d07218.md) | 94 | `declaration-track:57244b64ce3ae03535d07218f3de8e9a1705fe4b3c931b60c60150bc3d03ea5d` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--232dfe32e5ed9a5a3a9e15db.md) | 98 | `declaration-track:232dfe32e5ed9a5a3a9e15db75769c35ee58b9289ec6f31052c0739b3989e13a` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--7d3a76dd185448db57b3fdcc.md) | 101 | `declaration-track:7d3a76dd185448db57b3fdcc8f7bfb22c3bffff8abce73deb2b44442a8aaed65` |
| 12 | `lemma` | [Ideal.algebraMap_quotient_residueField_mk](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-algebramap-quotient-residuefield-mk--9f1b9cb6b3e689f40579f3be.md) | 105 | `result-track:9f1b9cb6b3e689f40579f3becccbce94400fc5b9d2baec9271a67e13a5636fe5` |
| 13 | `lemma` | [Ideal.injective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-injective-algebramap-quotient-residuefield--72c504a74cdf0821dd329773.md) | 109 | `result-track:72c504a74cdf0821dd329773fef21402aab7243454c89e9462ef13f2b0c3bbb3` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--d45f7812407cc62d4d5a660a.md) | 116 | `declaration-track:d45f7812407cc62d4d5a660a40626a84d92dbfc43186d7155eeaa5d0d6552c54` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--691eccf4902b836f198d7927.md) | 136 | `declaration-track:691eccf4902b836f198d79278c60c1de4b308d51562007f400f43dea212679e3` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--2e83eb33b46caf818c0bf85f.md) | 140 | `declaration-track:2e83eb33b46caf818c0bf85ff5b925b9911c42813a3102ca02af2bc7cb1e5a8d` |
| 17 | `lemma` | [Ideal.bijective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-bijective-algebramap-quotient-residuefield--5da3d96c324f4498af4f675b.md) | 143 | `result-track:5da3d96c324f4498af4f675b76a560c6704f156e4a09a034d54d6de7611bf090` |
| 18 | `lemma` | [Ideal.algebraMap_residueField_surjective](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-algebramap-residuefield-surjective--d8cdf51da4aae69331a736c0.md) | 148 | `result-track:d8cdf51da4aae69331a736c0906d690b9ebe407373a65ff9c7df5ec180a076a3` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--5185c0eaf1e6f3792995e17f.md) | 153 | `declaration-track:5185c0eaf1e6f3792995e17f6bd55e9b7e9d6b3af05d276e57cf7c2f434a78f2` |
| 20 | `def` | [Ideal.algEquivResidueFieldOfField](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-algequivresiduefieldoffield--8c1fc21f7b0d355af8be076c.md) | 158 | `declaration-track:8c1fc21f7b0d355af8be076c1de7397afcdc3f86bd867a35f234e432a4a7f302` |
| 21 | `lemma` | [Ideal.algEquivResidueFieldOfField_apply](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-algequivresiduefieldoffield-apply--69ea7bc3512c356126b589fe.md) | 165 | `result-track:69ea7bc3512c356126b589fee9401b80fad1ab2d2f0a65b466e9491488981117` |
| 22 | `lemma` | [Ideal.surjectiveOnStalks_residueField](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-surjectiveonstalks-residuefield--75668b43d881dc333548fcac.md) | 169 | `result-track:75668b43d881dc333548fcac3d7bc694056203b98044fb06a2710b50c7406f3d` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--2381a07541dc52382479daf7.md) | 184 | `declaration-track:2381a07541dc52382479daf75e54a7e3ff49756b1ce9c7adfc9ec0fc7caaaf0e` |
| 24 | `def` | [Ideal.residueFieldRingEquiv](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefieldringequiv--96c1f5aa1fbd18e60342aa1d.md) | 189 | `declaration-track:96c1f5aa1fbd18e60342aa1dd04a02e30282178e4d9866f70afd5cf8d98dec59` |
| 25 | `abbrev` | [Ideal.residueFieldAlgEquiv](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefieldalgequiv--c3340e40bba4618300cd3bd4.md) | 194 | `declaration-track:c3340e40bba4618300cd3bd4a19ed330d4f4b7692c319f35f459a47ea9c3ce65` |
| 26 | `abbrev` | [Ideal.residueFieldAlgEquiv'](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefieldalgequiv--5fd3fc2064ed8be742bcd562.md) | 199 | `declaration-track:5fd3fc2064ed8be742bcd5629d8507ae4f752d8fc4054d6b093bff070aa9bc10` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--3c50b185b8d18ffe0cfa6711.md) | 205 | `declaration-track:3c50b185b8d18ffe0cfa67116e3b39f3e0a74d2e23e7ea6bf0ea62905693bfde` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/instance--3e50817639846740270f1b11.md) | 208 | `declaration-track:3e50817639846740270f1b111d869e9596fa447958f130fea590acfd4069d04e` |
| 29 | `def` | [Ideal.ResidueField.lift](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-lift--0898eae8796c1228d7323fc6.md) | 217 | `declaration-track:0898eae8796c1228d7323fc67e7c0d54b75159260ed1c47ab330444042c84828` |
| 30 | `lemma` | [Ideal.ResidueField.lift_algebraMap](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-lift-algebramap--203b931d315842414f74c14b.md) | 224 | `result-track:203b931d315842414f74c14b4cde68ee7c08324115f8193c1fea8285a1a343c5` |
| 31 | `def` | [Ideal.ResidueField.liftₐ](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-lift--e47c76c86ad845d832560615.md) | 233 | `declaration-track:e47c76c86ad845d832560615a49b246f107c49afa958c5c241f8a871128f5e4f` |
| 32 | `lemma` | [Ideal.ResidueField.liftₐ_algebraMap](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-lift-algebramap--7ea5126054ead36d18a44e3d.md) | 239 | `result-track:7ea5126054ead36d18a44e3d1a8846892beb3d9eb995cb876f29199c4836d26e` |
| 33 | `lemma` | [Ideal.ResidueField.liftₐ_comp_toAlgHom](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-lift-comp-toalghom--934cd754081bab9f8f3ca769.md) | 244 | `result-track:934cd754081bab9f8f3ca769d0f85555536382dd35062ed21d3557a6035031b4` |
| 34 | `lemma` | [Ideal.ResidueField.ringHom_ext](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-ringhom-ext--d56444bfa87b1d5cfd4e56d9.md) | 250 | `result-track:d56444bfa87b1d5cfd4e56d969b1b55328735bd1eb5b2c7f4db8b29d26e9a5ff` |
| 35 | `lemma` | [Ideal.ResidueField.algHom_ext](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-alghom-ext--b3971a1e436e1c7838ddbd34.md) | 255 | `result-track:b3971a1e436e1c7838ddbd34582eddc4d39b60fee86bca86c807a64821d03315` |
| 36 | `lemma` | [Ideal.ResidueField.mapₐ_id](../../../../mathematics/Algebra/Ideal/Variant80701b0d0e6b52102b53bf608e8914a8050ac6f20731604eb6738656e2542c9d.lean/declarations/ideal-residuefield-map-id--a79f4c913642c8c60795e3c2.md) | 260 | `result-track:a79f4c913642c8c60795e3c26989b16033b12c239f6cbc9a8696fed773543260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
