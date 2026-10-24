# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fin2.Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e0b161934d8b5d57b1e13ee6b9d269d7d4e7f38",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e0b161934d8b5d57b1e13ee6b9d269d7d4e7f38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Fin2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/fin2--ffd9a55f2ef45e7f272e124c.md) | 45 | `declaration-track:ffd9a55f2ef45e7f272e124c23928887c67ef225b39b39481c15bc80ffff998b` |
| 2 | `def` | [cases'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/cases--200e034bb8c6962e8f3e6eed.md) | 56 | `declaration-track:200e034bb8c6962e8f3e6eed6af274844d7ab0130e5ef672e8ac2d1eb06c0df3` |
| 3 | `def` | [elim0](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/elim0--f570e32228a51bce4198b8d5.md) | 62 | `declaration-track:f570e32228a51bce4198b8d502663118870942477d7bf293c057725730e31b76` |
| 4 | `def` | [toNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/tonat--a6c8ab8b2ca135a3a1c8d92f.md) | 65 | `declaration-track:a6c8ab8b2ca135a3a1c8d92f17754425042e030d1a1f4dfa2d52e43f09f921ee` |
| 5 | `def` | [optOfNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/optofnat--3b3a06fe7e9059774a7104da.md) | 70 | `declaration-track:3b3a06fe7e9059774a7104da87163a0c8ad223e5917d5e70ee882bc8ac1713a3` |
| 6 | `def` | [add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/add--023110c28ec42fe24639612d.md) | 76 | `declaration-track:023110c28ec42fe24639612d0007c77255c52e4a0967c5da80df96a308d9d5d8` |
| 7 | `def` | [left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/left--5f95022e7e2223af63deb3b8.md) | 81 | `declaration-track:5f95022e7e2223af63deb3b80cdc6b6859fe0f838cb2d6b8a58ce76f0011759c` |
| 8 | `def` | [insertPerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/insertperm--afd27cafc57670ec2405a09b.md) | 89 | `declaration-track:afd27cafc57670ec2405a09bf4e31687d324415da3b14ac0f9447b034a65a0e4` |
| 9 | `def` | [remapLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/remapleft--61af9255f9791b8afe9f21ed.md) | 101 | `declaration-track:61af9255f9791b8afe9f21ed4a325bbee074bf1c5bb8d2061b108c074a78b038` |
| 10 | `class` | [IsLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/islt--4dbdb6150d0773f8dee14387.md) | 108 | `declaration-track:4dbdb6150d0773f8dee14387aa6d32b0a00b12eb72925a55ade1302ac4a93260` |
| 11 | `instance` | [IsLT.zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/islt-zero--b51885d8862a6f82d80f94dc.md) | 112 | `declaration-track:b51885d8862a6f82d80f94dc3bbc33e7f013198ae80784338f15a38498db96d4` |
| 12 | `instance` | [IsLT.succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/islt-succ--2d7573eb8eda88f717f03f22.md) | 115 | `declaration-track:2d7573eb8eda88f717f03f22bbfe68627d6490addf4eeb643e5b32fa4515fc9d` |
| 13 | `def` | [ofNat'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/ofnat--93d9826f663c316b82b09bad.md) | 120 | `declaration-track:93d9826f663c316b82b09bad6a0f7a5c2f668ecde30cd89ad0032d766c02efbe` |
| 14 | `def` | [castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/castsucc--e6e9ed095f264207356b1d56.md) | 126 | `declaration-track:e6e9ed095f264207356b1d56b9217dbe54382b4c9fc9bb490cc53606c15e4383` |
| 15 | `def` | [last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/last--a2fc11f2e933b8e9fa034d4d.md) | 131 | `declaration-track:a2fc11f2e933b8e9fa034d4d97f02d79d342ef0444d028f90c111a699ecd94a0` |
| 16 | `def` | [rev](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/rev--7ec515d5ebcce57c28bd45d8.md) | 136 | `declaration-track:7ec515d5ebcce57c28bd45d8a1dc0ceccaae67cfc87f0920ecb0907fd92f2bf5` |
| 17 | `lemma` | [rev_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/rev-last--1b6080a70e82a3b54a00bba5.md) | 140 | `result-track:1b6080a70e82a3b54a00bba54c32ce25a32d0f5cbdb714394ea330bfee00de9f` |
| 18 | `lemma` | [rev_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/rev-castsucc--cde8be698339681dd8b6ec6b.md) | 143 | `result-track:cde8be698339681dd8b6ec6bfc537361e81b74e2060acd90eb9dc86d8218c1f2` |
| 19 | `lemma` | [rev_rev](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/rev-rev--2dd982de330e909292357f12.md) | 146 | `result-track:2dd982de330e909292357f12d428c3c284d9eba177c86f1d892d7ebe3a09e3b1` |
| 20 | `theorem` | [rev_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/rev-involutive--2b54f0166059b295567cde09.md) | 149 | `result-track:2b54f0166059b295567cde09131d6d3d45a4132d80f33037b0d1dfcdd7158f94` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/instance--14b33deca20b5553a0a68755.md) | 153 | `declaration-track:14b33deca20b5553a0a68755bf5d061be437fc852474d2b8d6d820a20160db78` |
| 22 | `instance` | [instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin2/Varianta74c98554984a6af8955e7eef1bdcfaf7caf9ca8fde2a50727bba28fd9a73fb3.lean/declarations/instfintype--98edb0978d945daac9e27603.md) | 156 | `declaration-track:98edb0978d945daac9e27603b9ebfb0396ff4b99a769ac436a2d31c4dd64318c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
