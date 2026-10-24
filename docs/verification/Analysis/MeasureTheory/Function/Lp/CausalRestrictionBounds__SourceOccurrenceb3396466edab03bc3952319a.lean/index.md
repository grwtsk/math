# Verification target: GRWTSK.MeasureTheory.Function.Lp.CausalRestrictionBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c83c17b74b01115b239801fcb180c5c5b5ab42d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c83c17b74b01115b239801fcb180c5c5b5ab42d`.

Source path: `GRWTSK/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/MeasureTheory/Function/Lp/CausalRestrictionBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers`](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTranslationMultipliers.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy`](../../../../../../mathematics/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrencead1b3dfeb2bd283aa43e74ed.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.SMul` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockAction](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/blockaction--8f2d831d896d25a119ba2dae.md) | 13 | `declaration-track:8f2d831d896d25a119ba2daed22a0a47bdd80bea21bb6bd1bae6719a1f413e33` |
| 2 | `theorem` | [shift_memLp_two](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/shift-memlp-two--aeb62af5fbf4980512b8a49f.md) | 17 | `result-track:aeb62af5fbf4980512b8a49f33abf6c7b0aef922ead7b2ddbc9e9b3e799474d3` |
| 3 | `theorem` | [note_memLp_two](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/note-memlp-two--f6bbed932483940a39ce1f5d.md) | 29 | `result-track:f6bbed932483940a39ce1f5d02227a8eaa9f1334350bad997da736cc42c5faef` |
| 4 | `theorem` | [cascade_memLp_two](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/cascade-memlp-two--3b394b0421747bd3136f0d48.md) | 33 | `result-track:3b394b0421747bd3136f0d48ca6ea5b354c3c8580f02c5a5d6e91a2a88dcd772` |
| 5 | `theorem` | [windowed_block_square_integrable](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/windowed-block-square-integrable--ac42682196b9a6207b438fee.md) | 40 | `result-track:ac42682196b9a6207b438fee883f2863718c1296d1125a159d846e2bb3ab46b4` |
| 6 | `theorem` | [restriction_energy_le_full](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/restriction-energy-le-full--5e27b5e272a603299effcd81.md) | 49 | `result-track:5e27b5e272a603299effcd819b861c4e4ac50eec3da3459dbc908b5939cd6543` |
| 7 | `theorem` | [cutoff_block_exact](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/cutoff-block-exact--1b00dbc8dc3b824d101c2f00.md) | 55 | `result-track:1b00dbc8dc3b824d101c2f006b74e2a1a4c616b6cdf001f983c5322960313e7a` |
| 8 | `theorem` | [cutoff_block_energy_exact](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/cutoff-block-energy-exact--4e74f2bb727bdd8a146cc6d3.md) | 63 | `result-track:4e74f2bb727bdd8a146cc6d3df4d4ea762feffb6f8e7f91b0f6da124e68c0b49` |
| 9 | `theorem` | [actual_cutoff_energy_bound](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/actual-cutoff-energy-bound--09cd0edf70a1e8b55b3485d8.md) | 73 | `result-track:09cd0edf70a1e8b55b3485d8e373cab8e2f373628492b01d1ddb4e2426ecb6f7` |
| 10 | `theorem` | [actual_cutoff_complex_energy_bound](../../../../../../mathematics/Analysis/MeasureTheory/Function/Lp/CausalRestrictionBounds__SourceOccurrenceb3396466edab03bc3952319a.lean/declarations/actual-cutoff-complex-energy-bound--0d3b87ea5ca2ba923c962441.md) | 86 | `result-track:0d3b87ea5ca2ba923c9624412d640f8ab71815aaeba251f24f3ea23fdd4ef3a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
