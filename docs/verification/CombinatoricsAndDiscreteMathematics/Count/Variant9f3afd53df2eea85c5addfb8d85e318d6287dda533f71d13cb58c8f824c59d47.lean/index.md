# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Count.Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "355439b4d498b976d7772fff78d0ba18a1ca09bc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `355439b4d498b976d7772fff78d0ba18a1ca09bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count--7e27a9e942493b01ad784a8a.md) | 41 | `declaration-track:7e27a9e942493b01ad784a8a56bea33e5189d3f11b027d38be4b3cdc8e4578bc` |
| 2 | `theorem` | [count_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-zero--a973c49e85a6ec29b7e9ad2e.md) | 45 | `result-track:a973c49e85a6ec29b7e9ad2ef6d704bf64e6c0b70409fb67713357b08cc74fe3` |
| 3 | `def` | [CountSet.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/countset-fintype--5456b9394c4e73038df0c957.md) | 49 | `declaration-track:5456b9394c4e73038df0c957cec76a375099aa4174453780e4b78c890ed61d9e` |
| 4 | `theorem` | [count_eq_card_filter_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-eq-card-filter-range--57a1cae282c134aa68b2055f.md) | 59 | `result-track:57a1cae282c134aa68b2055f67292ed5e2eada63ffb058827b5169b1b2cebf76` |
| 5 | `theorem` | [count_eq_card_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-eq-card-fintype--3481ee0456c47992f83a5843.md) | 64 | `result-track:3481ee0456c47992f83a5843b0f96afeeb33d9826d9d2e4ffb013bff1c6f036e` |
| 6 | `theorem` | [count_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-le--e48c7ad6a87f65c92cfcac31.md) | 68 | `result-track:e48c7ad6a87f65c92cfcac31047a67eaa04066bdae02b640b711ef76027c175e` |
| 7 | `theorem` | [count_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-succ--f59e6ed1daa01c7e144c1ca2.md) | 72 | `result-track:f59e6ed1daa01c7e144c1ca2f1ea32429250a72076c6d8057f0e0503608f74f4` |
| 8 | `theorem` | [count_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-monotone--16a12b82897146eba12b48ad.md) | 76 | `result-track:16a12b82897146eba12b48ad8b2c096d552185f96894cb6ae5f38bf0aa1a63d4` |
| 9 | `theorem` | [count_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-add--98fe9613f9ca338247da630c.md) | 79 | `result-track:98fe9613f9ca338247da630c919103c595345fd3a3e1dc98c70b4016588c82cf` |
| 10 | `theorem` | [count_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-add--4fa3a06ec0e530231db705ec.md) | 90 | `result-track:4fa3a06ec0e530231db705eccd369ec8b12c76674b6cefc4e330ee2b143b40f1` |
| 11 | `theorem` | [count_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-one--6809777eafdd7db384bcadc8.md) | 94 | `result-track:6809777eafdd7db384bcadc8992dc135cdfb43f56afb3309bcf0d04a1adacdd9` |
| 12 | `theorem` | [count_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-succ--5adc278b53652565b1e475ad.md) | 96 | `result-track:5adc278b53652565b1e475adf619e8e9a813b4bd12df48917e167282e37fc3f5` |
| 13 | `theorem` | [count_lt_count_succ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-lt-count-succ-iff--aecc93ee7401a3046dcf82b4.md) | 103 | `result-track:aecc93ee7401a3046dcf82b412e22fb429f6124839fd6ef484539f61c95d5e86` |
| 14 | `theorem` | [count_succ_eq_succ_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-succ-eq-succ-count-iff--ab69fb18ceea586742920b2b.md) | 106 | `result-track:ab69fb18ceea586742920b2b95d07b2c0208e331f55306ecf2c4d2cc8ca06569` |
| 15 | `theorem` | [count_succ_eq_count_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-succ-eq-count-iff--6623ce482b8cd3519812c6c8.md) | 109 | `result-track:6623ce482b8cd3519812c6c8114b72662affdaef7cf0b13e3a8b17068772839c` |
| 16 | `theorem` | [lt_of_count_lt_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/lt-of-count-lt-count--84108a27f87dce2453e99c4c.md) | 116 | `result-track:84108a27f87dce2453e99c4c534ac6503d996e0a57cf91d7624589a4c3e60f3e` |
| 17 | `theorem` | [count_strict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-strict-mono--3c658b0316e0d9529507b64a.md) | 119 | `result-track:3c658b0316e0d9529507b64aa23a5150e0b217732de7f7c23e42ed9e74e7b326` |
| 18 | `theorem` | [count_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-injective--5ca08cd1c71152a5fc54c52f.md) | 122 | `result-track:5ca08cd1c71152a5fc54c52f8b954abbe263bb2025ba8ebfb98ae111f6728d93` |
| 19 | `theorem` | [count_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-le-card--bae8f766d3c7a6d7c0a9befa.md) | 128 | `result-track:bae8f766d3c7a6d7c0a9befaed846d7db8d165a8e5a8f1e35b26123b53e4b491` |
| 20 | `theorem` | [count_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-lt-card--cc7e21dc3384893128bdddf6.md) | 132 | `result-track:cc7e21dc3384893128bdddf6333490aa70520b22f458b6ee759f484d8562e1d4` |
| 21 | `theorem` | [count_iff_forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-iff-forall--47064f33358ef2b47e23ef51.md) | 135 | `result-track:47064f33358ef2b47e23ef51ccf7cccdd806eae92eb80826123e391cbf16697c` |
| 22 | `theorem` | [count_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-true--5396d599658fe0eda7d1a9a0.md) | 141 | `result-track:5396d599658fe0eda7d1a9a003bba701c4b5bd46ce509b3f43cee184df980ba2` |
| 23 | `theorem` | [count_iff_forall_not](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-iff-forall-not--1e7a710fede11f54a187881a.md) | 143 | `result-track:1e7a710fede11f54a187881a1287ad9d1c6af7256dd2be774c50bf1b8d9d05af` |
| 24 | `theorem` | [count_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-false--05c0940aade41bf7e6318484.md) | 149 | `result-track:05c0940aade41bf7e63184843a5c4e2f85bb87dd3a68ada64fcf4786cd9cdfc3` |
| 25 | `theorem` | [count_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/declarations/count-mono-left--3372a4a43fdb33df396d16a8.md) | 155 | `result-track:3372a4a43fdb33df396d16a8021cdb4ffed91bd5d7dc2f29cc4ab9a6020fbc5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
