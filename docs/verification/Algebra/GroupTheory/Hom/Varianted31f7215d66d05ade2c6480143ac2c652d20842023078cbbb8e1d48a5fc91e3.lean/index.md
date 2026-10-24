# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "919bf12c6f804753087a5a1eaa3d5de5d6b90e95",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `919bf12c6f804753087a5a1eaa3d5de5d6b90e95`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidHom.toMultiplicative](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/addmonoidhom-tomultiplicative--4bfa41a31def2f130ffb999d.md) | 31 | `declaration-track:4bfa41a31def2f130ffb999dfaee141b00cd1532fb085d1bdcf0a2398884fb0d` |
| 2 | `lemma` | [AddMonoidHom.coe_toMultiplicative](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/addmonoidhom-coe-tomultiplicative--ec35549b5358827ec02d719f.md) | 47 | `result-track:ec35549b5358827ec02d719f51cd7b6ef0208257edbf55cb92b4a1568096ffd1` |
| 3 | `def` | [MonoidHom.toAdditive](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/monoidhom-toadditive--1cec4bbad47ac4f5b9024849.md) | 52 | `declaration-track:1cec4bbad47ac4f5b902484930291ac185fe495ad7429d9e023833c135ebf4f3` |
| 4 | `lemma` | [MonoidHom.coe_toMultiplicative](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/monoidhom-coe-tomultiplicative--d2e98d75035f100635c6fb07.md) | 68 | `result-track:d2e98d75035f100635c6fb077d488dd463b7aa8df58184aa656e5922d4ac5971` |
| 5 | `def` | [AddMonoidHom.toMultiplicative'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/addmonoidhom-tomultiplicative--501447de0b27f4f64f3ad3f2.md) | 73 | `declaration-track:501447de0b27f4f64f3ad3f2668b469f562bb145bfdf97dee5f96af43dbac83c` |
| 6 | `lemma` | [AddMonoidHom.coe_toMultiplicative'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/addmonoidhom-coe-tomultiplicative--3d1adb8ce7bf37dafc5747ef.md) | 89 | `result-track:3d1adb8ce7bf37dafc5747ef619e80a4cd88a31ce1daf4682fdfeceda63e144f` |
| 7 | `def` | [MonoidHom.toAdditive'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/monoidhom-toadditive--1e9deee65e5ebee0d26531c2.md) | 94 | `declaration-track:1e9deee65e5ebee0d26531c24a84107853980b89a32ff2fafea048ecd848ccc6` |
| 8 | `lemma` | [MonoidHom.coe_toAdditive'](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/monoidhom-coe-toadditive--285546a9dac2832dab1da2f6.md) | 99 | `result-track:285546a9dac2832dab1da2f6e87db06a037b0f8fa8198ae6cb133ee81736e3d0` |
| 9 | `def` | [AddMonoidHom.toMultiplicative''](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/addmonoidhom-tomultiplicative--332a79ca1186ab013e582285.md) | 104 | `declaration-track:332a79ca1186ab013e582285109bcc9b8941f1e852e447297ad5e057b10e5c9c` |
| 10 | `lemma` | [AddMonoidHom.coe_toMultiplicative''](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/addmonoidhom-coe-tomultiplicative--66ba63686f91fbfbba955751.md) | 120 | `result-track:66ba63686f91fbfbba95575114f6534fc13a6a0d9f60baf1715ed966bf70a137` |
| 11 | `def` | [MonoidHom.toAdditive''](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/monoidhom-toadditive--67b851a3e4403e425aaf21bb.md) | 125 | `declaration-track:67b851a3e4403e425aaf21bb508b3d8f2268bbf806741dfab1bd989649ea292a` |
| 12 | `lemma` | [MonoidHom.coe_toAdditive''](../../../../../mathematics/Algebra/GroupTheory/Hom/Varianted31f7215d66d05ade2c6480143ac2c652d20842023078cbbb8e1d48a5fc91e3.lean/declarations/monoidhom-coe-toadditive--70b4cc09478c15829a0a8472.md) | 130 | `result-track:70b4cc09478c15829a0a84720f2e2d7469715110e13117e229bb2af90f2851c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
