# Verification target: GRWTSK.Algebra.Defs.Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1f876412861f820974d6c5989350a3460a436d2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1f876412861f820974d6c5989350a3460a436d2`.

Source path: `GRWTSK/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rat.castRec](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/rat-castrec--b6813f11d90f8b4e068a0a16.md) | 69 | `declaration-track:b6813f11d90f8b4e068a0a1666ce68c6fd4fc822a83ac9ba11e9f79ce770fdb8` |
| 2 | `def` | [qsmulRec](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/qsmulrec--1b3f6bb1f9ad118ad28835b1.md) | 77 | `declaration-track:1b3f6bb1f9ad118ad28835b1875b6d4de861f6b83b93e7999eacba3d7b284733` |
| 3 | `class` | [DivisionSemiring](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/divisionsemiring--bf0a8c7b504652a28c7228e1.md) | 82 | `declaration-track:bf0a8c7b504652a28c7228e1e944d56b5f6778184c7a37becb676305c8cb55d7` |
| 4 | `class` | [DivisionRing](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/divisionring--30156bf63e61626a409a2be4.md) | 95 | `declaration-track:30156bf63e61626a409a2be4ec2694fa7634ec43a58a85493156876c37bba0fa` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/instance--9ee4ef2c1ef49fd7274e8ffe.md) | 116 | `declaration-track:9ee4ef2c1ef49fd7274e8ffeab9515db160a00d437e53fd1bf870b1cf2a06bb7` |
| 6 | `class` | [Semifield](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/semifield--b6479c1872de4f588ffef370.md) | 121 | `declaration-track:b6479c1872de4f588ffef3709618c193d7b9c45bcd37e1a3b164e6fc7d43d496` |
| 7 | `class` | [Field](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/field--be339ce3862641149fae825b.md) | 134 | `declaration-track:be339ce3862641149fae825bcf646408f418a510e969747855a1e6843ceebc4d` |
| 8 | `theorem` | [cast_mk'](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/cast-mk--8dc230b780c05cba93a75a79.md) | 143 | `result-track:8dc230b780c05cba93a75a79540af894506489fff5a4c6d9ab4972ef14512972` |
| 9 | `theorem` | [cast_def](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/cast-def--c96fbb87c3cb899578184285.md) | 147 | `result-track:c96fbb87c3cb899578184285e72a1f6703c17624d00f9084dca66c78f0ee5c35` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/instance--e62ac811c0769846e5ba48ad.md) | 151 | `declaration-track:e62ac811c0769846e5ba48ad40cf92efeb71068c51e39142560811eed4e4426e` |
| 11 | `theorem` | [smul_def](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/smul-def--4de3c70ccbd6d70ca5e327e5.md) | 155 | `result-track:4de3c70ccbd6d70ca5e327e5865cb798cf278df6f404ffa6cbd31ad3dbe22866` |
| 12 | `theorem` | [smul_one_eq_coe](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/smul-one-eq-coe--34f2b6a414a1de41707ba8ae.md) | 160 | `result-track:34f2b6a414a1de41707ba8aeca1ed856eec4fe34ca2b32e470bdba62cba440c6` |
| 13 | `instance` | [DivisionRing.toOfScientific](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/divisionring-toofscientific--921d3b3e3424d1cf9e27226b.md) | 170 | `declaration-track:921d3b3e3424d1cf9e27226b243504c30494075ebb0073232f293dc996395c6c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/instance--6ec612631870d22d695ae8a8.md) | 180 | `declaration-track:6ec612631870d22d695ae8a83fce43dfd932b450f850e5edf2ae8d598a59bdcb` |
| 15 | `structure` | [IsField](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/isfield--241d395eb173229c4e253d7a.md) | 194 | `declaration-track:241d395eb173229c4e253d7aeb4e4eaa3b4dad7096cfefea1f630e4a9c61491d` |
| 16 | `theorem` | [Semifield.toIsField](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/semifield-toisfield--81527dc1aa45169bd1464a4d.md) | 204 | `result-track:81527dc1aa45169bd1464a4dd70f94a1bf2759b3b1488be0958f4c4d2540cd89` |
| 17 | `theorem` | [Field.toIsField](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/field-toisfield--78bd52bf2de4cc7c727bd7f5.md) | 210 | `result-track:78bd52bf2de4cc7c727bd7f558d7cb8d966de225bebbb94a8ecdafd9105072b7` |
| 18 | `theorem` | [IsField.nontrivial](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/isfield-nontrivial--e0c30fa80cd2ece29b4a7bfb.md) | 215 | `result-track:e0c30fa80cd2ece29b4a7bfbb9c3dd072a68fc5f1656df3fa6a7146167cc47c2` |
| 19 | `theorem` | [not_isField_of_subsingleton](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/not-isfield-of-subsingleton--8863d7b32cb87069fccda39f.md) | 220 | `result-track:8863d7b32cb87069fccda39f07e655b403eb80f440c18c5ff3d685b9f56fc8a1` |
| 20 | `def` | [IsField.toSemifield](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/isfield-tosemifield--f40b89bd7305ce941eaabcf3.md) | 229 | `declaration-track:f40b89bd7305ce941eaabcf353d0d46f39beeef6377bc195385a0fa256c43cc5` |
| 21 | `def` | [IsField.toField](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/isfield-tofield--4021712aef66af185ddb4723.md) | 239 | `declaration-track:4021712aef66af185ddb472323c8451a12d8e45d837c726aa262ae39a5ad29f1` |
| 22 | `theorem` | [uniq_inv_of_isField](../../../../mathematics/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/declarations/uniq-inv-of-isfield--3bb75abbe6d1147e14e87b28.md) | 247 | `result-track:3bb75abbe6d1147e14e87b28786a5d8efa366ada7ba93554070d835debda6c03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
