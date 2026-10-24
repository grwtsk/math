# Verification target: GRWTSK.Algebra.GroupTheory.Even.Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a7bb77a116896a48a6cd725d96371b6df395285",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a7bb77a116896a48a6cd725d96371b6df395285`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Even` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [even_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-iff--9f52a225138a9b4d381849c0.md) | 22 | `result-track:9f52a225138a9b4d381849c0647a5313ac9e2b63aa312f53962aa90f8c8b6185` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/instance--f4671b8805770d703ddbaad6.md) | 26 | `declaration-track:f4671b8805770d703ddbaad6dcc857877f589edd31c58c0e0c6857332f460d64` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/instance--d43b32192228343e16cc8492.md) | 29 | `declaration-track:d43b32192228343e16cc849279b2c524338e967e59e35e77f1cc29b437b2efe7` |
| 4 | `lemma` | [not_even_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/not-even-iff--93192474d313a4b692eae0fd.md) | 33 | `result-track:93192474d313a4b692eae0fd31b885854fefc8e78f5da9c2c0047b7bb2110c51` |
| 5 | `lemma` | [two_dvd_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/two-dvd-ne-zero--d2cae6393e52abba21c9f0ea.md) | 35 | `result-track:d2cae6393e52abba21c9f0ea665dd313c62e00e0e12050b4a5f0a3f21014f9c5` |
| 6 | `lemma` | [not_even_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/not-even-one--247e11f618aeff0d2b375923.md) | 38 | `result-track:247e11f618aeff0d2b3759235b17a6662083f0c6aced8aa5e3c6cd8454e84b21` |
| 7 | `lemma` | [even_add](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-add--4308741bb04d813ee409a74d.md) | 40 | `result-track:4308741bb04d813ee409a74d05b2c68714b0bf24a4758c8c1cc186dbe0147b54` |
| 8 | `lemma` | [even_add_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-add-one--3c6f2ccc3f5fdb5ef453af86.md) | 44 | `result-track:3c6f2ccc3f5fdb5ef453af869a4a5973c5b1f19f69004f25ef13fb42ddefc0c8` |
| 9 | `lemma` | [succ_mod_two_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/succ-mod-two-eq-zero-iff--b8c6c0c23855e3d0f2a9b0dc.md) | 46 | `result-track:b8c6c0c23855e3d0f2a9b0dc78356e712a8d54921f68bd86a43026ab42724014` |
| 10 | `lemma` | [succ_mod_two_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/succ-mod-two-eq-one-iff--2be202577fae254be4bc69f0.md) | 49 | `result-track:2be202577fae254be4bc69f086c175f417313d420963b22deeb6398e43384fe4` |
| 11 | `lemma` | [two_not_dvd_two_mul_add_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/two-not-dvd-two-mul-add-one--c721b3d5d13a9a03d7c68f42.md) | 52 | `result-track:c721b3d5d13a9a03d7c68f42944c4ba2ac6229d6e62d88f041ef70b6c3aee726` |
| 12 | `lemma` | [two_not_dvd_two_mul_sub_one](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/two-not-dvd-two-mul-sub-one--acee08ccd06bb653f870f657.md) | 54 | `result-track:acee08ccd06bb653f870f657cce5b2ac5d7ab2ad0ab578c6d1d114cba51eec25` |
| 13 | `lemma` | [even_sub](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-sub--f05dbc16815e06b203d00971.md) | 57 | `result-track:f05dbc16815e06b203d009714fba194ca19ac7e664688c99aba474628c170a8c` |
| 14 | `lemma` | [even_mul](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-mul--053d9feee7aa465963921a89.md) | 61 | `result-track:053d9feee7aa465963921a89711470d2df96042ba05d7dee06ee9a257d23947b` |
| 15 | `lemma` | [even_pow](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-pow--3dcd85b41c8ab6859bd81fd8.md) | 67 | `result-track:3dcd85b41c8ab6859bd81fd826eeb1c9c61bc16016094d071340cbbdbf5090e5` |
| 16 | `lemma` | [even_pow'](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-pow--ca7df7df051ba19e7c4dae8f.md) | 70 | `result-track:ca7df7df051ba19e7c4dae8fe0610047481b5e418a0ed78c4120ef7613a2743c` |
| 17 | `lemma` | [even_mul_succ_self](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-mul-succ-self--2e727e8a963166d96ef309a5.md) | 72 | `result-track:2e727e8a963166d96ef309a588de182511703900109fc1e963a5865a818e4ba5` |
| 18 | `lemma` | [even_mul_pred_self](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/even-mul-pred-self--1f6c22f63f96e4264f360427.md) | 74 | `result-track:1f6c22f63f96e4264f36042759edb38428d4540465f28a8ba4fd0807d306ab4e` |
| 19 | `lemma` | [two_mul_div_two_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/two-mul-div-two-of-even--d3c12ffaffb78d9224ba3868.md) | 78 | `result-track:d3c12ffaffb78d9224ba3868705a7a56d0d8d2c3ab0bc0204fd06263c8a91385` |
| 20 | `lemma` | [div_two_mul_two_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/div-two-mul-two-of-even--cb161ca764fa73b9fdbe8dce.md) | 81 | `result-track:cb161ca764fa73b9fdbe8dcee0940aef0533a896edaef26567aa5093277f92ef` |
| 21 | `theorem` | [one_lt_of_ne_zero_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/one-lt-of-ne-zero-of-even--9f1cc6db5eff3cabc5d8b4b3.md) | 84 | `result-track:9f1cc6db5eff3cabc5d8b4b38fd0cb8fd02b911c69fc5bf4197f5e8d7e2c7f6a` |
| 22 | `theorem` | [add_one_lt_of_even](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/add-one-lt-of-even--b05a665bf3f08a4930c257d1.md) | 90 | `result-track:b05a665bf3f08a4930c257d1d0658e804d6bffdace73643264c4bf18e6a4e0e3` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/example--11523be3d52f14e0bf902a6d.md) | 97 | `declaration-track:11523be3d52f14e0bf902a6ddbbb8fb069a006ce5d0bc591f7c6cb8c849ce736` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Variant0ad3b5847458c5520aaa1b08a1d55597583482a194cca7ac498ac55e074e53c7.lean/declarations/example--3d195bb25d0db9865e8c52ca.md) | 99 | `declaration-track:3d195bb25d0db9865e8c52ca60ee65a18c840b109399bf4c4fef15145af140a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
