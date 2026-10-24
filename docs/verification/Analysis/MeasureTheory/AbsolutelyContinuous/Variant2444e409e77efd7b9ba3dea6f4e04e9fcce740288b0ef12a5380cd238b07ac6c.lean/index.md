# Verification target: GRWTSK.Analysis.MeasureTheory.AbsolutelyContinuous.Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "012942dd5941ce637b7a7f5a40452fd299a18000",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `012942dd5941ce637b7a7f5a40452fd299a18000`.

Source path: `GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean.json)

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
| 1 | `def` | [AbsolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous--d1acf9f9865ebbb75c085226.md) | 58 | `declaration-track:d1acf9f9865ebbb75c0852260352c59b4d99b9a56bd9c2ae1aa364d5491bf09b` |
| 2 | `theorem` | [absolutelyContinuous_of_le](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-of-le--273ee7e240b0a20b405363cb.md) | 64 | `result-track:273ee7e240b0a20b405363cbbaa890bc62734966af5a441d41575456a48529e4` |
| 3 | `theorem` | [absolutelyContinuous_of_eq](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-of-eq--23aefddec11d754bd97a47a4.md) | 69 | `result-track:23aefddec11d754bd97a47a4530b12f3c01cde107c55f369e267429ed5e81004` |
| 4 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/mk--918bc4b1f8a5349a1248a5b0.md) | 76 | `result-track:918bc4b1f8a5349a1248a5b0bcdd31f7b22102fb619e33ff6840b4e6a1a86870` |
| 5 | `theorem` | [refl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/refl--54763310185da170ea13f60b.md) | 82 | `result-track:54763310185da170ea13f60b7f6c3ecf7fbfb02fb3f5ddef41bbfe327cc63e59` |
| 6 | `theorem` | [rfl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/rfl--298e8ff2abfa5b7dcf1985f5.md) | 85 | `result-track:298e8ff2abfa5b7dcf1985f53ab005303e4546ae23bf395680a478a03ccc1818` |
| 7 | `instance` | [instRefl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/instrefl--64c7541abbdc8a0a1ba7b5ae.md) | 87 | `declaration-track:64c7541abbdc8a0a1ba7b5ae27aa717f27e91596e6fee34ab18971f614d1133e` |
| 8 | `lemma` | [zero](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/zero--fd002516ef8ecc67ce8e015c.md) | 91 | `result-track:fd002516ef8ecc67ce8e015cb149f0c271c9f76186c730612dcbb5dd1d6cc53c` |
| 9 | `theorem` | [trans](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/trans--16510cf73724edbac54df9fd.md) | 94 | `result-track:16510cf73724edbac54df9fdc2124867af75518c4231e9e973183a0ecf57acb7` |
| 10 | `theorem` | [map](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/map--6101819ec2e3464d98925e29.md) | 97 | `result-track:6101819ec2e3464d98925e297af8951bdd83a5e60e1bddb6c4b3bee09d788635` |
| 11 | `theorem` | [smul_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/smul-left--612b0dc5c76ce9ea018f9536.md) | 100 | `result-track:612b0dc5c76ce9ea018f9536ef001c9fd559c774b732b4155bcafcd64dae0bda` |
| 12 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/smul--a545dfaa533a7f0149dfbd75.md) | 107 | `result-track:a545dfaa533a7f0149dfbd753dc2e19a5ed3e08949b0d7c1147dd716b6bce74e` |
| 13 | `lemma` | [add](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/add--6da9d9eef51a47770c480797.md) | 113 | `result-track:6da9d9eef51a47770c480797ff8c36e9d282ff4bfeff688e5dc554fc61b58d7a` |
| 14 | `lemma` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/add-left-iff--07d44ea59ce5cd9d8ba67552.md) | 118 | `result-track:07d44ea59ce5cd9d8ba675524143b649b3a3a0d06c52cbda0f1a565784478286` |
| 15 | `lemma` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/add-left--04a9592ed9d9206c7cbcf5e6.md) | 126 | `result-track:04a9592ed9d9206c7cbcf5e6321233ce5d2b994c92af17cf0f4c3c8d9917c6a3` |
| 16 | `lemma` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/add-right--245451b2a1f075f5e48a8e6e.md) | 129 | `result-track:245451b2a1f075f5e48a8e6effcb208a4b793b21d902a72b4898eaf7efea7ece` |
| 17 | `lemma` | [add_right'](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/add-right--546f82e3d6ea2441a2526c6a.md) | 134 | `result-track:546f82e3d6ea2441a2526c6aca64ca65088035beceaf23aadec517b6b04e9e4d` |
| 18 | `lemma` | [null_mono](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/null-mono--26fd133163492b94da71e887.md) | 137 | `result-track:26fd133163492b94da71e887a6f3fa605554df3034ad02047dcd7426b181fb63` |
| 19 | `lemma` | [pos_mono](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/pos-mono--72f1303c0266e63601b8c9cd.md) | 141 | `result-track:72f1303c0266e63601b8c9cdcd22446ee106af9a1ac5a23e9c9a7015902f65af` |
| 20 | `lemma` | [absolutelyContinuous_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-zero-iff--f8b49b51b80998e817331ba0.md) | 149 | `result-track:f8b49b51b80998e817331ba07552298c8c186d5253f6a86d35f89eb77a91300f` |
| 21 | `lemma` | [absolutelyContinuous_sum_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-sum-left--60a406f6d94425f22d5cf3a9.md) | 155 | `result-track:60a406f6d94425f22d5cf3a93b4cdd2484be34994fd931d1b7595fc02c5e6df8` |
| 22 | `lemma` | [absolutelyContinuous_sum_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-sum-right--59066998018295fe69d5295c.md) | 159 | `result-track:59066998018295fe69d5295c8895d2e4621152b0b4f1aac3281ec37f1c836d68` |
| 23 | `lemma` | [smul_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/smul-absolutelycontinuous--7c5cf3ebe826811f5574f223.md) | 165 | `result-track:7c5cf3ebe826811f5574f2231934f3c2eae7fd1b7efd8ecec4b4cfddf28850c1` |
| 24 | `theorem` | [absolutelyContinuous_of_le_smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-of-le-smul--70315d7b1e706756d158f2b3.md) | 167 | `result-track:70315d7b1e706756d158f2b36aa3bae343e284906edeb22c8fec21996ceeb8c0` |
| 25 | `lemma` | [absolutelyContinuous_smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-smul--db54848289940fb5536823ff.md) | 171 | `result-track:db54848289940fb5536823fff52a7f2c52a084fa43bba94dc2a7f555a213e68e` |
| 26 | `lemma` | [AbsolutelyContinuous.smul_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-smul-right--1d1c69e72cad9a47aa51348f.md) | 174 | `result-track:1d1c69e72cad9a47aa51348f99fb6d4b09cde656424f0f871f431325574401f7` |
| 27 | `theorem` | [ae_le_iff_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/ae-le-iff-absolutelycontinuous--017ea164f46baf26f7b8ef13.md) | 177 | `result-track:017ea164f46baf26f7b8ef1342791649ecf58c122bdd8b67cbb1790144afd625` |
| 28 | `theorem` | [AbsolutelyContinuous.ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-ae-eq--8d720ee962b4efecb029bd25.md) | 187 | `result-track:8d720ee962b4efecb029bd25e316068fc859adc3b3e77a0a2f468195443995af` |
| 29 | `theorem` | [AEDisjoint.of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/aedisjoint-of-absolutelycontinuous--5c34c2ab6fbbef5ce60f5a18.md) | 192 | `result-track:5c34c2ab6fbbef5ce60f5a18e7349f2698eddf2152db450680ae93753c32b0ac` |
| 30 | `theorem` | [NullMeasurableSet.mono_ac](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/nullmeasurableset-mono-ac--8f16bebb97bc5aa20102d4f9.md) | 196 | `result-track:8f16bebb97bc5aa20102d4f9d3f9bbf8e94f2c73e53c3553799c30c7fd90389e` |
| 31 | `theorem` | [ae_eq_comp'](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/ae-eq-comp--f8790e5b18c827120396f14f.md) | 201 | `result-track:f8790e5b18c827120396f14fc2acbd08288aeba05784f2e8da0158c793196a6a` |
| 32 | `theorem` | [ae_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/ae-eq-comp--d90cea72b1dd6efb05dd90ef.md) | 205 | `result-track:d90cea72b1dd6efb05dd90efda9d0f19a87974b8a6742c4bbd1a674e0db1ec87` |
| 33 | `lemma` | [absolutelyContinuous_map](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean/declarations/absolutelycontinuous-map--dedeaa332e44f4bea89dfcde.md) | 217 | `result-track:dedeaa332e44f4bea89dfcde8de61e1b0267ad50a53afe29774976400ff180fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
