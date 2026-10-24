# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "650b0f40597f259bb94fc556273889a1a1ca6162",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `650b0f40597f259bb94fc556273889a1a1ca6162`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean.json)

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
| 1 | `instance` | [instAddLeftMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/instaddleftmono--ad827c5e725bfc7948ef5db5.md) | 40 | `declaration-track:ad827c5e725bfc7948ef5db5e906aa2196ad45c91e2761de33dd147c583bd7e1` |
| 2 | `instance` | [instAddLeftReflectLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/instaddleftreflectle--574ef47d473ea55b2262ad77.md) | 42 | `declaration-track:574ef47d473ea55b2262ad77ec51064fdbf0b348b0acab6a1601e352a76b79ba` |
| 3 | `instance` | [instAddCancelCommMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/instaddcancelcommmonoid--699631868ecfdda55b491d27.md) | 45 | `declaration-track:699631868ecfdda55b491d27689ada9cb59f00c27b94301a417dc28fcdc1217c` |
| 4 | `lemma` | [mem_of_mem_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/mem-of-mem-nsmul--0e52d2e9afffcf9af4a900fb.md) | 53 | `result-track:0e52d2e9afffcf9af4a900fbfd5190ee9e4f188fbe794181d7a2ec511fdbe288` |
| 5 | `lemma` | [mem_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/mem-nsmul--595e9644b1879924cde62a4b.md) | 63 | `result-track:595e9644b1879924cde62a4b45b00441d9b422388343598621d7854f60719f4b` |
| 6 | `lemma` | [mem_nsmul_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/mem-nsmul-of-ne-zero--7ff8392247aa8cb6a27e77ff.md) | 71 | `result-track:7ff8392247aa8cb6a27e77ff891935457953c6173a3edce84ce1e1cdbfb6054d` |
| 7 | `theorem` | [smul_subset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/smul-subset-self--d0a6f673ef5979787e2c6505.md) | 74 | `result-track:d0a6f673ef5979787e2c65055921fb1ea8053bc7d1c5b86aaac9ce83d3537026` |
| 8 | `theorem` | [subset_smul_self_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/subset-smul-self-of-ne-zero--0d6e8b6b171e68ff0724a5e3.md) | 77 | `result-track:0d6e8b6b171e68ff0724a5e3f3f16b8ad6f5307e933bc0eb5803275cb97e319a` |
| 9 | `lemma` | [nsmul_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/nsmul-cons--cc683b73482b593bf723f8e8.md) | 80 | `result-track:cc683b73482b593bf723f8e80fb7c58ac7eea6fc4bd3be5df7f99192d6db3072` |
| 10 | `def` | [cardHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/cardhom--ec54ad4bd195d22bab0db9e6.md) | 88 | `declaration-track:ec54ad4bd195d22bab0db9e698c1039ca71368d48380ca40e1759ce1cd48dbcb` |
| 11 | `lemma` | [card_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/card-nsmul--8caf49bdce1cc635dc7cbc26.md) | 94 | `result-track:8caf49bdce1cc635dc7cbc2604d46179ca37b04ab7192ebec7848dd06139e738` |
| 12 | `def` | [replicateAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/replicateaddmonoidhom--8d7d3890024b0d548203621a.md) | 100 | `declaration-track:8d7d3890024b0d548203621ada97733727382edd8646942c58feaf0abc75d8db` |
| 13 | `lemma` | [nsmul_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/nsmul-replicate--d76afdad615e08d8004ff25d.md) | 105 | `result-track:d76afdad615e08d8004ff25db149c923a22ff2b8fde1a5065e9040fcbd17a1ed` |
| 14 | `lemma` | [nsmul_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/nsmul-singleton--671c6931067db8736ac9867b.md) | 108 | `result-track:671c6931067db8736ac9867bb041764316c5ab9ae8bb3d0ce67678520a74e8b4` |
| 15 | `def` | [mapAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/mapaddmonoidhom--2132b5bac4c60f25e072f95f.md) | 115 | `declaration-track:2132b5bac4c60f25e072f95f432e786d6f95a8e9bccd610ec612d608cef23b63` |
| 16 | `lemma` | [coe_mapAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/coe-mapaddmonoidhom--29a85d714b642c8c5d039cc3.md) | 121 | `result-track:29a85d714b642c8c5d039cc32b25bdd55d319d419a588f2234d00fcf1e63fa27` |
| 17 | `lemma` | [map_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/map-nsmul--c29119204ad6d02ec9ffcd69.md) | 123 | `result-track:c29119204ad6d02ec9ffcd694986f0ba5bc596821bd5063981a6e380e1eb46c7` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/instance--8f01faa17fdfb4488e7bba68.md) | 131 | `declaration-track:8f01faa17fdfb4488e7bba6883d60ed7bdd65b9537af468a4062f6ff3a955443` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/instance--93ff5d14079eaf90597623d9.md) | 133 | `declaration-track:93ff5d14079eaf90597623d9709825b49bec2bfd8176d84f5eb3c8569650640e` |
| 20 | `lemma` | [filter_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/filter-nsmul--d6d958d804b46163ddd26e6d.md) | 144 | `result-track:d6d958d804b46163ddd26e6dbbd87f57271235b6292e671d2b26f0f0d9583ec8` |
| 21 | `lemma` | [countP_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/countp-nsmul--6c7846d5f5effdafe4fa468f.md) | 158 | `result-track:6c7846d5f5effdafe4fa468f9179fe54f34606f62000ca182afabea39fa28cba` |
| 22 | `def` | [countPAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/countpaddmonoidhom--1ecf046c46b153161d287ae4.md) | 163 | `declaration-track:1ecf046c46b153161d287ae4e996aa92b27c80e88690963de0a4a29f558e4b26` |
| 23 | `lemma` | [coe_countPAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/coe-countpaddmonoidhom--700ca5a62e3bf6fb53f5988f.md) | 168 | `result-track:700ca5a62e3bf6fb53f5988f23ecb5cb73d30220a04a66bdecd6b12388803b87` |
| 24 | `lemma` | [dedup_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/dedup-nsmul--b8eb02040470c037d97076c4.md) | 172 | `result-track:b8eb02040470c037d97076c427c4a160114153d0cfd2cbac8a57f7da604115da` |
| 25 | `lemma` | [Nodup.le_nsmul_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/nodup-le-nsmul-iff-le--c10fbaf972146d21dc283d94.md) | 175 | `result-track:c10fbaf972146d21dc283d94a7407deab15cb6c9dfa1cb5edc710d955d1a932f` |
| 26 | `def` | [countAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/countaddmonoidhom--cc37d228277aec5c70fb2af6.md) | 185 | `declaration-track:cc37d228277aec5c70fb2af6c7b8c85ab0bf8908c47fff00468866036e324171` |
| 27 | `lemma` | [coe_countAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/coe-countaddmonoidhom--ca00340f016ea81c23509abe.md) | 189 | `result-track:ca00340f016ea81c23509abedf3b1bc362c92f599e1aa86179ed2f3ed4750b6b` |
| 28 | `lemma` | [count_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/count-nsmul--b612f4eeefe5dc4225211ab9.md) | 192 | `result-track:b612f4eeefe5dc4225211ab958e36eaab5039749d634d85af73f7bf3953e4e05` |
| 29 | `theorem` | [le_card_smul_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/le-card-smul-iff-subset--c9554adc52eceb9726c800af.md) | 197 | `result-track:c9554adc52eceb9726c800af23c4239ac2c244f4d68e1be1356085b183656772` |
| 30 | `lemma` | [addHom_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/addhom-ext--e946679ee4ec8872f5653d18.md) | 207 | `result-track:e946679ee4ec8872f5653d18968e32206ebd170d7531c36c65fdec845f5eeae5` |
| 31 | `theorem` | [le_smul_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean/declarations/le-smul-dedup--dc56ce3e73993e752e4ff160.md) | 213 | `result-track:dc56ce3e73993e752e4ff16016721df7a5ad5d40a10f0087bc36d77ceb0fd11e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
