# Verification target: GRWTSK.Algebra.Constructions.Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b4d68b715c2e07084918ba0dac6496c65789367",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b4d68b715c2e07084918ba0dac6496c65789367`.

Source path: `GRWTSK/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Minor.Restrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [emptyOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/emptyon--fe0b4c0ce3c5418155e424d3.md) | 51 | `declaration-track:fe0b4c0ce3c5418155e424d31d5fb698f18f36e95eed614937a8a16f65233815` |
| 2 | `theorem` | [emptyOn_ground](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/emptyon-ground--0dabba90094b1da06cd05720.md) | 61 | `result-track:0dabba90094b1da06cd0572029da8ea1f51aa8de35dada514a2d3ef1cd46e9b4` |
| 3 | `theorem` | [emptyOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/emptyon-isbase-iff--5c0d776c2a6a3dc360f013e2.md) | 63 | `result-track:5c0d776c2a6a3dc360f013e2243ef8b0fd71e3714905bd9e3f51c373263e9ffe` |
| 4 | `theorem` | [emptyOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/emptyon-indep-iff--5a6a939a81378d089665b46c.md) | 65 | `result-track:5a6a939a81378d089665b46c7e776d43805a58445743ecb5023e94ba2510e657` |
| 5 | `theorem` | [ground_eq_empty_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/ground-eq-empty-iff--f931b1dcab4fc8ec44c7b23b.md) | 67 | `result-track:f931b1dcab4fc8ec44c7b23b21249bfa511290fc6f64ea68e907f8e6a16d37ae` |
| 6 | `theorem` | [emptyOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/emptyon-dual-eq--950c5d6552a59acee2fdc3ef.md) | 71 | `result-track:950c5d6552a59acee2fdc3efa3807049f5eb5194c2c624e1a9f7459386a4f2d0` |
| 7 | `theorem` | [restrict_empty](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/restrict-empty--fc51e7deb0213f935d9a61c4.md) | 74 | `result-track:fc51e7deb0213f935d9a61c470049680bac5dbc986f3f1b1b2630a2984470e01` |
| 8 | `theorem` | [eq_emptyOn_or_nonempty](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/eq-emptyon-or-nonempty--bcd0e6a2fd82b2a4dc956d5e.md) | 77 | `result-track:bcd0e6a2fd82b2a4dc956d5ed25a5ef562cdf026a307e9c173640e7c9206f68f` |
| 9 | `theorem` | [eq_emptyOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/eq-emptyon--bbc91e9b0222ba9cb9848f69.md) | 81 | `result-track:bbc91e9b0222ba9cb9848f6994425b8fe25b97257f82861f282846f3fd77ee94` |
| 10 | `instance` | [finite_emptyOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/finite-emptyon--10ccc3f8e391be32b6a5a1bf.md) | 85 | `declaration-track:10ccc3f8e391be32b6a5a1bf3310cf57660f90b31dad695bcdba2479bf3ae82b` |
| 11 | `def` | [loopyOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon--3c1b0e029178249a325eba39.md) | 94 | `declaration-track:3c1b0e029178249a325eba397f6138bac5f0c9ca13a99be32e9b521400aa1403` |
| 12 | `theorem` | [loopyOn_ground](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-ground--f75dc4d4a0bcb6b9fb683868.md) | 96 | `result-track:f75dc4d4a0bcb6b9fb683868efd76c75005416ce2e78b6e81d94acf1b14d4a8e` |
| 13 | `theorem` | [loopyOn_empty](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-empty--6446ec3310b9619da00b02da.md) | 98 | `result-track:6446ec3310b9619da00b02da9f81d97d70a469f7faf21cd05edb68e4a0e5e535` |
| 14 | `theorem` | [loopyOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-indep-iff--a876dcfa053d94cfb3b4efe0.md) | 101 | `result-track:a876dcfa053d94cfb3b4efe082e7420e5214928752c0948cb426a4e4d97a6770` |
| 15 | `theorem` | [eq_loopyOn_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/eq-loopyon-iff--52b987a1ccbdd3b89cbbb2a8.md) | 105 | `result-track:52b987a1ccbdd3b89cbbb2a89afed1a3131d3c2e8fec756ed77bbf227031b586` |
| 16 | `theorem` | [loopyOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-isbase-iff--a3a9cb5127f128d0d43a38a2.md) | 110 | `result-track:a3a9cb5127f128d0d43a38a246eee19ab16edfb71b8e31b1c01740e80865bcd4` |
| 17 | `theorem` | [loopyOn_isBasis_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-isbasis-iff--067b10cb516c5a19a2d32ad4.md) | 113 | `result-track:067b10cb516c5a19a2d32ad430cd8a24e98e7ce401820d365f23830e0c13684e` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/instance--2d164874b1b132f070d742f1.md) | 117 | `declaration-track:2d164874b1b132f070d742f1b846e3ba191ce3a64f7e9b4c5e3821a76cdf7be8` |
| 19 | `theorem` | [Finite.loopyOn_finite](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/finite-loopyon-finite--d4e7e0473d90ef3502bf471f.md) | 120 | `result-track:d4e7e0473d90ef3502bf471f917d48eaad12c735d3dfbc6f67626e1ea0ecc053` |
| 20 | `theorem` | [loopyOn_restrict](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-restrict--7daf66f9dbdf59aa1da9b0e2.md) | 123 | `result-track:7daf66f9dbdf59aa1da9b0e2b7cc53f5ae2611f431dc4eef55f72e8ba6fcdf06` |
| 21 | `theorem` | [empty_isBase_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/empty-isbase-iff--b3288fc29c90271e091dc1ad.md) | 128 | `result-track:b3288fc29c90271e091dc1ad6768f791890614a285eb6113881ca6609d1047b0` |
| 22 | `theorem` | [eq_loopyOn_or_rankPos](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/eq-loopyon-or-rankpos--78f27ba001991684fed824b1.md) | 134 | `result-track:78f27ba001991684fed824b1a4f757333829ba49cbd0367ac918b5348e95426f` |
| 23 | `theorem` | [not_rankPos_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/not-rankpos-iff--51ec65b0c82ab9f72934fce7.md) | 137 | `result-track:51ec65b0c82ab9f72934fce7a540206209cddc8f97d501df7b7ecfd9a2e975e4` |
| 24 | `instance` | [loopyOn_rankFinite](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-rankfinite--5ec87aaf4274e2912038456d.md) | 140 | `declaration-track:5ec87aaf4274e2912038456d27dc2002660a5af5b69fcdf0d10fdfed89d42bd1` |
| 25 | `def` | [freeOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon--464460e0054fe6bc373335f6.md) | 148 | `declaration-track:464460e0054fe6bc373335f649e482f7a4a2abd0d9bb01354a47a9387aab29c8` |
| 26 | `theorem` | [freeOn_ground](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-ground--eede0d020bb2a93f86955ff1.md) | 150 | `result-track:eede0d020bb2a93f86955ff18c93a6a647017a067c4d8d932146f68078bfc0ea` |
| 27 | `theorem` | [freeOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-dual-eq--5857b7f8ac5e665b21b16d02.md) | 152 | `result-track:5857b7f8ac5e665b21b16d0224ac8e05fb3748d455e55107e87398d80a2a47c3` |
| 28 | `theorem` | [loopyOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/loopyon-dual-eq--43512af82ec7adbf4c2629f4.md) | 155 | `result-track:43512af82ec7adbf4c2629f439b149ce3ee5a6ca1d249a35df439feed8197372` |
| 29 | `theorem` | [freeOn_empty](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-empty--0c3f11f2a285ae012d49e2dd.md) | 157 | `result-track:0c3f11f2a285ae012d49e2ddd47817592d23b957ed081606adff4b54e8d2ab53` |
| 30 | `theorem` | [freeOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-isbase-iff--8700c166d48778d6f1029710.md) | 160 | `result-track:8700c166d48778d6f102971087aaca43042aa9ffe9b80f79623739c12be66d44` |
| 31 | `theorem` | [freeOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-indep-iff--4bd861c58b64489f65730523.md) | 164 | `result-track:4bd861c58b64489f657305231996d1be8da53ed61d05caa0f2a2d82cfbef54b3` |
| 32 | `theorem` | [freeOn_indep](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-indep--575fa3176f3b1db49aaeb70b.md) | 167 | `result-track:575fa3176f3b1db49aaeb70b8b4414a143d15bedd7847af0284a188272534c8e` |
| 33 | `theorem` | [freeOn_isBasis_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-isbasis-iff--5d7e2fdf64200875ef4248fb.md) | 170 | `result-track:5d7e2fdf64200875ef4248fbbfcfb652779cf7c5ef0d01f177c0514088ff3050` |
| 34 | `theorem` | [freeOn_isBasis'_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-isbasis-iff--97a7bb79ea58557d579c2882.md) | 175 | `result-track:97a7bb79ea58557d579c288277552836a43bfd9f589b3bdbc8a531e4972de083` |
| 35 | `theorem` | [eq_freeOn_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/eq-freeon-iff--29d05a8c6e7366ba007095b1.md) | 179 | `result-track:29d05a8c6e7366ba007095b1296f71ba1f74c41f674755ac95a0d68e7f219d7a` |
| 36 | `theorem` | [ground_indep_iff_eq_freeOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/ground-indep-iff-eq-freeon--588d397aa480aa431c314220.md) | 185 | `result-track:588d397aa480aa431c31422054c08c404969a22b75f63950b72c451fc8be6b92` |
| 37 | `theorem` | [freeOn_restrict](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-restrict--1d09e3084c9ebdaed3e24108.md) | 188 | `result-track:1d09e3084c9ebdaed3e24108a304e53cefcf1c8178c9e1641cc4c12705544477` |
| 38 | `theorem` | [restrict_eq_freeOn_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/restrict-eq-freeon-iff--857159238b233d63d2e32374.md) | 191 | `result-track:857159238b233d63d2e3237491a8daec83b51b85f63ce53c52eb24e6a061e0a6` |
| 39 | `theorem` | [Indep.restrict_eq_freeOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/indep-restrict-eq-freeon--83acd1685e5af5c104172be2.md) | 195 | `result-track:83acd1685e5af5c104172be23d76af59177bd5423760fa2f53955d7e04c5881b` |
| 40 | `instance` | [freeOn_finitary](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-finitary--bda09789a167330a8d8915ea.md) | 198 | `declaration-track:bda09789a167330a8d8915ea0d2f1f630c4390161ea5b4a97572693c696f56f0` |
| 41 | `lemma` | [freeOn_rankPos](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/freeon-rankpos--c4cbb1e948b9149a17acec1f.md) | 202 | `result-track:c4cbb1e948b9149a17acec1fb2b91998ad878b8287b9c28ba08105a8bc61fe45` |
| 42 | `def` | [uniqueBaseOn](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon--20437833e96c764c10afc281.md) | 211 | `declaration-track:20437833e96c764c10afc281dd99939bd967fe5d16dac5e02b14761240c5a9eb` |
| 43 | `theorem` | [uniqueBaseOn_ground](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-ground--96f0b4722e1ffcbd330082ce.md) | 213 | `result-track:96f0b4722e1ffcbd330082ce25d39133eef628bb183135c88087d3f9402b75c6` |
| 44 | `theorem` | [uniqueBaseOn_isBase_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-isbase-iff--2876d13d38bf8e9f53eeac65.md) | 216 | `result-track:2876d13d38bf8e9f53eeac650d90885804e3f9aff178a76ac64da70e4570774e` |
| 45 | `theorem` | [uniqueBaseOn_inter_ground_eq](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-inter-ground-eq--bf30f1a5f0ca9b1a6d197577.md) | 219 | `result-track:bf30f1a5f0ca9b1a6d197577488e450ba19b223aa38eec63e6e6575c24061834` |
| 46 | `theorem` | [uniqueBaseOn_indep_iff'](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-indep-iff--6ae26cdb05578fc292096990.md) | 225 | `result-track:6ae26cdb05578fc292096990309dd8a376a994d4f90f606b2aeb9c733ccac1ce` |
| 47 | `theorem` | [uniqueBaseOn_indep_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-indep-iff--a2c6f39e6a66d45a8ae51df0.md) | 228 | `result-track:a2c6f39e6a66d45a8ae51df0a59a7dbe7c1da8dc846d594219a0b0bbccdf7282` |
| 48 | `theorem` | [uniqueBaseOn_isBasis_iff](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-isbasis-iff--28a8168f3db1d524959831d4.md) | 232 | `result-track:28a8168f3db1d524959831d41e9d617d74b0105380b772e6e3589d8f9487e43c` |
| 49 | `theorem` | [uniqueBaseOn_inter_isBasis](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-inter-isbasis--a46a2f12b74f04c39a7495eb.md) | 237 | `result-track:a46a2f12b74f04c39a7495ebb06ebdff9b204106391c59f004c08d4265477d68` |
| 50 | `theorem` | [uniqueBaseOn_dual_eq](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-dual-eq--ced704603697f3fdfb7718a2.md) | 240 | `result-track:ced704603697f3fdfb7718a2700427dfe83bd295b1debbda937369fa0797ae67` |
| 51 | `theorem` | [uniqueBaseOn_self](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-self--1286e85b372a283197576e7d.md) | 249 | `result-track:1286e85b372a283197576e7d006ecf84d374495f226d910e26dc760c34d2be63` |
| 52 | `theorem` | [uniqueBaseOn_empty](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-empty--4c8600d7ae7d327c5db6a66c.md) | 252 | `result-track:4c8600d7ae7d327c5db6a66cb35e7654040d0fd9bc8b50b6d226749e0b8e5d95` |
| 53 | `theorem` | [uniqueBaseOn_restrict'](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-restrict--e52989337537c00954b342a9.md) | 255 | `result-track:e52989337537c00954b342a9d4972322a43c4f84a0c2efd557233a536a7827be` |
| 54 | `theorem` | [uniqueBaseOn_restrict](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-restrict--4172899def194ff935b8e25b.md) | 261 | `result-track:4172899def194ff935b8e25bc870837a939c7eb6118fa05c6c4d84b082d3a3ca` |
| 55 | `lemma` | [uniqueBaseOn_rankFinite](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-rankfinite--21cdecee542a0a96b2ff1770.md) | 265 | `result-track:21cdecee542a0a96b2ff17702c22cc85ae57636e51188a28817bed38ee547537` |
| 56 | `instance` | [uniqueBaseOn_finitary](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-finitary--babda57d6f0335375aecbd5b.md) | 271 | `declaration-track:babda57d6f0335375aecbd5b54beb2e536a6288279430548baacff5351ecbf8d` |
| 57 | `lemma` | [uniqueBaseOn_rankPos](../../../../mathematics/Algebra/Constructions/Variant0e6d1ca0f33de020dad4008a8524b11c06746377414188820d98f207d7180b6e.lean/declarations/uniquebaseon-rankpos--cbebd8d0cb9c38d9c6237020.md) | 276 | `result-track:cbebd8d0cb9c38d9c6237020f9e3bfd5998327f2406308c74da0e087875f62bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
