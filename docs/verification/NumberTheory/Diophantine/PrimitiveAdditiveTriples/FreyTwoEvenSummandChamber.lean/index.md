# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoEvenSummandChamber

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "854d11ec51383abb3f3e4ca03c207e40bca2964c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `854d11ec51383abb3f3e4ca03c207e40bca2964c`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoSemistableChamber`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/instance--820c90452bd53b1970ff45ce.md) | 25 | `declaration-track:820c90452bd53b1970ff45cecafa2e95dbdd9bb2c83e1705542ba480c0fd7931` |
| 2 | `structure` | [Chamber](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/chamber--ef6a005c2c01261506dad285.md) | 28 | `declaration-track:ef6a005c2c01261506dad285754a9d24ca2b2bcae68209dcc1c51a94274abbee` |
| 3 | `theorem` | [chamber_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/chamber-iff--3946c975a7b9a52d0dcf7646.md) | 34 | `result-track:3946c975a7b9a52d0dcf7646ecc6f73ef1ccd421688a38bb808a014ab78b451c` |
| 4 | `theorem` | [Chamber.m_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/chamber-m-pos--d0a0318a3b6ed0bf28b2cda4.md) | 44 | `result-track:d0a0318a3b6ed0bf28b2cda489414e025cc820af14e4f5692857c8c67d52bd90` |
| 5 | `theorem` | [Chamber.product_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/chamber-product-cast--d74e13fe72106f4d5f0d104c.md) | 49 | `result-track:d74e13fe72106f4d5f0d104ce5a426a0b710b8d8034b5e15758d311e2bd84122` |
| 6 | `theorem` | [Chamber.c_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/chamber-c-odd--453aa9e11fc82a8741356b11.md) | 53 | `result-track:453aa9e11fc82a8741356b11b656c0781abdccbe56168c11444d8a63a697f09b` |
| 7 | `theorem` | [disjoint_previous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/disjoint-previous--a062e5dc60f85e536867f8d4.md) | 59 | `result-track:a062e5dc60f85e536867f8d4894b3970e079c61845af9c2d931864a1e377177e` |
| 8 | `def` | [of_even_a](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/of-even-a--f822dc5a4aebb889f4816ef2.md) | 67 | `declaration-track:f822dc5a4aebb889f4816ef2772fdab558384c2ff801c69e7acb73b1f631f550` |
| 9 | `def` | [of_even_b](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/of-even-b--24bda5caaefbb5a35a4b593d.md) | 75 | `declaration-track:24bda5caaefbb5a35a4b593dc28627e342244eca3d4502ee99e6a4771488b348` |
| 10 | `def` | [integralModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/integralmodel--5866855f7c6be4ad6bf5c262.md) | 82 | `declaration-track:5866855f7c6be4ad6bf5c2623622b0cf5c4ee0ad70ba801292a201a4b35d883a` |
| 11 | `def` | [changedCurve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/changedcurve--35a17b23ea08bf02f02f19ec.md) | 84 | `declaration-track:35a17b23ea08bf02f02f19ece0786dbe36af188ea2c1bff797f92895cd906dc2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/instance--b8b3885156a425a29c036e9d.md) | 86 | `declaration-track:b8b3885156a425a29c036e9dd0a58188ed3da5164c8a557835f51ecf130a61b7` |
| 13 | `theorem` | [integralModel_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/integralmodel-basechange--ebf9b3b8355f013d1ef52204.md) | 90 | `result-track:ebf9b3b8355f013d1ef52204e8ca51544a0e0f557ef2cc6681b0a60c80d1d075` |
| 14 | `theorem` | [changedCurve_j](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/changedcurve-j--3f71f3afbf34d5274f69fc38.md) | 97 | `result-track:3f71f3afbf34d5274f69fc383c43ddff084d41bda3e339769191bea503ed0dc6` |
| 15 | `theorem` | [c4_scaling](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/c4-scaling--c62805b3b6d429675795fb0b.md) | 100 | `result-track:c62805b3b6d429675795fb0b135d6e1079e428b46aa6102f8cbd24a757b4ecdf` |
| 16 | `theorem` | [delta_as_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/delta-as-square--c94a4c2b51b1d21108e07135.md) | 105 | `result-track:c94a4c2b51b1d21108e07135feb57ba3587f025d0f21b0012b505576f0dd4a8c` |
| 17 | `theorem` | [delta_scaling](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/delta-scaling--a254df439896b4d399f8ca2f.md) | 110 | `result-track:a254df439896b4d399f8ca2f3a98d6c32b445f4386dacea6d51df81d8fc78218` |
| 18 | `def` | [localModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/localmodel--49771c05364b01c2b855d0bc.md) | 116 | `declaration-track:49771c05364b01c2b855d0bc6ac938210df28ec8e0ba80fbdcaa2eef575b0f2b` |
| 19 | `theorem` | [localModel_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/localmodel-basechange--58bd9cc54d1cbf3d8acba7ea.md) | 119 | `result-track:58bd9cc54d1cbf3d8acba7ea59acf2a3f48435b21a532a1c09f0586c9e218e22` |
| 20 | `theorem` | [local_c4_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/local-c4-unit--dd94361b639076e824b80c48.md) | 127 | `result-track:dd94361b639076e824b80c48d3be9baf0b5c78a9c12d691f583dba3a0ff0a3c5` |
| 21 | `theorem` | [local_delta_unit_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/local-delta-unit-iff--5fd36cd41fe600c2d27e5e53.md) | 131 | `result-track:5fd36cd41fe600c2d27e5e53bf4cb921a025b591911e08509564f80fc801cea2` |
| 22 | `theorem` | [minimal_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/minimal-at-two--fa145a2b8c164c01b5e3fa89.md) | 137 | `result-track:fa145a2b8c164c01b5e3fa8986eae8ee1d870a3d36eb0cd0552541c7c22e0903` |
| 23 | `theorem` | [good_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/good-at-two--cb3a011e41527aff461ee679.md) | 141 | `result-track:cb3a011e41527aff461ee679d2d5a54cd2c9f9cbb119d95aaef28a47ee873c21` |
| 24 | `theorem` | [multiplicative_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/multiplicative-at-two--bf39d5daa2b6fc876f0b52bb.md) | 147 | `result-track:bf39d5daa2b6fc876f0b52bb42a6ffea0d6c38b2bd710748f4e0247826d8f9cf` |
| 25 | `theorem` | [good_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/good-iff--fd2a09909bf6e71a56d16d9b.md) | 156 | `result-track:fd2a09909bf6e71a56d16d9b69ceac5b7163fd6ec4cfa22ee44ce3dd2a831be6` |
| 26 | `theorem` | [multiplicative_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/multiplicative-iff--9aa98a020bea4f3833de0438.md) | 163 | `result-track:9aa98a020bea4f3833de0438be4cb31c6e7d90305ecb2b90f8742cc19c86e5e6` |
| 27 | `theorem` | [multiplicative_iff_32_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/multiplicative-iff-32-dvd--4fdd87cdc539819f051b6823.md) | 171 | `result-track:4fdd87cdc539819f051b6823038d37f42794c6b40b3262c7e24b71c5e636e273` |
| 28 | `theorem` | [good_iff_not_32_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/good-iff-not-32-dvd--e9fc462abe792a706fac57f0.md) | 176 | `result-track:e9fc462abe792a706fac57f0af89095e7ef0bf290e7fe28a253c2e117fb494d2` |
| 29 | `theorem` | [not_additive_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/not-additive-at-two--b536ad49bd8840a517f8ffa7.md) | 181 | `result-track:b536ad49bd8840a517f8ffa7bf47e445f344fef44c3cd5f3613770d192adf429` |
| 30 | `theorem` | [depth_two_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/depth-two-zero--870bc462b4bb62eb5cb7e3b6.md) | 187 | `result-track:870bc462b4bb62eb5cb7e3b63101ab8e2683bda9e2bf56a68884dfd647962f5c` |
| 31 | `theorem` | [delta_natAbs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/delta-natabs--1e89419966f13c44e3f531e8.md) | 193 | `result-track:1e89419966f13c44e3f531e8a0a2a3aed8d7d38e380715f6d7c210481e30f3e5` |
| 32 | `theorem` | [minimal_delta_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/minimal-delta-depth--33d968763f879756c216908f.md) | 198 | `result-track:33d968763f879756c216908fadf7874e7fb9c153acb14355c54c147735c0de5b` |
| 33 | `theorem` | [source_product_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/source-product-depth--bfbdbbc2018048da557d588b.md) | 204 | `result-track:bfbdbbc2018048da557d588b9dff72f915b8c2a79079aae482d813425c2c80f2` |
| 34 | `theorem` | [minimal_depth_balance](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/minimal-depth-balance--ba201b0301ddfb726e6e2ddb.md) | 215 | `result-track:ba201b0301ddfb726e6e2ddb201478c6d12b38cfe615f450b1b17fa44bd317f6` |
| 35 | `theorem` | [marked_j_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/marked-j-agrees--d74c799e264553d0357a44ae.md) | 220 | `result-track:d74c799e264553d0357a44ae21b9af22c81a799eed95c2f58bdb106baa9bda24` |
| 36 | `def` | [evenASource](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/evenasource--be7c41e4b7ef0ea20bd099d0.md) | 227 | `declaration-track:be7c41e4b7ef0ea20bd099d0483daa38b170eba682b3e103988ed62d601c44ca` |
| 37 | `def` | [evenAChamber](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/evenachamber--2b54c32f2750612f30fd6d46.md) | 236 | `declaration-track:2b54c32f2750612f30fd6d46a78ca4244cb9e90385c7fa8a84e4d34253ceceb1` |
| 38 | `theorem` | [first_family_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/first-family-delta--9e13a6d5606ed3e4bfccdbd8.md) | 242 | `result-track:9e13a6d5606ed3e4bfccdbd84f2e6b6fd7cb9d71053c127c1d0651ab44f071f2` |
| 39 | `theorem` | [second_family_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/declarations/second-family-delta--be48c39d2be7c4ad9945e757.md) | 246 | `result-track:be48c39d2be7c4ad9945e757c4c3fb35634727d50d76076352ec04118395871e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
