# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6271967bc08f27524bd2792f6821fa712251975c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6271967bc08f27524bd2792f6821fa712251975c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Icc_mul_Icc_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/icc-mul-icc-subset--9c6e45d4501e4c58317df77b.md) | 45 | `result-track:9c6e45d4501e4c58317df77b1fe2fba4a973749e1edf92fd36ea81d0af510663` |
| 2 | `theorem` | [Iic_mul_Iic_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/iic-mul-iic-subset--1276457a656b1e706cd69293.md) | 50 | `result-track:1276457a656b1e706cd69293b81f4394d3f17ce00411d00efd7336c5e4ed18e8` |
| 3 | `theorem` | [Ici_mul_Ici_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/ici-mul-ici-subset--19834a698707ff0bc8670cfe.md) | 54 | `result-track:19834a698707ff0bc8670cfedd7614c42e74708a300e967242a17b344b028051` |
| 4 | `theorem` | [Icc_mul_Ico_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/icc-mul-ico-subset--0d9945ded5bdf95be55b1df2.md) | 65 | `result-track:0d9945ded5bdf95be55b1df2e0cf727addef6ba0732ee7b50c65d9cc809ae49b` |
| 5 | `theorem` | [Ico_mul_Icc_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/ico-mul-icc-subset--eaec8764c7d063679699d6f5.md) | 70 | `result-track:eaec8764c7d063679699d6f56a77807edeb8acdac32b3211c004d4bd734d87a9` |
| 6 | `theorem` | [Ioc_mul_Ico_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/ioc-mul-ico-subset--eb07466b22b35e2b66d5309b.md) | 75 | `result-track:eb07466b22b35e2b66d5309bb1d69aea933a5576a0dde4458aa51dc3ab5d4cdc` |
| 7 | `theorem` | [Ico_mul_Ioc_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/ico-mul-ioc-subset--88ef7cfcc526fc8ab6821b41.md) | 80 | `result-track:88ef7cfcc526fc8ab6821b414cd8946cb08b9ba58a1861deba4aebc5fb4beaa2` |
| 8 | `theorem` | [Iic_mul_Iio_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/iic-mul-iio-subset--ccded46bb3539cb837838c25.md) | 85 | `result-track:ccded46bb3539cb837838c25b84cf66b46f1b6fe7e4c0176bfe970c617beef64` |
| 9 | `theorem` | [Iio_mul_Iic_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/iio-mul-iic-subset--ca756e8f7f1d7d5759c59b69.md) | 89 | `result-track:ca756e8f7f1d7d5759c59b69899f1ab05e363704acdbee37875112db2c1ee0f0` |
| 10 | `theorem` | [Ioi_mul_Ici_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/ioi-mul-ici-subset--6e7c679dc15b21ceb2c97dc6.md) | 93 | `result-track:6e7c679dc15b21ceb2c97dc66c1731e1297d8da2ecd72bf6074fc317ffef03db` |
| 11 | `theorem` | [Ici_mul_Ioi_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1d3aeb31226321beffb354d29363a8767a008adca6003f0b0724fd0753748609.lean/declarations/ici-mul-ioi-subset--a1fd16057d15aa64f9d19ed6.md) | 97 | `result-track:a1fd16057d15aa64f9d19ed69442e3384890e79b465c32dc26c945215687fb39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
