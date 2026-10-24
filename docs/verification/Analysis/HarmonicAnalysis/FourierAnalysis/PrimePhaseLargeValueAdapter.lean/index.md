# Verification target: GRWTSK.Analysis.Fourier.PrimePhaseLargeValueAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09722b0f933157dc4838b735da655b1c75ad443b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/PrimePhaseLargeValueAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09722b0f933157dc4838b735da655b1c75ad443b`.

Source path: `GRWTSK/Analysis/Fourier/PrimePhaseLargeValueAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/PrimePhaseLargeValueAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/coefficient--d20250d59177fe211505e57c.md) | 17 | `declaration-track:d20250d59177fe211505e57cb8cd3ff50b29c3451422caecc403bc69680f965f` |
| 2 | `def` | [polynomial](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/polynomial--cd3bbf85789346977793e9fd.md) | 19 | `declaration-track:cd3bbf85789346977793e9fd01bc19d5a71ad1ea941ba415ad05603e77f2a195` |
| 3 | `theorem` | [source_identity](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/source-identity--0f296dabd3e4b4986caf545e.md) | 22 | `result-track:0f296dabd3e4b4986caf545e2c83c41805ff9f82b6f3489d333fa113c1cd6a3f` |
| 4 | `theorem` | [coefficient_square](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/coefficient-square--956a29aeb7df038d5c3a8ebf.md) | 27 | `result-track:956a29aeb7df038d5c3a8ebf6268fdd6d41c56a07776784b5e707ae9d1596603` |
| 5 | `theorem` | [coefficient_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/coefficient-bound--3c322aca7613beba0e8f59b0.md) | 31 | `result-track:3c322aca7613beba0e8f59b008d845db1bf75580ecb2af80332b6c2aec4c81cb` |
| 6 | `theorem` | [narrow_implies_large_modulus](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/narrow-implies-large-modulus--8fff9430f91b0f24670c07b0.md) | 43 | `result-track:8fff9430f91b0f24670c07b014fc232395854dab11ee57c7ddccf927b6aef772` |
| 7 | `theorem` | [squared_readout](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseLargeValueAdapter.lean/declarations/squared-readout--54e64736ebad9ea669b49a12.md) | 51 | `result-track:54e64736ebad9ea669b49a1280594630d420953e90e83f9d198a984607908c36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
