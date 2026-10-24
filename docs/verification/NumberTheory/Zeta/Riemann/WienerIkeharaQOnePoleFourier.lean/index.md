# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOnePoleFourier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a3f0650645c6ff13e471508993eca56346f0dbf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a3f0650645c6ff13e471508993eca56346f0dbf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransform` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerPoleProduct](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpoleproduct--a35550c332154f3fc680cdc7.md) | 68 | `declaration-track:a35550c332154f3fc680cdc786ae959d6a81cd9e378be92252d342dfb7be1be3` |
| 2 | `theorem` | [wienerPole_real_decay_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpole-real-decay-integrable--320c17b8b26ab87e81461589.md) | 76 | `result-track:320c17b8b26ab87e814615896d02f8f6c77a4c84d8bf334e4e4b827541bb7c62` |
| 3 | `theorem` | [wienerPole_complex_decay_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpole-complex-decay-integrable--4249c989b6b18262697530e9.md) | 87 | `result-track:4249c989b6b18262697530e97d7d0d6f7a8555ebde274e58de859e9ff3e95c06` |
| 4 | `theorem` | [wienerPoleProduct_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpoleproduct-integrable--5f0f3ed27a850628eee7418f.md) | 99 | `result-track:5f0f3ed27a850628eee7418f4df1ec351cafc40f15537f1390e333cd5a3cfd5c` |
| 5 | `theorem` | [wienerPoleProduct_eq_complexExp](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpoleproduct-eq-complexexp--70cf86b8f2ab60d7f9c34b72.md) | 127 | `result-track:70cf86b8f2ab60d7f9c34b723e36b5a95d2a82083ed646f1dfc37d451e3ca7f3` |
| 6 | `theorem` | [wienerPole_complexExp_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpole-complexexp-integral--e280841c3d4668e2a50daf49.md) | 150 | `result-track:e280841c3d4668e2a50daf49555d14c2a8ea87d4ad188dff86f5d54e611f392d` |
| 7 | `theorem` | [wienerPole_secondFourier](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/declarations/wienerpole-secondfourier--1523aacc42ee69cd03a24f0b.md) | 209 | `result-track:1523aacc42ee69cd03a24f0bc4adbaf8b246b9e310e25b3dc9af7d89ed1fcfe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
