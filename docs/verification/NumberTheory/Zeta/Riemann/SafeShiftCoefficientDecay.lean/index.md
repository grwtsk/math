# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftCoefficientDecay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6696bbe1a768b08f930ffda0044406a132977bc2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6696bbe1a768b08f930ffda0044406a132977bc2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [vonMangoldtDirichletTerm_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/vonmangoldtdirichletterm-tendsto-zero--2795dd3383020109df72c0ad.md) | 42 | `result-track:2795dd3383020109df72c0ad372ff3486a0c4c0a7c317166351350d3b96c6719` |
| 2 | `theorem` | [vonMangoldtDirichletTerm_canonical_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/vonmangoldtdirichletterm-canonical-tendsto-zero--f477e2f96250062bb7d145aa.md) | 55 | `result-track:f477e2f96250062bb7d145aa87c2e2ceda95c54bd1012bf773fcfe9c935f11e3` |
| 3 | `theorem` | [safePlusPrimePowerTerm_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeplusprimepowerterm-sequence-tendsto-zero--2843279d7f6ff6f23750fefb.md) | 65 | `result-track:2843279d7f6ff6f23750fefbacdd0f1a275efa7292d299bb427c749e4dc7aca5` |
| 4 | `theorem` | [safeMinusPrimePowerTerm_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeminusprimepowerterm-sequence-tendsto-zero--d7264dc52241cfb5b0ca6526.md) | 77 | `result-track:d7264dc52241cfb5b0ca65265cd6594cd338c0e69b70b5d0292f6a1877fd9866` |
| 5 | `theorem` | [safeCenterPrimePowerTerm_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safecenterprimepowerterm-sequence-tendsto-zero--a813c4170e473b3cbedddeca.md) | 90 | `result-track:a813c4170e473b3cbedddeca1abdfdedf3340676b0bef0ae971a3c18304cca33` |
| 6 | `theorem` | [safeEvenPrimePowerTerm_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeevenprimepowerterm-sequence-tendsto-zero--c8e0a92060b1437581620f54.md) | 103 | `result-track:c8e0a92060b1437581620f54f818c1b3508deefe982bd2e04d04cb43f6acd719` |
| 7 | `theorem` | [safeOddPrimePowerTerm_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeoddprimepowerterm-sequence-tendsto-zero--72d14391c707ece37f024dd9.md) | 114 | `result-track:72d14391c707ece37f024dd978e69047ef0f6437fe1ab6939601d3f459a51e57` |
| 8 | `theorem` | [safeEvenDefectPrimePowerTerm_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeevendefectprimepowerterm-sequence-tendsto-zero--76d967f50c4170d05957cf3a.md) | 125 | `result-track:76d967f50c4170d05957cf3aa0fc560de39faa214ff7737b52144cd6e6fdbfac` |
| 9 | `theorem` | [safeAxialNormalizedY_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeaxialnormalizedy-sequence-tendsto-zero--8b17b4da4ef425066a07acd4.md) | 138 | `result-track:8b17b4da4ef425066a07acd474ef43d042fb4fb2d7590d230d785ad4ab8b4567` |
| 10 | `theorem` | [safeTransverseNormalizedY_sequence_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safetransversenormalizedy-sequence-tendsto-zero--1592d57cce124bfc11388c52.md) | 153 | `result-track:1592d57cce124bfc11388c52dfd09cabc72af2be326f4bca08d5572d4727bf2f` |
| 11 | `theorem` | [threePointGram_tendsto_zero_of_coordinates](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/threepointgram-tendsto-zero-of-coordinates--0dad1514d3f4fd5a059a413e.md) | 171 | `result-track:0dad1514d3f4fd5a059a413e86722d38242a8b6bacd2703b437aab1e4fc3a17f` |
| 12 | `theorem` | [safeAxialQuarticCoefficient_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeaxialquarticcoefficient-tendsto-zero--b2adf43ff8febc229a54f916.md) | 214 | `result-track:b2adf43ff8febc229a54f916ec7731b97be5ee4028fe60430baf5e0359d35a7a` |
| 13 | `theorem` | [safeTransverseQuarticCoefficient_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safetransversequarticcoefficient-tendsto-zero--4815487abeba9b0c7dbf223e.md) | 235 | `result-track:4815487abeba9b0c7dbf223e850a722dd2e865d42fe90f88bd596409da62295a` |
| 14 | `theorem` | [safeAxialQuarticCoefficient_not_tendsto_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safeaxialquarticcoefficient-not-tendsto-pos--7b1ec3a589ffc229bb07edb8.md) | 256 | `result-track:7b1ec3a589ffc229bb07edb8dcd98893d8fcdffe47d39817bb548762efaab39a` |
| 15 | `theorem` | [safeTransverseQuarticCoefficient_not_tendsto_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftCoefficientDecay.lean/declarations/safetransversequarticcoefficient-not-tendsto-pos--3edebecaa74e4a3e693c9e48.md) | 265 | `result-track:3edebecaa74e4a3e693c9e48da4021e15b07ba459989ea3f02743128b75188bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
