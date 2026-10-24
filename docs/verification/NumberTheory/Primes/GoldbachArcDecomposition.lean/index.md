# Verification target: GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee9589c34ebf438d3119394d4679836e324a4e9d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachArcDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee9589c34ebf438d3119394d4679836e324a4e9d`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachArcDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachArcDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries`](../../../../mathematics/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachMajorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachmajorarcset--56c0b88b55c1643a4ff8021f.md) | 38 | `declaration-track:56c0b88b55c1643a4ff8021f6d3d5e799109ead163275b68b442bda51353529b` |
| 2 | `def` | [goldbachMinorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachminorarcset--f89d9fbea0ae9e76732e8140.md) | 42 | `declaration-track:f89d9fbea0ae9e76732e8140be275290c51f8905772f44f8d8359b12621569bc` |
| 3 | `def` | [goldbachMajorArcContribution](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachmajorarccontribution--a1f76559ceef2a117c67d91e.md) | 46 | `declaration-track:a1f76559ceef2a117c67d91e7e5077645e4d12c440d47f24a8f930db35e9c6d9` |
| 4 | `def` | [goldbachMinorArcContribution](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachminorarccontribution--54084cf052388def4d3d2c6f.md) | 50 | `declaration-track:54084cf052388def4d3d2c6f6e04eb53b0e0b99e43c426a990275d40c886ecbb` |
| 5 | `theorem` | [measurable_goldbachMajorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/measurable-goldbachmajorarcset--88470a26b1c7e60ac7c7ee72.md) | 54 | `result-track:88470a26b1c7e60ac7c7ee722cb45bfd10325fc0055f56daa98959d1b60bc66d` |
| 6 | `theorem` | [measurable_goldbachMinorArcSet](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/measurable-goldbachminorarcset--d91bdc0cd2ae72d18e32f228.md) | 60 | `result-track:d91bdc0cd2ae72d18e32f2280a845ec6d09f9df41c7311ba345b8d978f483e4e` |
| 7 | `theorem` | [goldbachMajorArcSet_union_minor](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachmajorarcset-union-minor--ac98e7246c8eab0802db6093.md) | 66 | `result-track:ac98e7246c8eab0802db6093a3c7a091a74a4f4291ebb656aba825eea1c793e1` |
| 8 | `theorem` | [goldbachMajorArcSet_disjoint_minor](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachmajorarcset-disjoint-minor--d447e22d319081cf936f23f5.md) | 73 | `result-track:d447e22d319081cf936f23f5cfb690b779ebe432e6d0c64cf98bfba02d3e31c8` |
| 9 | `theorem` | [continuous_goldbachCircleIntegrand](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/continuous-goldbachcircleintegrand--c6f841dbac486344ea400df2.md) | 81 | `result-track:c6f841dbac486344ea400df2c06360a7e699ca71368737e54669d95e7029d60e` |
| 10 | `theorem` | [integrableOn_goldbachCircleIntegrand_unit](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/integrableon-goldbachcircleintegrand-unit--1a7bdc4a45c9697ed9ee44cf.md) | 87 | `result-track:1a7bdc4a45c9697ed9ee44cf636300c6d04156ceaf10bdc41b09525942ac79b8` |
| 11 | `theorem` | [integrableOn_goldbachCircleIntegrand_major](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/integrableon-goldbachcircleintegrand-major--eaa23c61ae6c396aa36f0db2.md) | 92 | `result-track:eaa23c61ae6c396aa36f0db2c7d0db4705dfed954cd7f434278a35633eb3df58` |
| 12 | `theorem` | [integrableOn_goldbachCircleIntegrand_minor](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/integrableon-goldbachcircleintegrand-minor--abc6382f34f149074f15abee.md) | 100 | `result-track:abc6382f34f149074f15abeed3415047ccc2a314d8fbabf8ee087754dc0c36a1` |
| 13 | `theorem` | [goldbachMajor_add_minor_eq_logMass](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachmajor-add-minor-eq-logmass--44056a19c76c0615ee9f6609.md) | 108 | `result-track:44056a19c76c0615ee9f66090cc1a2808df97920bf9a006c08b9a634fea96dec` |
| 14 | `theorem` | [goldbachLogMass_pos_of_major_minor_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachlogmass-pos-of-major-minor-bounds--ff8dfdddaa3665f4c1694372.md) | 129 | `result-track:ff8dfdddaa3665f4c16943720b2f59c546bd7b33db2406120fa4e7bd3f113ecc` |
| 15 | `theorem` | [goldbachCount_pos_of_major_minor_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachcount-pos-of-major-minor-bounds--f6ba9114cc6e667f58fcc1e4.md) | 152 | `result-track:f6ba9114cc6e667f58fcc1e4fb098556c114731ac75280dc8b8f2c9f1236fadc` |
| 16 | `def` | [goldbachTruncatedMainScale](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachtruncatedmainscale--fe26fa758d4b347c109d9e4e.md) | 168 | `declaration-track:fe26fa758d4b347c109d9e4effd09b9dd683794d22e857f8bfc06a6956f56f44` |
| 17 | `theorem` | [goldbachCount_pos_of_truncated_arc_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/declarations/goldbachcount-pos-of-truncated-arc-certificate--dbafd44d7f2a51dc75b655af.md) | 173 | `result-track:dbafd44d7f2a51dc75b655af37dc642efce0e4e498acbc4f22e92830c8b84d3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
