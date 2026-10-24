# Verification target: GRWTSK.NumberTheory.LSeries.TentPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe6da4cbeae87d6e80c6672d17df8f56dc30627",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/TentPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe6da4cbeae87d6e80c6672d17df8f56dc30627`.

Source path: `GRWTSK/NumberTheory/LSeries/TentPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/TentPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentMellinInversion`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedTerm](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/pairedterm--6b10d08eb6ff761b2201e3b5.md) | 32 | `declaration-track:6b10d08eb6ff761b2201e3b5bc343c35ecaf96db43bf614e7c78510d221ecb4d` |
| 2 | `theorem` | [term_norm_on_rightLine](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/term-norm-on-rightline--bd3811cb819772f4ecc2fce1.md) | 36 | `result-track:bd3811cb819772f4ecc2fce1d2f8a7ff298e366eb6ba7a85e4a61deebc4be80b` |
| 3 | `theorem` | [continuous_term_rightLine](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/continuous-term-rightline--5d476ae04fce668572c73a4e.md) | 40 | `result-track:5d476ae04fce668572c73a4ef68d04bd8ba430915fc88f1f7e09cc35dda58fd3` |
| 4 | `theorem` | [norm_pairedTerm_le](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/norm-pairedterm-le--4c2b5ba53ad8697b9fca19fe.md) | 50 | `result-track:4c2b5ba53ad8697b9fca19fe4e886a5bbcd13496faec50cd4f11c8712625ebef` |
| 5 | `theorem` | [integrable_pairedTerm](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/integrable-pairedterm--930cd6da324140b39bf64bdf.md) | 59 | `result-track:930cd6da324140b39bf64bdf6043820d5d0cfa8ac908a372de99dae4339ae8d2` |
| 6 | `theorem` | [integral_norm_pairedTerm_le](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/integral-norm-pairedterm-le--0d857d6931708b248e9dc060.md) | 68 | `result-track:0d857d6931708b248e9dc0607efdcd290a8e0dc166df14c4d6b1d7e7a9b80664` |
| 7 | `theorem` | [summable_integral_norm_pairedTerm](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/summable-integral-norm-pairedterm--5b98aaabb46024b8f3fe1c4f.md) | 79 | `result-track:5b98aaabb46024b8f3fe1c4fd03260d98e2369b7f136d6adee2ec731967ac8de` |
| 8 | `theorem` | [pairedTerm_inversion](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/pairedterm-inversion--f3a271e3271881ee2dcda321.md) | 88 | `result-track:f3a271e3271881ee2dcda32158908ab9c85d7f018e829794af5543068eaca323` |
| 9 | `theorem` | [dirichlet_tent_pairing](../../../../mathematics/NumberTheory/LSeries/TentPairing.lean/declarations/dirichlet-tent-pairing--e58b61c67a7be6cbecd49c04.md) | 111 | `result-track:e58b61c67a7be6cbecd49c04d99ab3589e0a7418393149e4b3b08355afc13932` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
