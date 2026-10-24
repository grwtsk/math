# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinEnum.Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc46047c81537276ecee3702c76b8d571532396",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc46047c81537276ecee3702c76b8d571532396`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/finenum--c736282e6de471a5f2ef2313.md) | 32 | `declaration-track:c736282e6de471a5f2ef2313344da7e38fe2fefcbef388e84130b9580c7679c1` |
| 2 | `def` | [ofEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/ofequiv--4cc0e68469981540e8c48df1.md) | 47 | `declaration-track:4cc0e68469981540e8c48df15f67b70770abda42031fe30ecaefebf417bcc965` |
| 3 | `def` | [ofNodupList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/ofnoduplist--bd7d322fcbc16a57793a29e7.md) | 53 | `declaration-track:bd7d322fcbc16a57793a29e77763b9a0537a6dd3f567ad496e5284b20b2fe988` |
| 4 | `def` | [ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/oflist--11b533d34fe0d75c86cabbe7.md) | 61 | `declaration-track:11b533d34fe0d75c86cabbe799f886a2018d2be95920fd00acd2641e8abc2800` |
| 5 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/tolist--1c7607e3738ecc8c46ce107b.md) | 65 | `declaration-track:1c7607e3738ecc8c46ce107b03bab5846333d54fea5633a6495891ffdcab6075` |
| 6 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/mem-tolist--a6e1b17e5c8d2d61b9390961.md) | 71 | `result-track:a6e1b17e5c8d2d61b9390961b7e839884fe6d02fc9c9cf4293d399dba61df61d` |
| 7 | `theorem` | [nodup_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/nodup-tolist--613689106495a929a79e1e0d.md) | 75 | `result-track:613689106495a929a79e1e0d97127304be7af9de35a54a8dd8395127c971438c` |
| 8 | `def` | [ofSurjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/ofsurjective--2d2c691229beccabb6b1856d.md) | 79 | `declaration-track:2d2c691229beccabb6b1856d4c51a85cdfe28aa2efd8dc9394fb87deff2f2667` |
| 9 | `def` | [ofInjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/ofinjective--8223fb50ce29da226c124c4b.md) | 83 | `declaration-track:8223fb50ce29da226c124c4bd00e59e12b7f25115014eab98e3bd6c5812a1d47` |
| 10 | `instance` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FinEnum.Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.ULift.instFinEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-finenum-variant7ee68bae7--2413ed03ca34768af4287fd6.md) | 92 | `declaration-track:2413ed03ca34768af4287fd66773d1c1982704cd19258fc2e0b6e07ddfbe2d09` |
| 11 | `theorem` | [card_ulift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-ulift--4055108ed2e0fd44225f9cfd.md) | 96 | `result-track:4055108ed2e0fd44225f9cfda0e1d4e554c026930e167108d884e3ea137ef795` |
| 12 | `lemma` | [equiv_up](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/equiv-up--6509d04904d76f46b8d2283b.md) | 102 | `result-track:6509d04904d76f46b8d2283b9d1bbb2df13c33829c751519d8c4f51ed7dedc2c` |
| 13 | `lemma` | [equiv_down](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/equiv-down--18da8971fc99270e3799bff1.md) | 103 | `result-track:18da8971fc99270e3799bff1dff7e38567caf7f14df116df5c8d85b440d989f8` |
| 14 | `lemma` | [up_equiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/up-equiv-symm--96e641718d166b200b595248.md) | 104 | `result-track:96e641718d166b200b595248a9d745c84ac6710c1374eb12ef3b02282f13e241` |
| 15 | `lemma` | [down_equiv_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/down-equiv-symm--60be39e4bf15af6897d7616f.md) | 105 | `result-track:60be39e4bf15af6897d7616f9c3a4f78979d792191a3d421f72612d874af1e81` |
| 16 | `instance` | [pempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/pempty--142ab81b0d2d13738f4e54b0.md) | 109 | `declaration-track:142ab81b0d2d13738f4e54b0e421c522654348913e8e203c5d22457d40ab58d0` |
| 17 | `instance` | [empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/empty--20b88725ee791aff632cd064.md) | 112 | `declaration-track:20b88725ee791aff632cd0642976bb543e8b5b6af93938b20a6e71128dfe9aec` |
| 18 | `instance` | [punit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/punit--79d3240580f4330b1ccab4e0.md) | 115 | `declaration-track:79d3240580f4330b1ccab4e05a6375eb2ce9b0eeed6151f19c379d858116a30f` |
| 19 | `instance` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/prod--6bc537369e18ca31ccdead68.md) | 118 | `declaration-track:6bc537369e18ca31ccdead68d5c955dde00d8df5c1e5e71a5acbf72d8b4e5593` |
| 20 | `instance` | [sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/sum--279c36b48922493b39168fb2.md) | 121 | `declaration-track:279c36b48922493b39168fb28dba8123f0fb6df9b8cc92a626b4c45932fc2e1b` |
| 21 | `instance` | [fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/fin--01c6370ab330ce7ceaa3b829.md) | 124 | `declaration-track:01c6370ab330ce7ceaa3b829c4b571f965abe4e6894860b5b93c072ecaaea0d9` |
| 22 | `theorem` | [card_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-fin--1b53ac219075761b41cffcbc.md) | 128 | `result-track:1b53ac219075761b41cffcbc324b7cb712b71186ca94dd52b4b6c33d294ef93d` |
| 23 | `instance` | [Quotient.enum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/quotient-enum--ee90cc9c3be39b3d54b6a0db.md) | 130 | `declaration-track:ee90cc9c3be39b3d54b6a0db024658001a0401efcb898d114a5fa558063bf701` |
| 24 | `def` | [Finset.enum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/finset-enum--e738c88a4264c863b6159660.md) | 135 | `declaration-track:e738c88a4264c863b61596608e1561e80688b3c9fe64281847027a163e3698d8` |
| 25 | `theorem` | [Finset.mem_enum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/finset-mem-enum--9a04d9cfa8c56c1cd965c2e4.md) | 142 | `result-track:9a04d9cfa8c56c1cd965c2e4551bc6f32bac66b41f60b13a39fd2ad2e2c4f6aa` |
| 26 | `instance` | [Finset.finEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/finset-finenum--aa304254e458599ed2a40ca1.md) | 153 | `declaration-track:aa304254e458599ed2a40ca1fc52fab030a8448070a09b6b0bfb779ef62f2d64` |
| 27 | `instance` | [Subtype.finEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/subtype-finenum--08eb8fcdb9a46b187addf90f.md) | 156 | `declaration-track:08eb8fcdb9a46b187addf90f1e0f877a0c0e821375c1ab9fe99c9331f8f43581` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/instance--d3bfff3068fd79702671ea0c.md) | 160 | `declaration-track:d3bfff3068fd79702671ea0c269375a9bfcf1d3762bbbc872cc496dfe38711e8` |
| 29 | `instance` | [PSigma.finEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/psigma-finenum--6960cf4623fd29d882d7762a.md) | 164 | `declaration-track:6960cf4623fd29d882d7762a0b22b3e9b52c8a5211af2d06bdaa99c60f382601` |
| 30 | `instance` | [PSigma.finEnumPropLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/psigma-finenumpropleft--94c2188b8f160fa8d3beb7f0.md) | 167 | `declaration-track:94c2188b8f160fa8d3beb7f007e6a873fa6212a03ebe466183ad5d0aec9bdcf6` |
| 31 | `instance` | [PSigma.finEnumPropRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/psigma-finenumpropright--a4f62ec6999251565429df4a.md) | 172 | `declaration-track:a4f62ec6999251565429df4a606f90ec0f14e24b20fcfc553f13b11022ac9772` |
| 32 | `instance` | [PSigma.finEnumPropProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/psigma-finenumpropprop--317e637880a2f8b9d5a135ff.md) | 177 | `declaration-track:317e637880a2f8b9d5a135ff87f5c78ae4ee8f78a32c020a5b26623579fa4040` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/instance--d5d30c0cda3cbc607434ba89.md) | 182 | `declaration-track:d5d30c0cda3cbc607434ba8982e01cc08c4a77c5ba02823223f028b9089f0237` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/instance--d5765932b2e23e315f248068.md) | 184 | `declaration-track:d5765932b2e23e315f24806864d215dd88eda89afb2e7e56a9d621509d46a5f4` |
| 35 | `theorem` | [card_eq_fintypeCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-eq-fintypecard--4c38accd5b1f7f4df17c6e42.md) | 189 | `result-track:4c38accd5b1f7f4df17c6e42c0763a8ffe351385cfdc11919c072fbe28b4ba76` |
| 36 | `theorem` | [card_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-unique--0361e8af58429a401150360a.md) | 193 | `result-track:0361e8af58429a401150360a883ffb27bb6b9e4d212ff77066a596ea02a62ec6` |
| 37 | `theorem` | [card_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-eq-zero-iff--1f21199df7d38e11374888eb.md) | 200 | `result-track:1f21199df7d38e11374888eb4028eb9e13bec21efa704d971daf84ebd004a6f8` |
| 38 | `theorem` | [card_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-eq-zero--28ea30e0aaac73b28af09346.md) | 204 | `result-track:28ea30e0aaac73b28af093469af5b3f5eb1a4b1bb4b81fde997d2f7712b0a67e` |
| 39 | `theorem` | [card_pos_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-pos-iff--95e460d010a7bf678ab79e30.md) | 208 | `result-track:95e460d010a7bf678ab79e302ccd22c6d0151a70c3dff49c0cdf3ff8f1e1d9be` |
| 40 | `lemma` | [card_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-pos--ecb3154ef62b986d74e17a51.md) | 212 | `result-track:ecb3154ef62b986d74e17a51d48b0d6152b33ce9b3e3263fd0c5b8f2a9f20baa` |
| 41 | `lemma` | [card_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-ne-zero--ea41b775db505dd3cab9bcf2.md) | 216 | `result-track:ea41b775db505dd3cab9bcf2d1d57a63870683365c7cc0d39aa962bd9243b7e6` |
| 42 | `theorem` | [card_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/card-eq-one--fbde311d9c7f40e73fedc68d.md) | 219 | `result-track:fbde311d9c7f40e73fedc68d7080db40b85c06b2e6d4a2b63f53b0a7a0a85033` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/instance--950dbea505834d63d008cc1a.md) | 222 | `declaration-track:950dbea505834d63d008cc1aa25d31a0bd721d7ae78946f0a708bbc50d570954` |
| 44 | `def` | [ofIsEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/ofisempty--523b5a86d7741dda4a5a80fd.md) | 235 | `declaration-track:523b5a86d7741dda4a5a80fd611d1b0299e92b47562f5804db43fc68e34da68a` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/instance--8bd6e93479335923771c1777.md) | 237 | `declaration-track:8bd6e93479335923771c17773ce8620e1454d3adb4cdede06825ec5f38b1d8bc` |
| 46 | `def` | [ofUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/ofunique--b96c117cb58e86f40cf2a688.md) | 251 | `declaration-track:b96c117cb58e86f40cf2a68896eb5855b69160d0fd50aa40be43fe531482c2a7` |
| 47 | `theorem` | [mem_pi_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/mem-pi-tolist--164d0515581b8d3bcf140ecd.md) | 259 | `result-track:164d0515581b8d3bcf140ecd506ed437d5efc71fd86dd004570a9ac31ec3686e` |
| 48 | `def` | [Pi.enum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/pi-enum--7c3603bfe178c1c6af777c58.md) | 264 | `declaration-track:7c3603bfe178c1c6af777c586984a266839b5330a8a81966dfc527c9760b62bd` |
| 49 | `theorem` | [Pi.mem_enum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/pi-mem-enum--08a6953802260671c0561535.md) | 267 | `result-track:08a6953802260671c056153509f1e4ac261408b4f3c7e1b3f5be74834a4c9e04` |
| 50 | `instance` | [Pi.finEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/pi-finenum--b6b2251f9963c14acbaf99bc.md) | 270 | `declaration-track:b6b2251f9963c14acbaf99bc897651700bc9280e0b201ce0c339bd2d844424b7` |
| 51 | `instance` | [pfunFinEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinEnum/Variant20e80e986ea38028813fc7739359c8ae2c5507211f385daf71672402a5424d72.lean/declarations/pfunfinenum--7ccd6fb337620089b39e4d74.md) | 273 | `declaration-track:7ccd6fb337620089b39e4d7499b00c7019253b441698fa680522247cea6cb499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
