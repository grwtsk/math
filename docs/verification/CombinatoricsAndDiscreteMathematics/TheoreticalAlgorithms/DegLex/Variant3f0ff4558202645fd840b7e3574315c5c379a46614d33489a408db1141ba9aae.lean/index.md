# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DegLex.Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dafeb43e91a75038cd995f00baf722cb17a09f3c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dafeb43e91a75038cd995f00baf722cb17a09f3c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex--4eec368b7f2a5761bb602f6a.md) | 39 | `declaration-track:4eec368b7f2a5761bb602f6a6e7d00da49dba81ca24bc9e1381dd06129d38c7a` |
| 2 | `def` | [toDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/todeglex--75b13e8030ab7d6ed3993b06.md) | 44 | `declaration-track:75b13e8030ab7d6ed3993b062b8f0db499528720b2dd1c028d893df8d6edff4a` |
| 3 | `theorem` | [toDegLex_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/todeglex-injective--cbb2341976d7ba9d95580148.md) | 46 | `result-track:cbb2341976d7ba9d9558014885a38f76268e20d6be6e174a5eb502a31a04dae9` |
| 4 | `theorem` | [toDegLex_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/todeglex-inj--8e323f47775c8f1cd9ad5772.md) | 48 | `result-track:8e323f47775c8f1cd9ad577223165288807892b858accccc29b3dab171a11585` |
| 5 | `def` | [ofDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/ofdeglex--e81d53640a119cf173ac99b4.md) | 51 | `declaration-track:e81d53640a119cf173ac99b4b44b69e46503a756d2f39dfedae5fc1349013af8` |
| 6 | `theorem` | [ofDegLex_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/ofdeglex-injective--9c450e0c720b67ced517ca89.md) | 53 | `result-track:9c450e0c720b67ced517ca8989772acc1c837a88b2353a59d5263a729314519c` |
| 7 | `theorem` | [ofDegLex_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/ofdeglex-inj--af4985ed7d615f3657098ebf.md) | 55 | `result-track:af4985ed7d615f3657098ebf812be6c6a94a9814d02545b5a2555bb97158c972` |
| 8 | `theorem` | [ofDegLex_symm_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/ofdeglex-symm-eq--521fef2bff3677a341c3de75.md) | 57 | `result-track:521fef2bff3677a341c3de755fea9b6009efb1fe74bac5d61c849975ffc56c84` |
| 9 | `theorem` | [toDegLex_symm_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/todeglex-symm-eq--0682244c3097764af5e9bd1b.md) | 59 | `result-track:0682244c3097764af5e9bd1bf73faffc564836bd47d14b18a6a8253929e6920c` |
| 10 | `theorem` | [ofDegLex_toDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/ofdeglex-todeglex--79ee227c13f3a1482f352555.md) | 61 | `result-track:79ee227c13f3a1482f3525554dc6d8bab98857bedb370eaacd318023ee98dac3` |
| 11 | `theorem` | [toDegLex_ofDegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/todeglex-ofdeglex--6673be012050f30001321a81.md) | 63 | `result-track:6673be012050f30001321a813c308c93c12899e6af3ebbd9114daca6fb220050` |
| 12 | `def` | [DegLex.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-rec--ff7d1dbf50887ff54bd34618.md) | 67 | `declaration-track:ff7d1dbf50887ff54bd346183398ab1dcbf86a3e5a57519bb93f0b201e7f5d91` |
| 13 | `lemma` | [DegLex.forall_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-forall-iff--9cae9f20f1d20e8ec054f45d.md) | 70 | `result-track:9cae9f20f1d20e8ec054f45d083310f154faa9d2f06d9e1c2192c7d3bf66104e` |
| 14 | `lemma` | [DegLex.exists_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-exists-iff--561253d6792f7669ca6df021.md) | 71 | `result-track:561253d6792f7669ca6df0218f72940009dcda9142451f2d60dca8c67f9e9d6e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/instance--db5a00e0627ba34c6fd6dac8.md) | 73 | `declaration-track:db5a00e0627ba34c6fd6dac8cacc203bfdc5159fe6eee447a8bb0c1603ee225b` |
| 16 | `theorem` | [toDegLex_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/todeglex-add--cc986410c6d1e1f3d2e3df15.md) | 76 | `result-track:cc986410c6d1e1f3d2e3df157796be2e6a08c33ef68975b751a32544ebbb272c` |
| 17 | `theorem` | [ofDegLex_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/ofdeglex-add--df0b5aea30ddfc52e4c6dbb3.md) | 79 | `result-track:df0b5aea30ddfc52e4c6dbb3d5e33dbfccc2e102be970d2bf320de472c129d13` |
| 18 | `def` | [DegLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex--059cc8b25f7321d9cebff1d7.md) | 88 | `declaration-track:059cc8b25f7321d9cebff1d7e711db9f1cdc9c895736c6b8bce4b756db9fbda6` |
| 19 | `theorem` | [degLex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-def--522e8c43701e7f52a7e0c220.md) | 92 | `result-track:522e8c43701e7f52a7e0c220e975b1e9114cfdc15a7989b20e8affd37dca23df` |
| 20 | `theorem` | [wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/wellfounded--08ea6a7b18362878203c362e.md) | 98 | `result-track:08ea6a7b18362878203c362e826c4771d17941ac422d1424969a59341afcefb4` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/instance--369dad74186777ef1383819b.md) | 108 | `declaration-track:369dad74186777ef1383819b4d1a527bc4b9f94692760acbdca53e42b7fd32f5` |
| 22 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/lt-def--c843652effa1922ba5a5b2a8.md) | 111 | `result-track:c843652effa1922ba5a5b2a8274726170a9a7ad37328faa818703b67d74d2217` |
| 23 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/lt-iff--e5544dab526f8a8ebee7ba19.md) | 116 | `result-track:e5544dab526f8a8ebee7ba19bcbd6b7087e6f54777784d7597cae0da5201726e` |
| 24 | `instance` | [isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/isstrictorder--39dbdbce2801ef3252c78b3a.md) | 123 | `declaration-track:39dbdbce2801ef3252c78b3ac2a3f0a9ec28a64733bb979e1d51f4387b68871d` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/instance--268c04b52750071976f6f93b.md) | 137 | `declaration-track:268c04b52750071976f6f93bd0cbcccffecbcaef80940a559f9adcf9bc8364c8` |
| 26 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/le-iff--b4509477cddda4c295252aab.md) | 142 | `result-track:b4509477cddda4c295252aab57ae370d62a58a59f423b70c2aff7c819e84ffb7` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/instance--692eadc1fe35712286c2d37d.md) | 152 | `declaration-track:692eadc1fe35712286c2d37d7fe0031c44e2f82b939053870d5d1f210d03eb2a` |
| 28 | `theorem` | [single_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/single-strictanti--d399bd616f11566a488490c6.md) | 161 | `result-track:d399bd616f11566a488490c664468cc3949b23490258188643fa0f90b95520c6` |
| 29 | `theorem` | [single_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/single-antitone--7c64422ff29278379ed30efb.md) | 166 | `result-track:7c64422ff29278379ed30efb003fb34d654ccc90145fc5781501aeea1a8e6786` |
| 30 | `theorem` | [single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/single-lt-iff--e73e0bec77f48dd92a0861f7.md) | 169 | `result-track:e73e0bec77f48dd92a0861f7935d39e8a03ce0ea2ce21badc165699a81622a5e` |
| 31 | `theorem` | [single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/single-le-iff--713992b36257af9f41c00194.md) | 173 | `result-track:713992b36257af9f41c00194d600af6a1220f6b3eb7d129e2b8601724ba0b3e7` |
| 32 | `theorem` | [monotone_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/monotone-degree--561b6902b49d11d98d2f4d17.md) | 177 | `result-track:561b6902b49d11d98d2f4d17b5cb4ca169459fbb1f49cda3dd868cd0d1dfa322` |
| 33 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/orderbot--627bc6d92d37806d58539d88.md) | 185 | `declaration-track:627bc6d92d37806d58539d8893b475e8d1ab0113103ab8df7f9d0ef2e53a84c1` |
| 34 | `instance` | [wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/wellfoundedlt--055ced91379056bf071874c4.md) | 194 | `declaration-track:055ced91379056bf071874c4d2eb9ed3a3c54fc059b716afaee16742fc7ce57e` |
| 35 | `def` | [degLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex--dfd6a2cb85bd70a3de5bd68a.md) | 208 | `declaration-track:dfd6a2cb85bd70a3de5bd68a0f06f6c95404618e300227158aa641c046bb6458` |
| 36 | `theorem` | [degLex_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-le-iff--d85919193c1406f4f26aff14.md) | 220 | `result-track:d85919193c1406f4f26aff14495394be2600d8f7c39db7c9002dfa6972b1af83` |
| 37 | `theorem` | [degLex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-lt-iff--0aba2d3cc8f336c06026214f.md) | 224 | `result-track:0aba2d3cc8f336c06026214f0cd362cd485439c6ab291a5977897edc4d9c3365` |
| 38 | `theorem` | [degLex_single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-single-le-iff--b90988d3ab59a79e8048d24a.md) | 228 | `result-track:b90988d3ab59a79e8048d24a0ced00707fcbab8f47024e8e560bfcbbb3a4e670` |
| 39 | `theorem` | [degLex_single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/deglex-single-lt-iff--c39d0ccb5c3291315b5f5701.md) | 232 | `result-track:c39d0ccb5c3291315b5f5701b332a14a383ea051283de59aa57dcf087f0d72dc` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/example--da36097d770b53635b26fb42.md) | 243 | `declaration-track:da36097d770b53635b26fb42dd526c653a3bbf4b188e1149c9b02d6f8c7f33c2` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/example--6b80f48213a4ef3730be781b.md) | 248 | `declaration-track:6b80f48213a4ef3730be781b88733f8d8b60dabbb1017075f3db7278a14c4f82` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant3f0ff4558202645fd840b7e3574315c5c379a46614d33489a408db1141ba9aae.lean/declarations/example--d291634017c0550d172493e5.md) | 256 | `declaration-track:d291634017c0550d172493e5bfa79321040acf4d1fa0ee31c7d64547c831ca4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
