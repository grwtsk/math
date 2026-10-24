# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39b9ef8227b9e101becb90ec3e967d6c72d10ec2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39b9ef8227b9e101becb90ec3e967d6c72d10ec2`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.WeightedPermutationEnergy`](../../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationEnergy.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBasis.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Fin.Rev` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/reverse--85a86e413270b58bd9f4198c.md) | 26 | `declaration-track:85a86e413270b58bd9f4198ce7cec2409eefc2e816c9dff031cc79b24f85db53` |
| 2 | `def` | [exponent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/exponent--23ad59be1aec0ce3ac428755.md) | 30 | `declaration-track:23ad59be1aec0ce3ac428755a11be8b2aea19180d741472fe11eb26c3276c139` |
| 3 | `def` | [weight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/weight--73d0b58f295fe1dc5bac2535.md) | 35 | `declaration-track:73d0b58f295fe1dc5bac253580d47b020a277979b2a93d172b56057059ccf60f` |
| 4 | `theorem` | [exponent_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/exponent-le--049617d4badbbab3c47652fb.md) | 39 | `result-track:049617d4badbbab3c47652fb04af7c7baef1b8d5540df6453fb8abbaa104d7c1` |
| 5 | `theorem` | [exponent_reverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/exponent-reverse--86e26bdd378af874332d6ddb.md) | 45 | `result-track:86e26bdd378af874332d6ddb2acd3c636637954474890477ac77d76fe6f8837c` |
| 6 | `theorem` | [weight_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/weight-square--8ccf90a136769022bd90b2d5.md) | 60 | `result-track:8ccf90a136769022bd90b2d52119b4df38fcbd54bf384f5148203acbc4ad9691` |
| 7 | `def` | [coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coordinates--c5e1a59960b920f2784dc15e.md) | 73 | `declaration-track:c5e1a59960b920f2784dc15ecdfea608db10b052d7bb6d37a290bb55decb737d` |
| 8 | `def` | [synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/synthesize--4f2617a1a716f00983ff3e01.md) | 77 | `declaration-track:4f2617a1a716f00983ff3e017f1f06b7a94b92baeca530648e2ea801d2f64414` |
| 9 | `theorem` | [coordinates_synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coordinates-synthesize--77966245bcd6e54561bd481a.md) | 80 | `result-track:77966245bcd6e54561bd481a541d732b217d1ca5858a575059dfd903b1923789` |
| 10 | `theorem` | [synthesize_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/synthesize-coordinates--be637a3de20b8566f4d508f7.md) | 86 | `result-track:be637a3de20b8566f4d508f714999026f27d42c49121b801a5d903bf67e922f5` |
| 11 | `theorem` | [stage_on_basis](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/stage-on-basis--2ff243c223961920e83ee083.md) | 91 | `result-track:2ff243c223961920e83ee0839802982265fae5438943d5b6f21bee68120b35fa` |
| 12 | `theorem` | [stage_synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/stage-synthesize--9938400eb632f2bc6ecb32d1.md) | 114 | `result-track:9938400eb632f2bc6ecb32d1e310f89ea9a48ce54c7b16dfa026acde3e117f5f` |
| 13 | `theorem` | [coordinates_stage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coordinates-stage--b5aadf6ce1a8fd02dff3bf3a.md) | 130 | `result-track:b5aadf6ce1a8fd02dff3bf3abc29eafd58f0d5b0940cf8b352280e37962e06a5` |
| 14 | `def` | [coefficientEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coefficientenergy--5e02e4ca70766879c0dc730b.md) | 139 | `declaration-track:5e02e4ca70766879c0dc730bb50d04cf9a53091bc8e85bbe5158029dde1e96a0` |
| 15 | `theorem` | [coefficientEnergy_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coefficientenergy-zero-iff--0a76709f580c01e5ab676abc.md) | 143 | `result-track:0a76709f580c01e5ab676abcc432bf47429448e048ebe44c0f02934cfe355dd3` |
| 16 | `theorem` | [coefficientEnergy_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coefficientenergy-formula--882565e84d721192830177ea.md) | 154 | `result-track:882565e84d721192830177ea6a55bc54575b58dcb96e0a3d7f0c822df78e2c8e` |
| 17 | `theorem` | [powers_between](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/powers-between--7a3287f3163f04b46768d886.md) | 161 | `result-track:7a3287f3163f04b46768d886419ee882a058e4a2ece579a8c474807003a712b0` |
| 18 | `theorem` | [coefficientEnergy_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/coefficientenergy-bounds--d940518142d917abe48b9430.md) | 179 | `result-track:d940518142d917abe48b943037d6f3bf9a0b85ec0b788481192589b89219029f` |
| 19 | `theorem` | [lower_sharp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/lower-sharp--548b76d2c7514bb78e3cfe45.md) | 193 | `result-track:548b76d2c7514bb78e3cfe453bc413cdaf118a7f199eddcf1cd81d5b43c375fb` |
| 20 | `theorem` | [upper_sharp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/upper-sharp--952559800eae3096a7819ca3.md) | 205 | `result-track:952559800eae3096a7819ca36e423a62ffc9a284188a6d0dbc6ee4f8f4985930` |
| 21 | `def` | [balancedEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/balancedenergy--287a3403de78997d1647e254.md) | 217 | `declaration-track:287a3403de78997d1647e25470119106d5ab4d0886d810b45ce91557a10924e7` |
| 22 | `theorem` | [balancedEnergy_transport](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/balancedenergy-transport--ce9b07109504ef8ccbbf4726.md) | 221 | `result-track:ce9b07109504ef8ccbbf4726d3638164c22a29af15891184562c94a488ce03e2` |
| 23 | `theorem` | [balancedEnergy_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/balancedenergy-bounds--32e0a20d492d7999c345abdf.md) | 241 | `result-track:32e0a20d492d7999c345abdf1800ec98795a93a8de9cae77d49b8f21baf30976` |
| 24 | `theorem` | [balancedEnergy_scaled_transport](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/balancedenergy-scaled-transport--548a8da63bce898d01ed5029.md) | 252 | `result-track:548a8da63bce898d01ed502981ff313f42db8ac7a2a4646d0bcfded93e68653a` |
| 25 | `theorem` | [balancedEnergy_normalized](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/balancedenergy-normalized--2728a1dbf0bbef5780d80707.md) | 267 | `result-track:2728a1dbf0bbef5780d80707b93a26e31d78d4e34710f8cf83f77e7cd431e006` |
| 26 | `theorem` | [grade_one_expands](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/grade-one-expands--82d23c3c774890f1eb52cff2.md) | 273 | `result-track:82d23c3c774890f1eb52cff2c4dbd3d23fbce4fb253b7fa37122c0f32bd8f268` |
| 27 | `theorem` | [native_product_bound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/declarations/native-product-bound--6386aa65ad2c5143ee68c525.md) | 282 | `result-track:6386aa65ad2c5143ee68c52508a5a72c8437335a0b5c366aa0ff6c632125c767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
