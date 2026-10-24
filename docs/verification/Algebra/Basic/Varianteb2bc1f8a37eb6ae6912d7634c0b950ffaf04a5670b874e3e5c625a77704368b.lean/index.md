# Verification target: GRWTSK.Algebra.Basic.Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "274352a9244b74eba3322291f777657ccd54794c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `274352a9244b74eba3322291f777657ccd54794c`.

Source path: `GRWTSK/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Nilpotent.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.GCDMonoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Squarefree](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree--d0d5ed07972922db6fd615b5.md) | 36 | `declaration-track:d0d5ed07972922db6fd615b560e0082bd32e7a874dd9a9e0ac25e1a0ee60f617` |
| 2 | `theorem` | [IsRelPrime.of_squarefree_mul](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/isrelprime-of-squarefree-mul--62d029165a06b8d2dff49ace.md) | 39 | `result-track:62d029165a06b8d2dff49ace885c690bb7ba760cf297282563ad686c4af13219` |
| 3 | `theorem` | [IsUnit.squarefree](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/isunit-squarefree--65b0ace087ee328bc95f6476.md) | 43 | `result-track:65b0ace087ee328bc95f6476f19bc44ece10b51bb04db6b60de1732329236792` |
| 4 | `theorem` | [squarefree_one](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-one--afa6ad8f0d67535508e23234.md) | 46 | `result-track:afa6ad8f0d67535508e23234078a1c2adc9dba3fb0326f269d99857e128f4792` |
| 5 | `theorem` | [not_squarefree_zero](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/not-squarefree-zero--ec547ca8d2985f979d1e7b24.md) | 50 | `result-track:ec547ca8d2985f979d1e7b242ef19996a7e563c1eacbad92e45168e698e36337` |
| 6 | `theorem` | [Squarefree.ne_zero](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-ne-zero--137e4ee00dbfe2440fdff63b.md) | 54 | `result-track:137e4ee00dbfe2440fdff63b4b39dea8f053807bff9703468339ae85a67ceb3d` |
| 7 | `theorem` | [Irreducible.squarefree](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/irreducible-squarefree--f7e286f0883137a5e6515400.md) | 60 | `result-track:f7e286f0883137a5e6515400f4762ac3fe1c0c3078995dcf52d3cc4de38da7e1` |
| 8 | `theorem` | [Prime.squarefree](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/prime-squarefree--5288a86bc80c917e00ad578f.md) | 68 | `result-track:5288a86bc80c917e00ad578f25b33560c1c01a24aa88670bc4e9d1d20d8333a3` |
| 9 | `theorem` | [Squarefree.of_mul_left](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-of-mul-left--f4c8b99d5f4c27b43981dcb6.md) | 71 | `result-track:f4c8b99d5f4c27b43981dcb6cec0916cbf9e4beb47995d41e232dd4c90ae2703` |
| 10 | `theorem` | [Squarefree.of_mul_right](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-of-mul-right--df9cf242310462ad8fd8d27e.md) | 74 | `result-track:df9cf242310462ad8fd8d27e9ceb55f733e9d19f113654625e61045ba67c3266` |
| 11 | `theorem` | [Squarefree.squarefree_of_dvd](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-squarefree-of-dvd--e9a2fac3b380fe06147d5753.md) | 77 | `result-track:e9a2fac3b380fe06147d5753323fb94cb370b886fcb66901d86d7006d3cb4933` |
| 12 | `theorem` | [Squarefree.eq_zero_or_one_of_pow_of_not_isUnit](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-eq-zero-or-one-of-pow-of-not-isunit--aab889fcc429d137419f2c58.md) | 80 | `result-track:aab889fcc429d137419f2c586a30fab8f674e7a120b6691d0af711d7296ffcb6` |
| 13 | `theorem` | [Squarefree.pow_dvd_of_pow_dvd](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-pow-dvd-of-pow-dvd--2342ab6026d1b6d5d518c5a3.md) | 88 | `result-track:2342ab6026d1b6d5d518c5a33d12bd646366f186933ef7b1cf540f36ec94923e` |
| 14 | `theorem` | [Squarefree.gcd_right](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-gcd-right--5af39bc3a4b22e9e136f4b08.md) | 98 | `result-track:5af39bc3a4b22e9e136f4b080784ff69930f8f881eca7ee7cd793c2e4a8be806` |
| 15 | `theorem` | [Squarefree.gcd_left](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-gcd-left--221df6226513d800754d2b31.md) | 101 | `result-track:221df6226513d800754d2b315df210d1800b8c78ca3315a1d548d1ec429a7ded` |
| 16 | `theorem` | [squarefree_iff_emultiplicity_le_one](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-iff-emultiplicity-le-one--504c122508e2202cf2e39b81.md) | 106 | `result-track:504c122508e2202cf2e39b81690ee4bc8dada28f6adcff02279894d4d6614cb6` |
| 17 | `theorem` | [squarefree_iff_no_irreducibles](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-iff-no-irreducibles--0b39311782389ffee9f0a5b5.md) | 121 | `result-track:0b39311782389ffee9f0a5b59f71058918b1b5207b0a9ee3d6858192c033aec9` |
| 18 | `theorem` | [irreducible_sq_not_dvd_iff_eq_zero_and_no_irreducibles_or_squarefree](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/irreducible-sq-not-dvd-iff-eq-zero-and-no-irreducibles-or-squarefree--ff9ba0caf5dc645b4eb2c78a.md) | 128 | `result-track:ff9ba0caf5dc645b4eb2c78aa43cfd852199946afd40086fe21f4cca73d72498` |
| 19 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_ne_zero](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-ne-zero--190140faf3038b54a6c9a3a6.md) | 139 | `result-track:190140faf3038b54a6c9a3a61961b28b86cae38c3328a2cc74e7df37d2843ca8` |
| 20 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_exists_irreducible](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-exists-irreducible--4083badbee176c4f850f2052.md) | 143 | `result-track:4083badbee176c4f850f20529ebe827c5cb91b4f350c0d1f8f9e583788563f47` |
| 21 | `theorem` | [Squarefree.isRadical](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-isradical--9e79d0b09d17f32ecafd36bc.md) | 155 | `result-track:9e79d0b09d17f32ecafd36bc134c7978878ab39cd0dcab532729f62952395a62` |
| 22 | `theorem` | [Squarefree.dvd_pow_iff_dvd](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-dvd-pow-iff-dvd--294da85845e40aa851ba1a19.md) | 160 | `result-track:294da85845e40aa851ba1a19cb8123b217a2d3287e0f47d1528be4890cf4fbb7` |
| 23 | `theorem` | [IsRadical.squarefree](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/isradical-squarefree--e6a9278e71bf3d26872f772a.md) | 167 | `result-track:e6a9278e71bf3d26872f772a6c8274949c4be592b3f84a1514945894286c485e` |
| 24 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-right--11e917f6a345056fd989b5f0.md) | 175 | `result-track:11e917f6a345056fd989b5f0417d0c7280c3cc741a3eac2a6e831915060bc165` |
| 25 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_left](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-left--c6c3fd563606eb749b5ea5f5.md) | 187 | `result-track:c6c3fd563606eb749b5ea5f57bdf88bc7f6a422f49243e54277b4f00e44f4ae4` |
| 26 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_right](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-right--c1086e427dae2413ab963132.md) | 195 | `result-track:c1086e427dae2413ab9631327349e2f1db470763cb54cf7a6bd2b205693d35fc` |
| 27 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_left](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-left--ceb8beed8e1c2c46ece0786d.md) | 203 | `result-track:ceb8beed8e1c2c46ece0786d7a6b780b040bed1b07064d0328c8a8bfea17e612` |
| 28 | `theorem` | [squarefree_mul_iff](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-mul-iff--e09823ec24fa8e6f624517f9.md) | 211 | `result-track:e09823ec24fa8e6f624517f991dc394a275939c7594b2fc8ada2d0f338bf80b7` |
| 29 | `theorem` | [isRadical_iff_squarefree_or_zero](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/isradical-iff-squarefree-or-zero--3eae4c5b7c39511c3c90cb97.md) | 216 | `result-track:3eae4c5b7c39511c3c90cb9722fa3756a98db495a9e40b6374c133e57d3a04c2` |
| 30 | `theorem` | [isRadical_iff_squarefree_of_ne_zero](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/isradical-iff-squarefree-of-ne-zero--78ee04935a4efc42acafdd48.md) | 223 | `result-track:78ee04935a4efc42acafdd4875f21c8d88af8e48bbb4d6d9d21c14522195d5cb` |
| 31 | `lemma` | [_root_.exists_squarefree_dvd_pow_of_ne_zero](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/root-exists-squarefree-dvd-pow-of-ne-zero--4b658aedec1732a537b34d81.md) | 232 | `result-track:4b658aedec1732a537b34d81dc06878fbbb62abdac7b26fa0578a36e622d454c` |
| 32 | `theorem` | [squarefree_iff_nodup_normalizedFactors](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-iff-nodup-normalizedfactors--a8562a077a892254f4cce1d9.md) | 248 | `result-track:a8562a077a892254f4cce1d99ec69c207de0b4173c1149d9237315b6750cb1c0` |
| 33 | `theorem` | [squarefree_natAbs](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-natabs--3303f10a17e6081fbb00e1db.md) | 277 | `result-track:3303f10a17e6081fbb00e1dbb667582f431801bed92afef67753322eeb4c2efb` |
| 34 | `theorem` | [squarefree_natCast](../../../../mathematics/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/declarations/squarefree-natcast--9831e58faafbdae79e893677.md) | 282 | `result-track:9831e58faafbdae79e8936777930787d3ef4a3afeee7dc328dfd31a0b255f31b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
