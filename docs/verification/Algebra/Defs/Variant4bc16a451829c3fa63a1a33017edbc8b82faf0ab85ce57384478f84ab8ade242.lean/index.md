# Verification target: GRWTSK.Algebra.Defs.Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982c6fd06d9a5ff75b68b668df01976ade39ae3d",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982c6fd06d9a5ff75b68b668df01976ade39ae3d`.

Source path: `GRWTSK/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Distrib](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/distrib--040f5989fa9e61b07abe374d.md) | 69 | `declaration-track:040f5989fa9e61b07abe374dc2c820dc95a02048edfb6492db35409bf6fc6333` |
| 2 | `class` | [LeftDistribClass](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/leftdistribclass--63a8873de3d8491e3e4a4edd.md) | 76 | `declaration-track:63a8873de3d8491e3e4a4edd9409abe0245c6384d970f6a58cfeffc3c6a60526` |
| 3 | `class` | [RightDistribClass](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/rightdistribclass--6ae15585bc9450d22708c49f.md) | 81 | `declaration-track:6ae15585bc9450d22708c49f6f5fb7e51716e50692ab8a0e8b18c34c7b7d2a56` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--0b974055f64ce6c42f0e04e7.md) | 86 | `declaration-track:0b974055f64ce6c42f0e04e70379647a4c5314fdbf0d0c04bc71e9d4b401f8fa` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--f7ea85a745c869213139bd2b.md) | 90 | `declaration-track:f7ea85a745c869213139bd2b20a0b22977698f6bd500a4dca962738b466164f3` |
| 6 | `theorem` | [left_distrib](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/left-distrib--0d64b8a9d7950b58341e3a8d.md) | 94 | `result-track:0d64b8a9d7950b58341e3a8d2f43a975ab9616b8b3d79d18d6d7f922ce437172` |
| 7 | `theorem` | [right_distrib](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/right-distrib--fcccd32e25e59c74e7eb9578.md) | 100 | `result-track:fcccd32e25e59c74e7eb957899c486df0f11b9117a765668b99bcbed22b7cbfa` |
| 8 | `theorem` | [distrib_three_right](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/distrib-three-right--d2dfa55fe4c96c894e140349.md) | 106 | `result-track:d2dfa55fe4c96c894e14034987271231bf54581b681a0ecca3f438c64050e1a5` |
| 9 | `class` | [NonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalnonassocsemiring--5a39188841738d26da93dda3.md) | 126 | `declaration-track:5a39188841738d26da93dda3e8be7098ba3d1e768cfd428ca3b4cd220fb9b5aa` |
| 10 | `class` | [NonUnitalSemiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalsemiring--1196f0f4aacc9fd639aef8a1.md) | 129 | `declaration-track:1196f0f4aacc9fd639aef8a1dcca5bd15a168bf07a91cf382c68f704e6ae718c` |
| 11 | `class` | [NonAssocSemiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonassocsemiring--5964d1cbb5922e2ebc771679.md) | 132 | `declaration-track:5964d1cbb5922e2ebc771679cf60493a0cafc5b75f4bc5a2658ef86e9f98379a` |
| 12 | `class` | [NonUnitalNonAssocRing](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalnonassocring--7eb572b1702909f4b09f419a.md) | 136 | `declaration-track:7eb572b1702909f4b09f419ad0843cecf7a170f996a92359680967d4600a2d6d` |
| 13 | `class` | [NonUnitalRing](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalring--cb11b00a6a34b8cbf0a74ee0.md) | 139 | `declaration-track:cb11b00a6a34b8cbf0a74ee03fecd50a35a8697e8812a614f3aeb93986d186ad` |
| 14 | `class` | [NonAssocRing](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonassocring--ec5eb3bc8ef13bd9d24e463b.md) | 142 | `declaration-track:ec5eb3bc8ef13bd9d24e463ba340ed7f22967681a82c81883fbe8d43ae5e4df7` |
| 15 | `class` | [Semiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/semiring--84aa38a2a386006c40287a17.md) | 148 | `declaration-track:84aa38a2a386006c40287a17abc9073aeed889905d4a2d4af29bba7f04f4487c` |
| 16 | `class` | [Ring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/ring--720558a1716bca179b96b12f.md) | 151 | `declaration-track:720558a1716bca179b96b12fc06d4c5c7d3c834c36866a9ca69071d5d51abb68` |
| 17 | `theorem` | [add_one_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/add-one-mul--7e10d4962655fea50363251c.md) | 161 | `result-track:7e10d4962655fea50363251cce03eb34cde956f93d3ba4936c3b3fd9453741a0` |
| 18 | `theorem` | [mul_add_one](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-add-one--f8bc6d9162ba1d0eaecca090.md) | 164 | `result-track:f8bc6d9162ba1d0eaecca090fe21682632f15a8acd5013b6a213b2af8170adf1` |
| 19 | `theorem` | [one_add_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/one-add-mul--616003eacee076538bbd526e.md) | 167 | `result-track:616003eacee076538bbd526e9c1f34b2cb6d6a6e23f636751677fa69276efe5d` |
| 20 | `theorem` | [mul_one_add](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-one-add--b4ed637e048e3c8265f84981.md) | 170 | `result-track:b4ed637e048e3c8265f849815c7b411c226c84dab786cdff6181ef23e540deef` |
| 21 | `theorem` | [two_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/two-mul--477d9159711225aaf4c44a14.md) | 180 | `result-track:477d9159711225aaf4c44a14f8cf7e3bacc64638fc27637991a2bfca45872cad` |
| 22 | `theorem` | [mul_two](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-two--49023d07b28039e589e99531.md) | 184 | `result-track:49023d07b28039e589e9953132ad9610fbd31822d178f4d47235f303e4c2aabf` |
| 23 | `lemma` | [ite_zero_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/ite-zero-mul--9ba57ab3aef3eb6f9614322e.md) | 192 | `result-track:9ba57ab3aef3eb6f9614322e8f91dd2914cedacbc1879f87f79ef89fb16b5676` |
| 24 | `lemma` | [mul_ite_zero](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-ite-zero--98626445fbea3b26da5baa68.md) | 194 | `result-track:98626445fbea3b26da5baa6844d37b87ce1f9be07f697a66f3d7e0d3356e16d9` |
| 25 | `lemma` | [ite_zero_mul_ite_zero](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/ite-zero-mul-ite-zero--fb8ec8e9adc0315bb53c47f8.md) | 196 | `result-track:fb8ec8e9adc0315bb53c47f8209063fd218a60b34975e0c30760032e4ee57ded` |
| 26 | `theorem` | [mul_boole](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-boole--618ca8cfc6d9c2d39585a983.md) | 201 | `result-track:618ca8cfc6d9c2d39585a9834dca7bdec9093e554a4257a5d704a56afc03d4d7` |
| 27 | `theorem` | [boole_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/boole-mul--dba236bc29445f0a5b124bd2.md) | 204 | `result-track:dba236bc29445f0a5b124bd20a074e782f0f8157c98163eb90c68f93aa81d550` |
| 28 | `class` | [NonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalnonassoccommsemiring--1d34886631de892835b4023b.md) | 208 | `declaration-track:1d34886631de892835b4023bc66ca29e10ce9040d0a9cc6d2992c1de11a0c0cc` |
| 29 | `class` | [NonUnitalCommSemiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalcommsemiring--2592afdbe5cccfaeb44d6c41.md) | 214 | `declaration-track:2592afdbe5cccfaeb44d6c41f09731877cac13f699caf3d3671769dd5264d8e5` |
| 30 | `class` | [CommSemiring](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/commsemiring--4f8a78691db3773bac5c7392.md) | 217 | `declaration-track:4f8a78691db3773bac5c7392db46559fa94c562acac685a7ef8c44fc60a60aca` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--3d9b35ca2b653c8f0a7ef668.md) | 220 | `declaration-track:3d9b35ca2b653c8f0a7ef66878e1a5554dcbd4e6e31b549aedeb3d356bed345d` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--73ce92e6ccdc5ea825151e85.md) | 225 | `declaration-track:73ce92e6ccdc5ea825151e85b12d9944fd383ed0a7808627bffbff981f9ad2e8` |
| 33 | `theorem` | [add_mul_self_eq](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/add-mul-self-eq--71451d9ae543dfa1c69ea20b.md) | 233 | `result-track:71451d9ae543dfa1c69ea20b7f886f1003dc8212dbbd69c247f2381c2a46e5f6` |
| 34 | `lemma` | [add_sq](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/add-sq--c50bfdc7c3157efb2b8692b4.md) | 236 | `result-track:c50bfdc7c3157efb2b8692b47a4e60ed0eae3e102207367ba4a8f4dbc201aa72` |
| 35 | `lemma` | [add_sq'](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/add-sq--e2d060bb4a62ffaabcfd9e33.md) | 239 | `result-track:e2d060bb4a62ffaabcfd9e33c6af049064ef465c7ecad9e8ab42a45f4cade93c` |
| 36 | `class` | [HasDistribNeg](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/hasdistribneg--03110fd222acd9be9f4ee2c1.md) | 252 | `declaration-track:03110fd222acd9be9f4ee2c11aa6af39df0991f1c979d058dc83b3fad3a851cb` |
| 37 | `theorem` | [neg_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-mul--df88ce2beb1a86faae0ee556.md) | 263 | `result-track:df88ce2beb1a86faae0ee5561c771b548be9c1d997dd0447d3b4750715584abf` |
| 38 | `theorem` | [mul_neg](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-neg--b038d9ccdc838e3fcc1bc5ea.md) | 267 | `result-track:b038d9ccdc838e3fcc1bc5ea05d643eacf9e578a6d76a7e24dcf9b3368997f5a` |
| 39 | `theorem` | [neg_mul_neg](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-mul-neg--15444371c8bae5f0b64e5fb2.md) | 270 | `result-track:15444371c8bae5f0b64e5fb2fd034da22a081d28d66b8c828c6a6adfbf6f85a1` |
| 40 | `theorem` | [neg_mul_eq_neg_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-mul-eq-neg-mul--e059459277e8a91a7a59d2bb.md) | 272 | `result-track:e059459277e8a91a7a59d2bb208188981c065ee5331e594c6aa6910c25f9cb10` |
| 41 | `theorem` | [neg_mul_eq_mul_neg](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-mul-eq-mul-neg--f5d5fd900bd0c1158b22b71e.md) | 275 | `result-track:f5d5fd900bd0c1158b22b71e42e09d38a8bdf8f6a763c6cdea10d93b573f1e7f` |
| 42 | `theorem` | [neg_mul_comm](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-mul-comm--a45edb6c3a88ced05a4fb286.md) | 278 | `result-track:a45edb6c3a88ced05a4fb2867fb45b1290230489bdd38545d57dfc039c68425e` |
| 43 | `theorem` | [neg_eq_neg_one_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-eq-neg-one-mul--0db182d330bd71bbf04e031d.md) | 286 | `result-track:0db182d330bd71bbf04e031d193877d16b43540c4e21033eca4a05cf45a831b0` |
| 44 | `theorem` | [mul_neg_one](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-neg-one--577fe18ed17599a0e6a86ba8.md) | 290 | `result-track:577fe18ed17599a0e6a86ba85064c38f953de4c7091bb24d6b0b7dad9e605162` |
| 45 | `theorem` | [neg_one_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/neg-one-mul--066643f83a1b7a125bba380e.md) | 294 | `result-track:066643f83a1b7a125bba380e84d7d4ed8cbc47b9592d8306e952cc966b6f4e6b` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--5835319343c6e9878a6bbe19.md) | 302 | `declaration-track:5835319343c6e9878a6bbe1946121d9bc37c6ca619ba8258920acb8edecf65d8` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--e5c76cc114870fcde446e4c4.md) | 318 | `declaration-track:e5c76cc114870fcde446e4c4fc382f0a3b9fa0036266720e48bcb5004efb7d2d` |
| 48 | `theorem` | [mul_sub_left_distrib](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-sub-left-distrib--6f06b27b91edb350d993f72e.md) | 324 | `result-track:6f06b27b91edb350d993f72e1aab7150f6c985fde25fcb45a2e0d898960e7a71` |
| 49 | `theorem` | [mul_sub_right_distrib](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-sub-right-distrib--5eb2926992aedabae8c93f16.md) | 329 | `result-track:5eb2926992aedabae8c93f164aaccca03d78ecb8032315036e3d6bbda4313926` |
| 50 | `theorem` | [sub_one_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/sub-one-mul--0814172dbae9387dda4418ad.md) | 340 | `result-track:0814172dbae9387dda4418ad5e6bad75a84d4909b2b185ec05a56252a9a6a233` |
| 51 | `theorem` | [mul_sub_one](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-sub-one--9090a7b057f8da11b9bbee15.md) | 342 | `result-track:9090a7b057f8da11b9bbee15b55137d9cd9e417a0b0d786c7aa4777779fec682` |
| 52 | `theorem` | [one_sub_mul](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/one-sub-mul--cde6dea1b9ae95c41ef85948.md) | 344 | `result-track:cde6dea1b9ae95c41ef8594873572fd7324e3b9f71c44daff6b77fe4a2dedf85` |
| 53 | `theorem` | [mul_one_sub](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/mul-one-sub--46b8eec9a6df541f9413d4cd.md) | 346 | `result-track:46b8eec9a6df541f9413d4cd55191d0b275798e6b68385fc444f404411dd0e2e` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--599987c07f0689054ac08cf3.md) | 356 | `declaration-track:599987c07f0689054ac08cf3332c535c13042062b04188361baa8c5094e4f1b8` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--3287b35cd2c2ff48f914055d.md) | 361 | `declaration-track:3287b35cd2c2ff48f914055d74cedaf523019d1c15bda5d5ad25924dfa675c36` |
| 56 | `class` | [NonUnitalNonAssocCommRing](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalnonassoccommring--79dc4433d8abfa567bfee6e1.md) | 368 | `declaration-track:79dc4433d8abfa567bfee6e1fe0f7119a06394107c58854a54360f11a3637e2d` |
| 57 | `class` | [NonUnitalCommRing](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/nonunitalcommring--74e20dea2aab194db02fd92a.md) | 372 | `declaration-track:74e20dea2aab194db02fd92aaeebb78705ce4dfdc50b2896f331e4bfb3beda6c` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--6ad634ea774529d45df55b5d.md) | 375 | `declaration-track:6ad634ea774529d45df55b5dc3e7d022dedf97eb385528c4f2f0423140b205aa` |
| 59 | `class` | [CommRing](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/commring--e46b73048b10828f7946a73f.md) | 380 | `declaration-track:e46b73048b10828f7946a73fba194f46e5f9981857a63a1cab4e16d0ec4dc7a4` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--0e160fcc42bd2de6102ff223.md) | 382 | `declaration-track:0e160fcc42bd2de6102ff22387df506a92ec10b4fef6133a9452245eeabb33d5` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--1bc32113810da750af582cc7.md) | 386 | `declaration-track:1bc32113810da750af582cc7aa58918e3b13c406b43c69190bb86138e0d2357c` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/instance--58cfdd273c00e51d91c9f26e.md) | 390 | `declaration-track:58cfdd273c00e51d91c9f26e8e7f551c673dd3ee7fd1df259c9151f65008255e` |
| 63 | `class` | [IsDomain](../../../../mathematics/Algebra/Defs/Variant4bc16a451829c3fa63a1a33017edbc8b82faf0ab85ce57384478f84ab8ade242.lean/declarations/isdomain--1627bf5c2e376e6cc2e0acef.md) | 402 | `declaration-track:1627bf5c2e376e6cc2e0acef460d84027e8946fec9f2e61ee19497011cb972e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
