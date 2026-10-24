# Verification target: GRWTSK.Algebra.UniversalAlgebra.IntUnitsPower.Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "878d454335e4f09c72f81bb6c2450d7a93b45148",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `878d454335e4f09c72f81bb6c2450d7a93b45148`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/instance--93d5fbe34303f26c1341cce3.md) | 28 | `declaration-track:93d5fbe34303f26c1341cce34408dd1da84c27375b4f48411d1594f88379e288` |
| 2 | `lemma` | [ZMod.smul_units_def](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/zmod-smul-units-def--f1c3c05baa3d7b35f97203d4.md) | 31 | `result-track:f1c3c05baa3d7b35f97203d41936d06b40b19849cf528f176729ca7307e2bf2a` |
| 3 | `lemma` | [ZMod.natCast_smul_units](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/zmod-natcast-smul-units--ffb64beedd687521a536e8b5.md) | 34 | `result-track:ffb64beedd687521a536e8b51ef0693d27de0ec3d709f6557a0cf69f96f64b8a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/instance--d59f14fc95c001112d855eb0.md) | 38 | `declaration-track:d59f14fc95c001112d855eb0bcdf31ad12fa0f04376527f7c3170c16abb27086` |
| 5 | `instance` | [Int.instUnitsPow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/int-instunitspow--ab13ed1ef318e566ffc901a1.md) | 59 | `declaration-track:ab13ed1ef318e566ffc901a155cf13e11ec260746af6361fcbceca9c2c255464` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/example--7bc2d4a4c4977cf27c53711d.md) | 64 | `declaration-track:7bc2d4a4c4977cf27c53711df6a4bbd33ad2900b7036817ef148d96622da86fa` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/example--7a76d2033949ee79ffa370a5.md) | 65 | `declaration-track:7a76d2033949ee79ffa370a5c65db8c49a594bd9bb31fa1e4280da26ad8abb47` |
| 8 | `lemma` | [ofMul_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/ofmul-uzpow--ba651cf0236a373583003e06.md) | 67 | `result-track:ba651cf0236a373583003e066f79e98c7bec50e22608a3920aa0b3c849cd63f2` |
| 9 | `lemma` | [toMul_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/tomul-uzpow--b92ddfa8877c0c84d2e6fe40.md) | 69 | `result-track:b92ddfa8877c0c84d2e6fe40788f81c417eb2693e57855b045b434d3fea7c7a9` |
| 10 | `lemma` | [uzpow_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-natcast--09c3b63cd4edf2be1e6caac7.md) | 72 | `result-track:09c3b63cd4edf2be1e6caac7e69b47c6942e154c3794ece17a764f40861989e4` |
| 11 | `lemma` | [uzpow_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-coe-nat--566c1575669cd708de432fb1.md) | 76 | `result-track:566c1575669cd708de432fb1f77653b75b092d007429f0de55baee4e01ac3e35` |
| 12 | `lemma` | [one_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/one-uzpow--7578a4ffc0a6bb459bb47295.md) | 80 | `result-track:7578a4ffc0a6bb459bb47295bf814d20ec299da76e6f287b26b032f31abff439` |
| 13 | `lemma` | [mul_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/mul-uzpow--1e7a2ecfdc09df2878432ffd.md) | 83 | `result-track:1e7a2ecfdc09df2878432ffd0a23f6d6eeff25f1590d058f35abc97c4b6e5619` |
| 14 | `lemma` | [uzpow_zero](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-zero--0b56cfc83060c0bd43789d00.md) | 86 | `result-track:0b56cfc83060c0bd43789d00293d6046159fea745c1c96f58a8d30dc19c85b33` |
| 15 | `lemma` | [uzpow_one](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-one--f6298042f4a4607fbd6b1552.md) | 89 | `result-track:f6298042f4a4607fbd6b1552167d7ed0cc07d184cf5daba0a0a33a665514b26d` |
| 16 | `lemma` | [uzpow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-mul--b512212d7ef298f4fc3f821b.md) | 92 | `result-track:b512212d7ef298f4fc3f821b5642ec095d268f0b7dbaaf7ea05ebb2a289569c3` |
| 17 | `lemma` | [uzpow_add](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-add--07c59934c80abafeb9c778cd.md) | 95 | `result-track:07c59934c80abafeb9c778cd909e912a4811f2d77ec3966f96577d3ed886bd11` |
| 18 | `lemma` | [uzpow_sub](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-sub--5362c717cdbd6f59fa62ec4f.md) | 103 | `result-track:5362c717cdbd6f59fa62ec4ff69fe7dfef8132fb23b8cc7d89873f67ece1951b` |
| 19 | `lemma` | [uzpow_neg](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-neg--c61a2bd17fa4f83f72938faf.md) | 106 | `result-track:c61a2bd17fa4f83f72938faf8677cbb8041bb629bdae72177be71a61a0e13a13` |
| 20 | `lemma` | [uzpow_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/declarations/uzpow-intcast--6210a06a0becdc1011e32066.md) | 109 | `result-track:6210a06a0becdc1011e3206603703afc2f2894357b57078b82638b01182d6938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
