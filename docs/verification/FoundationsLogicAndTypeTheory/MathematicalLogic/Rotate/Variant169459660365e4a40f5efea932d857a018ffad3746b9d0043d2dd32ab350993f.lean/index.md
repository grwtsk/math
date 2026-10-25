# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rotate.Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec63c71ea6fd77846f1115d2bff4ba4504f7036b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec63c71ea6fd77846f1115d2bff4ba4504f7036b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate--545523aba0272a11bcfb2ab5.md) | 29 | `declaration-track:545523aba0272a11bcfb2ab5324e9153149e1c74e8fb224f0de732817f06b57d` |
| 2 | `lemma` | [finRotate_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-zero--1c5066801720e70105302264.md) | 33 | `result-track:1c5066801720e7010530226428da64b8107a023566ad4b5d7ef7e0786d83b2a4` |
| 3 | `lemma` | [finRotate_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-succ--5b6887458e1250b9d8c82efa.md) | 35 | `result-track:5b6887458e1250b9d8c82efa72f205e858e1caadf1571e08d9ff1883311a7068` |
| 4 | `theorem` | [finRotate_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-of-lt--af6ba8748a384a9ef9727186.md) | 38 | `result-track:af6ba8748a384a9ef9727186ad9a00c6ef119631d13c1409afabab1e24fb4506` |
| 5 | `theorem` | [finRotate_last'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-last--21c11452a50b728b1c136ce7.md) | 44 | `result-track:21c11452a50b728b1c136ce79666b98148e704cef187e211a388ea2a4413da47` |
| 6 | `theorem` | [finRotate_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-last--af76029628825c6eac45e0dc.md) | 49 | `result-track:af76029628825c6eac45e0dcf18b67296a314f6255ddca6fb452f403a99677a6` |
| 7 | `theorem` | [Fin.snoc_eq_cons_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/fin-snoc-eq-cons-rotate--302dc813b9da22b89964e83b.md) | 52 | `result-track:302dc813b9da22b89964e83b5ea95592153918eba787fea6d0302b1bf6cf5114` |
| 8 | `theorem` | [finRotate_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-one--faa84e4f7d112b3f5ad64c5d.md) | 66 | `result-track:faa84e4f7d112b3f5ad64c5dd2edb98e6daa184abed99819b7bf2216a070b3b6` |
| 9 | `theorem` | [finRotate_succ_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-succ-apply--f268169801753f6b0c61b040.md) | 69 | `result-track:f268169801753f6b0c61b040b21a4a5c3826ca6454eccadf3aa4dd63e1b5f953` |
| 10 | `theorem` | [finRotate_apply_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-apply-zero--0ca5b6aa7d971619fd1d7ffd.md) | 78 | `result-track:0ca5b6aa7d971619fd1d7ffdb17571260e7c62b3231f73e0b3d35e2436b4d098` |
| 11 | `theorem` | [coe_finRotate_of_ne_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/coe-finrotate-of-ne-last--3569a2c9836e6c8286e33b04.md) | 81 | `result-track:3569a2c9836e6c8286e33b045fdde3d046f95811befc0beaf2067d25b6ede3e8` |
| 12 | `theorem` | [coe_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/coe-finrotate--040347fd5931b07f69e8a503.md) | 87 | `result-track:040347fd5931b07f69e8a503e5a70ba87d4720c7d4e8d3d7f26e3faac058e6ba` |
| 13 | `theorem` | [lt_finRotate_iff_ne_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/lt-finrotate-iff-ne-last--35117797848ac242b5322482.md) | 91 | `result-track:35117797848ac242b53224822368f0b6b31723e07020cabf2775c98f5971864e` |
| 14 | `theorem` | [lt_finRotate_iff_ne_neg_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/lt-finrotate-iff-ne-neg-one--522f4e7efc327dd828b08d43.md) | 97 | `result-track:522f4e7efc327dd828b08d431479772e80e86c656d5d341c3d733130e5d9fc18` |
| 15 | `lemma` | [finRotate_succ_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-succ-symm-apply--161326770e6640d4734bcfb3.md) | 102 | `result-track:161326770e6640d4734bcfb3e4af30ea68c23b8732e972962b52ac107fcb3ae6` |
| 16 | `lemma` | [coe_finRotate_symm_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/coe-finrotate-symm-of-ne-zero--26f9bc77231dc1e3173a3420.md) | 107 | `result-track:26f9bc77231dc1e3173a342016b1d61d69ab766bddb80e1f8ed3effd5bf7e436` |
| 17 | `theorem` | [finRotate_symm_lt_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variant169459660365e4a40f5efea932d857a018ffad3746b9d0043d2dd32ab350993f.lean/declarations/finrotate-symm-lt-iff-ne-zero--8dbf1fb87a4fa2890dd1cd63.md) | 112 | `result-track:8dbf1fb87a4fa2890dd1cd632107548100b73f57c3edcb90dfd88e6d2e2d4e75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
