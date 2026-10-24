# Verification target: GRWTSK.Algebra.Solvable.Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ce3a8ff8456d3f8943c425146efb0cd94da3afd",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ce3a8ff8456d3f8943c425146efb0cd94da3afd`.

Source path: `GRWTSK/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeriesOfIdeal](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal--2cb852a041e8ccf6a0294160.md) | 63 | `declaration-track:2cb852a041e8ccf6a02941606d88815ac91fa38da17f0daca51d2aaf5662e20d` |
| 2 | `theorem` | [derivedSeriesOfIdeal_zero](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-zero--f6d62f14c9402410a7bb6c01.md) | 68 | `result-track:f6d62f14c9402410a7bb6c012324b73b16d0be4ae4ea223c11749d0295bbc4f6` |
| 3 | `theorem` | [derivedSeriesOfIdeal_succ](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-succ--63614602cb6d7e9c497f813e.md) | 73 | `result-track:63614602cb6d7e9c497f813ea5530170d2bc137e7a55239ecbb13b133d3cd03e` |
| 4 | `abbrev` | [derivedSeries](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries--5dc34241250388bd482b5bc9.md) | 80 | `declaration-track:5dc34241250388bd482b5bc9bc56b1ac70bb3392417a182d167b1468da092fe6` |
| 5 | `theorem` | [derivedSeries_def](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-def--e567a5ac188a1de9418142c7.md) | 84 | `result-track:e567a5ac188a1de9418142c7ccd013a0b32e8fc57dc9ec782f53b515549d1852` |
| 6 | `theorem` | [derivedSeriesOfIdeal_add](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-add--ad5d3635f6f68ba5a202f4a0.md) | 92 | `result-track:ad5d3635f6f68ba5a202f4a0c1aab0b5dff46752250ee02c411f75eae70c3fa6` |
| 7 | `theorem` | [derivedSeriesOfIdeal_le](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-le--5493f2fa00ad11ea38d0e8b3.md) | 99 | `result-track:5493f2fa00ad11ea38d0e8b3e0539fc59dcea13c0d2c37e6145b1db008d0eaaa` |
| 8 | `theorem` | [derivedSeriesOfIdeal_succ_le](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-succ-le--32ec10143d3c1c6ee4cada40.md) | 110 | `result-track:32ec10143d3c1c6ee4cada403fc6be21b37198b25d8fa0e6fcfab4ef012df340` |
| 9 | `theorem` | [derivedSeriesOfIdeal_le_self](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-le-self--48be916aba0269d8f0d170de.md) | 114 | `result-track:48be916aba0269d8f0d170de06e1b50cf8fd845c3f08b230bff1c0e49da5ed3a` |
| 10 | `theorem` | [derivedSeriesOfIdeal_mono](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-mono--3dcef716c910e256be045685.md) | 118 | `result-track:3dcef716c910e256be04568512d22deba9cac336bb9afa6e29d069c07443f5b1` |
| 11 | `theorem` | [derivedSeriesOfIdeal_antitone](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-antitone--b4fa3a570c72a4e6f4dd5468.md) | 122 | `result-track:b4fa3a570c72a4e6f4dd54681c47b82dc141366d6a159b1ad6a032ff8a76f46c` |
| 12 | `theorem` | [derivedSeriesOfIdeal_add_le_add](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseriesofideal-add-le-add--6c82e9b1cb493bd445fce12b.md) | 126 | `result-track:6c82e9b1cb493bd445fce12bd634b6ddc1f5b930d9a430704bef16a570e0ed00` |
| 13 | `theorem` | [derivedSeries_of_bot_eq_bot](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-of-bot-eq-bot--10cacddabce9fb77d512be1c.md) | 137 | `result-track:10cacddabce9fb77d512be1c925dbf6424a992a5f12a9106a30b435feedb908c` |
| 14 | `theorem` | [abelian_iff_derived_one_eq_bot](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/abelian-iff-derived-one-eq-bot--b152bac37d846a578197ba28.md) | 141 | `result-track:b152bac37d846a578197ba2865e37878ea754db3f20ec53ce4312466a7446021` |
| 15 | `theorem` | [abelian_iff_derived_succ_eq_bot](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/abelian-iff-derived-succ-eq-bot--ba119f9b067e668fdec64990.md) | 146 | `result-track:ba119f9b067e668fdec649901f6627b7bf782c3b98c56a3675b796d28d968b5a` |
| 16 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_comap](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-eq-derivedseriesofideal-comap--7abbb8c7b457e37b28e7f7f7.md) | 159 | `result-track:7abbb8c7b457e37b28e7f7f78bdd7e65b7ea92427d10c64759337776841e2783` |
| 17 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_map](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-eq-derivedseriesofideal-map--8d024709067edbe4dfed02db.md) | 168 | `result-track:8d024709067edbe4dfed02db48f26fc7c1fa4dfb4a6e435bd3493ac4183c2008` |
| 18 | `theorem` | [derivedSeries_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-eq-bot-iff--d2c1d01e5312f16394803a58.md) | 174 | `result-track:d2c1d01e5312f16394803a58c008ac9512b3057e11dc2cd9e827692da9de8fc3` |
| 19 | `theorem` | [derivedSeries_add_eq_bot](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-add-eq-bot--4d3266f8368b3f271d868556.md) | 179 | `result-track:4d3266f8368b3f271d8685566af3b1259c5647d560122bc2b2b6bc1d449d7caa` |
| 20 | `theorem` | [derivedSeries_map_le](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-map-le--09766de08d3971da25f1459e.md) | 189 | `result-track:09766de08d3971da25f1459e34035fdc6ff437e6842fcb96439e4dcabe3b8037` |
| 21 | `theorem` | [derivedSeries_map_eq](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-map-eq--f19eb8fcb917b6e5d2462bbf.md) | 196 | `result-track:f19eb8fcb917b6e5d2462bbf481e75d98b5bf85d32488c9ee7869cc7b850ade7` |
| 22 | `class` | [IsSolvable](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/issolvable--1eb9fa14b16ba56dfbb67a05.md) | 210 | `declaration-track:1eb9fa14b16ba56dfbb67a05ebd6ec60e0ecd248f8893227744f5508be6f80ac` |
| 23 | `instance` | [isSolvableBot](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/issolvablebot--993c49fbf6c70514b5f6e2bc.md) | 214 | `declaration-track:993c49fbf6c70514b5f6e2bccc2f440b20cc987619d3673c916b708f9d873951` |
| 24 | `instance` | [isSolvableAdd](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/issolvableadd--5b6fc0a219168fbd67d08ce8.md) | 218 | `declaration-track:5b6fc0a219168fbd67d08ce87204b1ddbbbb90c6fecd310fb52ee1ae7815a20a` |
| 25 | `theorem` | [Injective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/injective-liealgebra-issolvable--c7b33d3fe85321d69606860e.md) | 232 | `result-track:c7b33d3fe85321d69606860ec0710674407611d8d4442861d670f86c24340e50` |
| 26 | `theorem` | [Surjective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/surjective-liealgebra-issolvable--d10ba354583a55552b98253c.md) | 240 | `result-track:d10ba354583a55552b98253cdb08d921d7418d2a77f63c297beee94e7378552b` |
| 27 | `theorem` | [LieHom.isSolvable_range](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/liehom-issolvable-range--927383c790ed7227027a86ec.md) | 250 | `result-track:927383c790ed7227027a86ec854cd6fd43a21990f5da92940bc3aff3fd4edf11` |
| 28 | `theorem` | [solvable_iff_equiv_solvable](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/solvable-iff-equiv-solvable--857bfaa0b3f27fb3088242f1.md) | 257 | `result-track:857bfaa0b3f27fb3088242f15c0373acd10e65d0d366afe8ae65c8d98c616f70` |
| 29 | `theorem` | [le_solvable_ideal_solvable](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/le-solvable-ideal-solvable--15fa1d6f8d42a5ead6a901df.md) | 263 | `result-track:15fa1d6f8d42a5ead6a901dfaf84d23aa53e6c7d5b8132535a5a04bda202df02` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/instance--5295d08fb8563fe8173398b5.md) | 270 | `declaration-track:5295d08fb8563fe8173398b574cc3515c33d78cd2ee3a0d2cb427d1fe52e4318` |
| 31 | `def` | [radical](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/radical--164346a4fecd071d925e13f0.md) | 277 | `declaration-track:164346a4fecd071d925e13f0b29e1594e6b180bf5eb21e8ce13b12521a2c77d2` |
| 32 | `instance` | [radicalIsSolvable](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/radicalissolvable--9df11632094f920dfc64d65e.md) | 282 | `declaration-track:9df11632094f920dfc64d65e18ca14a8009bbc781e7b8076e643303a83ee09e7` |
| 33 | `theorem` | [LieIdeal.solvable_iff_le_radical](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/lieideal-solvable-iff-le-radical--c80dec7e4dbadb01d0e97f6c.md) | 292 | `result-track:c80dec7e4dbadb01d0e97f6cdb3c442a88066dd7a14425ea9f3b32bc853ae45f` |
| 34 | `theorem` | [center_le_radical](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/center-le-radical--e51c670ae26f675ea7b19b97.md) | 297 | `result-track:e51c670ae26f675ea7b19b97a29ef40937bbcd6f636ad6b141bfafa774fc1d0e` |
| 35 | `def` | [derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedlengthofideal--2b2f314a3d00cb108bef097b.md) | 306 | `declaration-track:2b2f314a3d00cb108bef097b9089de4b4ecaead65ca6b6663d2676e5f892f777` |
| 36 | `abbrev` | [derivedLength](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedlength--22fd97e062a76dcdee044776.md) | 313 | `declaration-track:22fd97e062a76dcdee0447768f070643662d661cf7b14c9f41092d5523a8f569` |
| 37 | `theorem` | [derivedSeries_of_derivedLength_succ](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedseries-of-derivedlength-succ--adc9ce86013410566d2ee543.md) | 317 | `result-track:adc9ce86013410566d2ee5439d31608d8e0c4093b8b144c82b86149e0d9415e9` |
| 38 | `theorem` | [derivedLength_eq_derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedlength-eq-derivedlengthofideal--f758af4aa4640c05810a2e0e.md) | 331 | `result-track:f758af4aa4640c05810a2e0e28c31d20e4b957ad771ae00ee5db4e79268568ec` |
| 39 | `def` | [derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedabelianofideal--3020edaea9af88404b9aae9d.md) | 345 | `declaration-track:3020edaea9af88404b9aae9dbd931bdf252e54ed13839229e531a7a50c542b41` |
| 40 | `theorem` | [abelian_derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/abelian-derivedabelianofideal--bff56ed49a4e62deb08da4af.md) | 351 | `result-track:bff56ed49a4e62deb08da4af8ffff697b6d7dc913ed6d5adcc8215d3106c4845` |
| 41 | `theorem` | [derivedLength_zero](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/derivedlength-zero--48c85826a96d33eabfa7d79a.md) | 359 | `result-track:48c85826a96d33eabfa7d79a35805b402cec2ab5ba6afce2d71f99d604c1682a` |
| 42 | `theorem` | [abelian_of_solvable_ideal_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variantd3937a854ba933b1beda4a9c36ec6cc88086444ba5887df0a263b543e4e3ec9d.lean/declarations/abelian-of-solvable-ideal-eq-bot-iff--66430a01a26ba4c521475405.md) | 370 | `result-track:66430a01a26ba4c521475405d13d8b84972409c0267b95f4587609e3101c71ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
