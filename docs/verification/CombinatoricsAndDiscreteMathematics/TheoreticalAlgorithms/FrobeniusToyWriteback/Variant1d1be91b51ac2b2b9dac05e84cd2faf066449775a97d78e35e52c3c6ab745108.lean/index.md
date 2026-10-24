# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FrobeniusToyWriteback.Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d99bac9d6327b9dd9ec69d5ffeb273d8b9f3f228",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d99bac9d6327b9dd9ec69d5ffeb273d8b9f3f228`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean.json)

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
| 1 | `structure` | [RustToyFrobeniusReceipt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/rusttoyfrobeniusreceipt--22ecdcf020d7be395f0f5139.md) | 13 | `declaration-track:22ecdcf020d7be395f0f513989e36bfe404e3438cbb2526915631ff4780f3aa8` |
| 2 | `def` | [currentMoveReceipt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/currentmovereceipt--57320a5dad00cff83b057cba.md) | 25 | `declaration-track:57320a5dad00cff83b057cba688a094b21ed5c4047eacbca0db17ca51ad98360` |
| 3 | `theorem` | [currentMove_ringAlgebraSatisfied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/currentmove-ringalgebrasatisfied--5f3b88c0f3bd19a213fd11bf.md) | 37 | `result-track:5f3b88c0f3bd19a213fd11bfb1360705a9f9d3026fa0c8aad9efd47cf3a200a7` |
| 4 | `theorem` | [currentMove_frobeniusDualitySatisfied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/currentmove-frobeniusdualitysatisfied--516e33bd63e5832d97899f81.md) | 41 | `result-track:516e33bd63e5832d97899f81518b5be34c5d56fb8742e8a3b09fdd92282a5c8c` |
| 5 | `theorem` | [currentMove_noUnresolvedResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/currentmove-nounresolvedresidue--30732883232cc20f52414f8b.md) | 45 | `result-track:30732883232cc20f52414f8bc4ff5f73b2abb5212d97583602e9e6535b0613c4` |
| 6 | `inductive` | [Carrier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/carrier--ee7b0ef94519c65c07495c7d.md) | 49 | `declaration-track:ee7b0ef94519c65c07495c7d9ae25771d89133ccd8bb98dbdacd606711784fbe` |
| 7 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/add--9b3a130a5a21fe3656a23a13.md) | 56 | `declaration-track:9b3a130a5a21fe3656a23a1333e7e2bc1ce776cef9cd6d6e419df22cd5cfb2fb` |
| 8 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/mul--81278ffd7f13b206f4e26bf5.md) | 75 | `declaration-track:81278ffd7f13b206f4e26bf5402459e637b29b0543a17e925291a6082b0e1786` |
| 9 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/neg--f955a88802b9e7ffd26715c2.md) | 94 | `declaration-track:f955a88802b9e7ffd26715c2d165842f246624145c13bd0fed1ee0f51e67ec1f` |
| 10 | `def` | [trace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/trace--7b05e2c5b792b74430051849.md) | 100 | `declaration-track:7b05e2c5b792b744300518493914fdbd896c7596656bcb2f48ac90ba2bae9c55` |
| 11 | `def` | [pairing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/pairing--5178a9b8c300758fa37917ef.md) | 106 | `declaration-track:5178a9b8c300758fa37917ef9fcaba9987b8b8946742b7bd9c0b234ccb7fc5cf` |
| 12 | `def` | [allCarrier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/allcarrier--cbc41e2c7af0cabdab549cdd.md) | 108 | `declaration-track:cbc41e2c7af0cabdab549cddda2607eff62ed66159ce3cb277680db0c6959ce0` |
| 13 | `def` | [carrierEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/carriereq--4543897c2a43d764ed2e5fa1.md) | 110 | `declaration-track:4543897c2a43d764ed2e5fa14b07888c1bca4bebb5f79411691c828d9a8ede25` |
| 14 | `def` | [natEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/nateq--0743df056dbca5f948798bb0.md) | 111 | `declaration-track:0743df056dbca5f948798bb07d844fd6982e2859ced44beee7e37d84cd3c7be1` |
| 15 | `def` | [all1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/all1--577b9e3bc2556f4fac8440a8.md) | 112 | `declaration-track:577b9e3bc2556f4fac8440a8af2fe3014589c08f8eb6cb7cc684baeb363a8ad5` |
| 16 | `def` | [all2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/all2--cfd15b16d6bcdf0bbc80bc8f.md) | 113 | `declaration-track:cfd15b16d6bcdf0bbc80bc8ff50654f74b442db1097fe54737b6c252c8900f45` |
| 17 | `def` | [all3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/all3--ad75fdce36846f42e1fce0c4.md) | 114 | `declaration-track:ad75fdce36846f42e1fce0c40d2f672287df46724d7630899a7cf6c01d4659e8` |
| 18 | `def` | [addAssocCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/addassoccheck--dd0041bcac9d438c4c97791d.md) | 116 | `declaration-track:dd0041bcac9d438c4c97791d5d79e1672ae0301a6eb49340ae9bdf056d454c92` |
| 19 | `def` | [addCommCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/addcommcheck--6c296f142cc1ea9f1535df2c.md) | 118 | `declaration-track:6c296f142cc1ea9f1535df2ca2c2c25d0112a38c0258f83b8fa5f76ef174b0c8` |
| 20 | `def` | [addZeroCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/addzerocheck--9a3b8fdd30d2515f44a794c6.md) | 119 | `declaration-track:9a3b8fdd30d2515f44a794c6be0aed932335aebc4f026dc9036d60233125519c` |
| 21 | `def` | [addInverseCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/addinversecheck--cde5ed79674bf4e93cb359e5.md) | 121 | `declaration-track:cde5ed79674bf4e93cb359e51f029e7e4c3a1dafcec8ee0e66f20c1b6c5440e0` |
| 22 | `def` | [mulAssocCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/mulassoccheck--8e8a070004de2cbf8af6a3c8.md) | 123 | `declaration-track:8e8a070004de2cbf8af6a3c817b56db305b3c375c122554fc2e35cbe9511d93f` |
| 23 | `def` | [mulOneCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/mulonecheck--b849d055deb408c719d4e1c9.md) | 125 | `declaration-track:b849d055deb408c719d4e1c9876ff1768ec8bec9bd93eb38e5d57783fb8bd113` |
| 24 | `def` | [zeroMulCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/zeromulcheck--21629d8e8f84b398c41ff422.md) | 127 | `declaration-track:21629d8e8f84b398c41ff4220e8157c569221f9663d9c12947a2b15488e12947` |
| 25 | `def` | [mulZeroCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/mulzerocheck--a14cb900e786b8510ebe16c5.md) | 128 | `declaration-track:a14cb900e786b8510ebe16c5a77e995aaed1cf3f8565798f5ef100ae7c5bcbe6` |
| 26 | `def` | [leftDistribCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/leftdistribcheck--2ef236928312fc0be8966312.md) | 129 | `declaration-track:2ef236928312fc0be8966312d7bfdd443349c469ba1bdc35dcf58e098fb73080` |
| 27 | `def` | [rightDistribCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/rightdistribcheck--48001363d62ed73a5e55d9fd.md) | 131 | `declaration-track:48001363d62ed73a5e55d9fdfe01bd9141165eb5afd561ea159fed154104f376` |
| 28 | `def` | [ringAlgebraCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/ringalgebracheck--6cbacad1e7c30dc6cd9b65cb.md) | 134 | `declaration-track:6cbacad1e7c30dc6cd9b65cbcb5d8b34fce9fb22e6fce843c010e0c7b8592af4` |
| 29 | `def` | [frobeniusAssociativityCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/frobeniusassociativitycheck--87060da84122c519bd8b01a7.md) | 138 | `declaration-track:87060da84122c519bd8b01a76cd23b38c73c07d74ad5ddf1b8f7123ac79517c0` |
| 30 | `def` | [leftNondegenerateCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/leftnondegeneratecheck--51ed034d54e16a4cce73bbdd.md) | 140 | `declaration-track:51ed034d54e16a4cce73bbdd9230a7166a7b390f91fa2fcf0afd9e8b75dce4bb` |
| 31 | `def` | [rightNondegenerateCheck](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/rightnondegeneratecheck--024214352a6bb1d7b7fc7f06.md) | 142 | `declaration-track:024214352a6bb1d7b7fc7f06801c8469ccaf517857449dfd4369811e3eb1c9f5` |
| 32 | `theorem` | [ringAlgebraCheck_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/ringalgebracheck-eq-true--fe16ac120b4770836487cf4f.md) | 145 | `result-track:fe16ac120b4770836487cf4f36f81a266f442a03888121ac7e7b7206da666576` |
| 33 | `theorem` | [frobeniusAssociativityCheck_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/frobeniusassociativitycheck-eq-true--78d66a31102088973c88efab.md) | 148 | `result-track:78d66a31102088973c88efab85faa5976a8e48e6a1671d4cfa0ef648343b73ba` |
| 34 | `theorem` | [leftNondegenerateCheck_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/leftnondegeneratecheck-eq-true--6cb585e37d69d90616102e02.md) | 152 | `result-track:6cb585e37d69d90616102e02fa776fde962d39fcd14df57ffab4d4d974ac43a7` |
| 35 | `theorem` | [rightNondegenerateCheck_eq_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/declarations/rightnondegeneratecheck-eq-true--52d4d25b47930ce9bc62335a.md) | 156 | `result-track:52d4d25b47930ce9bc62335a6cec51f9aec538521de0e899d41930134fd7be35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
