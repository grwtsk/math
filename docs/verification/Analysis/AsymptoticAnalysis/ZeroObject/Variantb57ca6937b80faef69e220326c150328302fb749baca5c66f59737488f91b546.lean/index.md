# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZeroObject.Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bb6eb323e9eb5aaf484441e81250e2e4cffad7b",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bb6eb323e9eb5aaf484441e81250e2e4cffad7b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_order_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeta-order-finite--b4088bcb5f294b3a259fdf99.md) | 35 | `result-track:b4088bcb5f294b3a259fdf99ee75d97a544411db48be42d935ccbde73a1d8fb6` |
| 2 | `theorem` | [zeta_multiplicity_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeta-multiplicity-pos--d8e22e39f37ecbfa3e69ba43.md) | 45 | `result-track:d8e22e39f37ecbfa3e69ba43c055841db860d4a6e956f163f9ee3c788756c176` |
| 3 | `theorem` | [analytic_conj_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/analytic-conj-conj--ed62f2df50fec60658f75415.md) | 55 | `result-track:ed62f2df50fec60658f75415566d6cdbd87d44a8d93b0856f3693b02998a1165` |
| 4 | `theorem` | [order_conj_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/order-conj-conj--d4ad4ba5fa89c19eb884761d.md) | 64 | `result-track:d4ad4ba5fa89c19eb884761d95e1d1b6182c5a1c2de256ba0bf511c4f882ce80` |
| 5 | `theorem` | [zeta_order_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeta-order-conj--695023d8b77107918a60c36b.md) | 79 | `result-track:695023d8b77107918a60c36bcfde9ad7aef47b2450b24ea0f0c763d6740b368e` |
| 6 | `theorem` | [completed_analytic](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/completed-analytic--0d7a3bff5e2710a019630202.md) | 84 | `result-track:0d7a3bff5e2710a0196302028c1134b1b1ae31ac06a476fa86a8798abc37e85f` |
| 7 | `theorem` | [zeta_order_completed](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeta-order-completed--79604c62a4db1873884bf838.md) | 94 | `result-track:79604c62a4db1873884bf838e76243038602f0ac1b2b21e46caa1d89749d04c2` |
| 8 | `theorem` | [zeta_order_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeta-order-reflect--ac3bffdd3537ded7ceb49f61.md) | 108 | `result-track:ac3bffdd3537ded7ceb49f61db4f324c673e5a09548a7f31d750508c7986e195` |
| 9 | `def` | [ZeroPoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeropoint--1da71009e6976130ec4280fd.md) | 124 | `declaration-track:1da71009e6976130ec4280fd5b1e3b1f02376b06942ff6db65dbde3c6fd7ab8b` |
| 10 | `theorem` | [point_nontrivial](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/point-nontrivial--dc7c6d35568b64a5814b77f2.md) | 128 | `result-track:dc7c6d35568b64a5814b77f24ebf3b4026070afdeea76c1f4e1673f1f1f51467` |
| 11 | `def` | [multiplicity](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/multiplicity--4106aa522e15277b5f700bab.md) | 142 | `declaration-track:4106aa522e15277b5f700babba49fc883b81fa0ad6d3ed3351f67bc53eaa54a0` |
| 12 | `theorem` | [multiplicity_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/multiplicity-positive--febcaa4a27200ef5014acccd.md) | 145 | `result-track:febcaa4a27200ef5014acccde927aaf6f5b33990c5e80f97609f0fa680833927` |
| 13 | `def` | [ZeroOccurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zerooccurrence--73a445772032e46af2d6282e.md) | 149 | `declaration-track:73a445772032e46af2d6282e5a416816c3f5da4f3e1761fcacf5ab069b96072f` |
| 14 | `def` | [conjugatePoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/conjugatepoint--b66ca79a23da1a4fa53bcd6a.md) | 152 | `declaration-track:b66ca79a23da1a4fa53bcd6aac76ac1841ac1a9c89f2c7108c72d1f6bd0f42ac` |
| 15 | `def` | [reflectPoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/reflectpoint--930dfff938e921e2022d60bc.md) | 156 | `declaration-track:930dfff938e921e2022d60bc634ff9d3d38368d24d1ba2650f302a3cad746fc3` |
| 16 | `theorem` | [conjugatePoint_involutive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/conjugatepoint-involutive--e5777fb4717eb35d85935000.md) | 162 | `result-track:e5777fb4717eb35d8593500056708ba8efb65b5e14885f495079d8dc80c18465` |
| 17 | `theorem` | [reflectPoint_involutive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/reflectpoint-involutive--5cd9bce0cc0ffac0e64d720b.md) | 168 | `result-track:5cd9bce0cc0ffac0e64d720b120441f71c938573a61bb0bd586e33060d9cb22a` |
| 18 | `theorem` | [multiplicity_conjugate](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/multiplicity-conjugate--f69ac31f5cb423c423bb3c8f.md) | 174 | `result-track:f69ac31f5cb423c423bb3c8f123b94aec15b0144b136adf836af34fbcd1020a5` |
| 19 | `theorem` | [multiplicity_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/multiplicity-reflect--37ac95c84589a202c7027e06.md) | 179 | `result-track:37ac95c84589a202c7027e062a0b43f198963920810860283a027c455ac5ccc6` |
| 20 | `def` | [conjugateOccurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/conjugateoccurrence--0cd21e5d8ce7b3ff3f1ac2e6.md) | 184 | `declaration-track:0cd21e5d8ce7b3ff3f1ac2e6a00c210be8eb328ef1ff6e02ac32ef3781191ce6` |
| 21 | `def` | [reflectOccurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/reflectoccurrence--b5977870f2d20c87446a0de8.md) | 188 | `declaration-track:b5977870f2d20c87446a0de8eee381c20f4ea0d97cc2e93486ec7e54a4576731` |
| 22 | `theorem` | [conjugateOccurrence_involutive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/conjugateoccurrence-involutive--82e532f359a398eee3ec515d.md) | 192 | `result-track:82e532f359a398eee3ec515da88f77514d2eeca3a7e8cb351e739fa53835706f` |
| 23 | `theorem` | [reflectOccurrence_involutive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/reflectoccurrence-involutive--d073c03dfb5cfbfcfb154673.md) | 199 | `result-track:d073c03dfb5cfbfcfb1546730ab0328f4c6bf0b32a26b58a578bd63bd18ae6a0` |
| 24 | `def` | [conjugateEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/conjugateequiv--e6fb72015c6f4188a94db3f0.md) | 206 | `declaration-track:e6fb72015c6f4188a94db3f0ef2a6f94661690515dee9446ce8e714527f7f077` |
| 25 | `def` | [reflectEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/reflectequiv--018526447feb8054d930c652.md) | 210 | `declaration-track:018526447feb8054d930c6527c7b809163293546bf60aaa3ffe88f8afd6f7e67` |
| 26 | `def` | [shiftedValue](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue--904411cb94c02dd566b7571f.md) | 214 | `declaration-track:904411cb94c02dd566b7571f22db912b14b0809ba063886dbadb724573460f99` |
| 27 | `theorem` | [shiftedValue_conjugate](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-conjugate--38d59e4c948ae48986a85422.md) | 217 | `result-track:38d59e4c948ae48986a8542268b53c71a01e17e77f6a3bdc3e223521a50ae53e` |
| 28 | `theorem` | [shiftedValue_reflect](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-reflect--10ebb072cf0726d62d6bd17c.md) | 222 | `result-track:10ebb072cf0726d62d6bd17c3f5b46541612cedc2a54f36761d97934b31b45ab` |
| 29 | `theorem` | [shiftedValue_strip](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-strip--d783f2fc486c7bd9ba0b42ea.md) | 228 | `result-track:d783f2fc486c7bd9ba0b42ea14f5c1437be1799bc10e56f13af4bdee2b838366` |
| 30 | `theorem` | [shiftedValue_ne_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-ne-half--96a81ed8844516a22380f84c.md) | 234 | `result-track:96a81ed8844516a22380f84cd61ab1d5625478e9c967465a493ef8bf44b8ade4` |
| 31 | `theorem` | [shiftedValue_ne_neg_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-ne-neg-half--6211043b3f47b5ff200915dc.md) | 242 | `result-track:6211043b3f47b5ff200915dc73138f7e787e287db8a1848dbf5f27e552f592e8` |
| 32 | `def` | [RealZeroExclusionObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/realzeroexclusionobligation--0b75d137f923e1e196103183.md) | 250 | `declaration-track:0b75d137f923e1e19610318335b339f1aa528b8abc56427d30b339ba9b3bef1d` |
| 33 | `theorem` | [shiftedValue_im_ne_zero_of_realZeroExclusion](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-im-ne-zero-of-realzeroexclusion--fa9e371ef343a7122c594297.md) | 254 | `result-track:fa9e371ef343a7122c594297ac5643587ad52c033ed87e1d7e6f3a68de07973e` |
| 34 | `theorem` | [shiftedValue_ne_zero_of_realZeroExclusion](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/shiftedvalue-ne-zero-of-realzeroexclusion--752bfea06f682b7512249177.md) | 265 | `result-track:752bfea06f682b7512249177e8e89b8877989d816e752f458503a9ecb1df869c` |
| 35 | `def` | [MultiplicityAndSymmetryObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/multiplicityandsymmetryobligation--b160fe54f53af71013a96b4c.md) | 273 | `declaration-track:b160fe54f53af71013a96b4cfc2c5b31b44ddf802098fa780ef4c8bb0d71f0d5` |
| 36 | `theorem` | [multiplicity_and_symmetry](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/multiplicity-and-symmetry--8fa2a5e11807d2b462d1f363.md) | 290 | `result-track:8fa2a5e11807d2b462d1f3631e8cab59f468cb877330e0c5246a3c44dd3e3c5d` |
| 37 | `def` | [ZeroObjectAdmissionObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/zeroobjectadmissionobligation--e0061c2c60a75bdda9ea84ff.md) | 300 | `declaration-track:e0061c2c60a75bdda9ea84ff0082f405d0d0c5899316891088e1603f6677c6fc` |
| 38 | `theorem` | [admission_of_realZeroExclusion](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/admission-of-realzeroexclusion--11a133967f161383cbcb9fcd.md) | 305 | `result-track:11a133967f161383cbcb9fcda161f63e32eb55e8a62a1eeeec526a4aebdd62a6` |
| 39 | `def` | [pairedEtaTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/pairedetaterm--5e629f7b33a05a31bac5adf6.md) | 310 | `declaration-track:5e629f7b33a05a31bac5adf6b94608ea43c7da9934e8c2a4bc1e392088d5acd9` |
| 40 | `theorem` | [pairedEtaTerm_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/pairedetaterm-pos--3fc6b1d04cc09844fee2038b.md) | 314 | `result-track:3fc6b1d04cc09844fee2038bbe4c4c60e9d1b1bfa24bcd322fb417b8588fd0d5` |
| 41 | `theorem` | [pairedEta_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/pairedeta-summable--74b560f4c5c30fcaef5262a9.md) | 320 | `result-track:74b560f4c5c30fcaef5262a97bc434080c985733c158569953a8e833bfc5913f` |
| 42 | `def` | [PairedEtaPositivitySummabilityObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/pairedetapositivitysummabilityobligation--9c09611b7b367694f6a42770.md) | 339 | `declaration-track:9c09611b7b367694f6a427702ec6b85ff55dcd2f5a3d8853584caf78562baa1f` |
| 43 | `theorem` | [paired_eta_positive_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/paired-eta-positive-summable--499551ae8dee9f3a6308ac8d.md) | 343 | `result-track:499551ae8dee9f3a6308ac8db7f86367252448930767df9b51c871b7ade319f6` |
| 44 | `def` | [PairedEtaIdentityObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/pairedetaidentityobligation--505157d5989a27a816f9991e.md) | 349 | `declaration-track:505157d5989a27a816f9991e6c3347e8a011b95e901ed554559c9e3a11d02792` |
| 45 | `theorem` | [real_zero_exclusion_of_paired_eta](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/real-zero-exclusion-of-paired-eta--416efd5cd4d06118cef2b2c3.md) | 355 | `result-track:416efd5cd4d06118cef2b2c395af22c37085f0b648baf7b4b259b7137a437eb1` |
| 46 | `def` | [PairedEtaReductionObligation](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/pairedetareductionobligation--ad9ac45ede207307553f8599.md) | 365 | `declaration-track:ad9ac45ede207307553f859969559d69afddfc78721019586f7e64b8b2429467` |
| 47 | `theorem` | [paired_eta_reduction](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/declarations/paired-eta-reduction--f43dbedec4ef79a42e8e766f.md) | 369 | `result-track:f43dbedec4ef79a42e8e766f8616441378e813b26681df48ef5d8f95bf5d2781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
