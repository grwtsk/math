# Verification target: GRWTSK.NumberTheory.Moebius.DyadicQuadraticMertensTwoPointPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f34bb10d318c8dd2a2aebf3bfa4a0b07dde34f0a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f34bb10d318c8dd2a2aebf3bfa4a0b07dde34f0a`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicMeanMertensTwoPointPrefix`](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Algebra.Order.Chebyshev` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DyadicMertensTwoPointQuadraticEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/dyadicmertenstwopointquadraticenvelope--f2ec7f34ffc9b09d3c6a6ce1.md) | 36 | `declaration-track:f2ec7f34ffc9b09d3c6a6ce18387a38c5a21333d7eae958836f81ef436eb636a` |
| 2 | `def` | [SubpolynomialDyadicQuadraticMertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicquadraticmertenstwopointprefix--ab86ad5462da70f3ed270644.md) | 45 | `declaration-track:ab86ad5462da70f3ed270644be63b44f2af191c314e8099c1135304305ea621a` |
| 3 | `theorem` | [dyadicMertensTwoPointQuadraticEnvelope_of_uniform](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/dyadicmertenstwopointquadraticenvelope-of-uniform--c613e80e9d16cd21a16e0eda.md) | 53 | `result-track:c613e80e9d16cd21a16e0edac786c83d5afd1b9bf8f69181e98559b5a3d987bc` |
| 4 | `theorem` | [dyadicMertensTwoPointMeanEnvelope_of_quadratic](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/dyadicmertenstwopointmeanenvelope-of-quadratic--f804608141d8946a46b56314.md) | 78 | `result-track:f804608141d8946a46b56314173fa51f61936895091c649d4d8a74f7bea53313` |
| 5 | `theorem` | [abs_weightedMertensDyadicShiftPacket_le_of_quadraticEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/abs-weightedmertensdyadicshiftpacket-le-of-quadraticenvelope--903308f8063d286c3f311174.md) | 137 | `result-track:903308f8063d286c3f311174c9725c093490dd27145a7b60195898564c983841` |
| 6 | `theorem` | [subpolynomialDyadicQuadraticMertensTwoPointPrefix_of_uniform](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicquadraticmertenstwopointprefix-of-uniform--2f97c9f9ab21bf9a63d01e76.md) | 145 | `result-track:2f97c9f9ab21bf9a63d01e76f4cdda3a294fc9b7bc1e307b1f4945d0d8a86edd` |
| 7 | `theorem` | [subpolynomialDyadicMeanMertensTwoPointPrefix_of_quadratic](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicmeanmertenstwopointprefix-of-quadratic--b62ab310799766f04c53ca79.md) | 155 | `result-track:b62ab310799766f04c53ca79c1f37988761cc61e1c2e1221bb28ba7659eb2020` |
| 8 | `theorem` | [subpolynomialDyadicMertensShiftPacket_of_quadraticTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicmertensshiftpacket-of-quadratictwopointprefix--1182b76d2c9335878986f1b8.md) | 165 | `result-track:1182b76d2c9335878986f1b87105507784afe9f149a760b5c6faedaa9b9daefa` |
| 9 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicQuadraticMertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean/declarations/riemannhypothesis-of-subpolynomialdyadicquadraticmertenstwopointprefix--8d568cf227cbd0466f42d3b0.md) | 172 | `result-track:8d568cf227cbd0466f42d3b04af0f17358e08b41322c6de46f38c86a9c70a68d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
