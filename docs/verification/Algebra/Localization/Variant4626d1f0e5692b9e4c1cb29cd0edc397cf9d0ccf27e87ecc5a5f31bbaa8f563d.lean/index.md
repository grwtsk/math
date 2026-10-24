# Verification target: GRWTSK.Algebra.Localization.Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4b6334ddb351d490a462226043d9218842e47b3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4b6334ddb351d490a462226043d9218842e47b3`.

Source path: `GRWTSK/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.OreSet` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsLocalizedModule.lift_rank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/islocalizedmodule-lift-rank-eq--1364a4d711272cb969065cbb.md) | 48 | `result-track:1364a4d711272cb969065cbb7b0884a260c17688869093844ed8fd4334fcf9fb` |
| 2 | `lemma` | [IsLocalizedModule.finrank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/islocalizedmodule-finrank-eq--9cafb9d451b1f444164aab31.md) | 60 | `result-track:9cafb9d451b1f444164aab312ab514827ff41a5b423a508d382b7a76e2b14b9f` |
| 3 | `lemma` | [IsLocalizedModule.rank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/islocalizedmodule-rank-eq--925a7c9dc86ecc12165ead6c.md) | 65 | `result-track:925a7c9dc86ecc12165ead6c6898eedf8758ca84eb08aa8cef36a1a141cb9b20` |
| 4 | `lemma` | [IsLocalization.rank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/islocalization-rank-eq--5fdd76be393fd152ce2d9dca.md) | 69 | `result-track:5fdd76be393fd152ce2d9dca442f8a99b75d2d7284fa3e19d5863ee2b1e66ab9` |
| 5 | `theorem` | [exists_set_linearIndependent_of_isDomain](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/exists-set-linearindependent-of-isdomain--5d599c89af82b54b9e75872b.md) | 82 | `result-track:5d599c89af82b54b9e75872b62be935955c993dfa35f6a989992a5063bf5bb05` |
| 6 | `theorem` | [rank_quotient_add_rank_of_isDomain](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/rank-quotient-add-rank-of-isdomain--598aeec8a926fc9c4b0d11b9.md) | 95 | `result-track:598aeec8a926fc9c4b0d11b943833bd630fb04f19f9a14d632446f65b1bdda8e` |
| 7 | `instance` | [IsDomain.hasRankNullity](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/isdomain-hasranknullity--f469e05e533e91f37b8632e5.md) | 105 | `declaration-track:f469e05e533e91f37b8632e59fd51bf970a2d36387ff7a3e42af0b094dd9e0a6` |
| 8 | `theorem` | [lift_rank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/lift-rank-eq-of-le-nonzerodivisors--00fd9cc02d1683cf4556f202.md) | 122 | `result-track:00fd9cc02d1683cf4556f202438e2634b48cd1c80257a7ca33532f0880d0e591` |
| 9 | `theorem` | [finrank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/finrank-eq-of-le-nonzerodivisors--eb99bbde558d5c59c600e1d0.md) | 143 | `result-track:eb99bbde558d5c59c600e1d0c3d2e025220525c769cbda89e3573b26510db3e4` |
| 10 | `theorem` | [rank_eq_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/rank-eq-of-le-nonzerodivisors--9c57a49113bb714b9a6b98ca.md) | 147 | `result-track:9c57a49113bb714b9a6b98ca68a292fc6c6d3f499e3fc2b8c93ae36e34a0bb3a` |
| 11 | `theorem` | [lift_rank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/lift-rank-eq--bfd812ddd1f79c8890e22524.md) | 159 | `result-track:bfd812ddd1f79c8890e225244b0c6b6724843dae808de9aa4109eb16ba4560e5` |
| 12 | `theorem` | [finrank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/finrank-eq--db9647501e0af76cf4df9c9b.md) | 183 | `result-track:db9647501e0af76cf4df9c9b2f7d2ac439c79735aa902e93e618ce25cbf02e86` |
| 13 | `theorem` | [rank_eq](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/rank-eq--a5c8d4dd0abc5eac09043723.md) | 186 | `result-track:a5c8d4dd0abc5eac090437234b214d70fa04ab51830048da5fe656d1698e6412` |
| 14 | `lemma` | [aleph0_le_rank_of_isEmpty_oreSet](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/aleph0-le-rank-of-isempty-oreset--839fceaf595b9abf77ed2d6d.md) | 200 | `result-track:839fceaf595b9abf77ed2d6db09fdf7a746db28c8c740b0928e913f57a258192` |
| 15 | `lemma` | [nonempty_oreSet_of_strongRankCondition](../../../../mathematics/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/declarations/nonempty-oreset-of-strongrankcondition--84bf4e26d8d2250be985f04a.md) | 229 | `result-track:84bf4e26d8d2250be985f04a9107c0e02ba42a9b1f2cb16773a306dc3319631c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
