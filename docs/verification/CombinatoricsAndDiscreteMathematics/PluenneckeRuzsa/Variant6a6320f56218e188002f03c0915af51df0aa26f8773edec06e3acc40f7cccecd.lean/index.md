# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PluenneckeRuzsa.Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07e82df08f471b5ce5db98e0a345a9fa23de37de",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07e82df08f471b5ce5db98e0a345a9fa23de37de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.DoubleCounting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.NNRat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_div_mul_le_card_div_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-div-mul-le-card-div-mul-card-div--8b73075c51ff248eb6e8aa28.md) | 52 | `result-track:8b73075c51ff248eb6e8aa2810814af227a53d0bf26c1f0112d4f7697deea080` |
| 2 | `theorem` | [card_div_mul_le_card_mul_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-div-mul-le-card-mul-mul-card-mul--9648934eee6714b74d635b2b.md) | 69 | `result-track:9648934eee6714b74d635b2b199e20aad87a80350dc6e48aff653ebe45825975` |
| 3 | `theorem` | [card_mul_mul_le_card_div_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-mul-mul-le-card-div-mul-card-mul--8831dfc43a470ce2d64347a7.md) | 79 | `result-track:8831dfc43a470ce2d64347a75363af8f76b1d4c4517ced57ee62761d8a9c6279` |
| 4 | `theorem` | [card_mul_mul_le_card_mul_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-mul-mul-le-card-mul-mul-card-div--4379fad9b605dc397b4b050b.md) | 89 | `result-track:4379fad9b605dc397b4b050bbea9daf6536346f89a92b405b1c71abfb623d4a2` |
| 5 | `theorem` | [mul_pluennecke_petridis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/mul-pluennecke-petridis--50fb829f76361801461440f8.md) | 97 | `result-track:50fb829f76361801461440f8a3f439ccbd68b4c84be746b3a1ef67f4ac9a7312` |
| 6 | `theorem` | [mul_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/mul-aux--278e466eec9dec0ea367e586.md) | 132 | `result-track:278e466eec9dec0ea367e5860536269caa38ba3dd8607e7386e939cef3b22adb` |
| 7 | `theorem` | [card_mul_mul_card_le_card_mul_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-mul-mul-card-le-card-mul-mul-card-mul--c4cee7af97c052591b861406.md) | 147 | `result-track:c4cee7af97c052591b8614065013d53e49e0a954eb6136c2a70b169350ac642f` |
| 8 | `theorem` | [card_mul_mul_le_card_div_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-mul-mul-le-card-div-mul-card-div--6c0c2013279e4c00b98bb1d5.md) | 170 | `result-track:6c0c2013279e4c00b98bb1d559a56b2fa670ed301e1d7cd8f823043eb18b1460` |
| 9 | `theorem` | [card_div_mul_le_card_mul_mul_card_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-div-mul-le-card-mul-mul-card-div--76c5ddd742768215332db07e.md) | 177 | `result-track:76c5ddd742768215332db07e091570be15c43c447b81c6709555681d9892373f` |
| 10 | `theorem` | [card_div_mul_le_card_div_mul_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-div-mul-le-card-div-mul-card-mul--7da9614a1415f21474688297.md) | 184 | `result-track:7da9614a1415f21474688297f02ac1056c73f5e4998fa093d8d7ee048ab683a8` |
| 11 | `theorem` | [card_add_nsmul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-add-nsmul-le--46a72542f38d88a55614676f.md) | 190 | `result-track:46a72542f38d88a55614676face5759d6701143c91f9062d7daa27fddcc3e335` |
| 12 | `theorem` | [card_mul_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-mul-pow-le--7c49607a3bd0dec0d8778261.md) | 206 | `result-track:7c49607a3bd0dec0d8778261a46e868e1d2a77c3027880e090d2a04af4f25952` |
| 13 | `theorem` | [card_pow_div_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-pow-div-pow-le--70177a6b8cf1e291082db76e.md) | 224 | `result-track:70177a6b8cf1e291082db76e2d51224c48045d2cd44dbe54c4c4107fbfeb642c` |
| 14 | `theorem` | [card_pow_div_pow_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-pow-div-pow-le--b1ff90feee9784a6228114cb.md) | 246 | `result-track:b1ff90feee9784a6228114cb9b8dbee81a6a0f3c332e254a9e7a8e7a7066f249` |
| 15 | `theorem` | [card_pow_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-pow-le--9e0c769bb381cdf52d3e9016.md) | 255 | `result-track:9e0c769bb381cdf52d3e90160e322cf34dbe3f11c13612b6fd68d3545348a69e` |
| 16 | `theorem` | [card_pow_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variant6a6320f56218e188002f03c0915af51df0aa26f8773edec06e3acc40f7cccecd.lean/declarations/card-pow-le--690f839e2e2e8fadd7d4bdcf.md) | 263 | `result-track:690f839e2e2e8fadd7d4bdcf1602254e4e0db2159d1ca5098629e77156b1ce9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
