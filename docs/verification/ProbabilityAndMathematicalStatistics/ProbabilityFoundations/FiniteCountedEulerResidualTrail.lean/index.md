# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerResidualTrail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "449ded2bf1599439d1fef91b2276b08fb428f476",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `449ded2bf1599439d1fef91b2276b08fb428f476`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResidualFreshTrail](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail--112754a7647b098f943c4cd3.md) | 20 | `declaration-track:112754a7647b098f943c4cd39150110f0f96b72b440da9b5454fe54d7467c49a` |
| 2 | `def` | [ResidualFreshTrail.Maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-maximal--d0c4a182661ccaf402bef1a9.md) | 28 | `declaration-track:d0c4a182661ccaf402bef1a93235ced0361794d22aae601a2b6b49092955d791` |
| 3 | `def` | [ResidualFreshTrail.append](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-append--7e0ac18864f43d9a11e5a639.md) | 37 | `declaration-track:7e0ac18864f43d9a11e5a639e19fcf6bafaed7c7e80a04f0899e63c5739437b8` |
| 4 | `theorem` | [ResidualFreshTrail.append_unused_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-append-unused-card--9c3bfc07f193c41b48262815.md) | 53 | `result-track:9c3bfc07f193c41b482628152de6b796b049f51232abc6eab4b2b6fd7381a0a7` |
| 5 | `theorem` | [ResidualFreshTrail.exists_extension_of_not_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-exists-extension-of-not-maximal--4d61435edc453e145c060ae5.md) | 73 | `result-track:4d61435edc453e145c060ae5809d495a047b9a7f41ac08c5b22186f6cd1d2fcd` |
| 6 | `theorem` | [ResidualFreshTrail.maximal_or_strict_successor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-maximal-or-strict-successor--5879ea047fba28ba4cac237a.md) | 92 | `result-track:5879ea047fba28ba4cac237ae6232f99659fecf5f714ff67758715ae21534479` |
| 7 | `theorem` | [ResidualFreshTrail.exists_maximal_extension](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-exists-maximal-extension--44e9e26771fa1bb47851c606.md) | 119 | `result-track:44e9e26771fa1bb47851c606eecb20e2b282a13ad809f249895e96ed28a86143` |
| 8 | `theorem` | [ResidualFreshTrail.unused_out_zero_of_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-unused-out-zero-of-maximal--21eb93c43b85d77baa102037.md) | 158 | `result-track:21eb93c43b85d77baa102037d1e50c99481ce393693302206447a67e5489e140` |
| 9 | `theorem` | [ResidualFreshTrail.unused_out_card_zero_of_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-unused-out-card-zero-of-maximal--31c995e199b122d9bbaabc85.md) | 175 | `result-track:31c995e199b122d9bbaabc85cba9a2a027c29db7e04dc983445b28e5d7d400fb` |
| 10 | `def` | [ResidualDegreeBalanced](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualdegreebalanced--d48e2800bd022ef003d6d03c.md) | 190 | `declaration-track:d48e2800bd022ef003d6d03cb2c48b45468689edd12ff5bb7d4b97c35225ff94` |
| 11 | `theorem` | [ResidualFreshTrail.out_degree_partition](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-out-degree-partition--c341a82ed6f16cc9698ee494.md) | 198 | `result-track:c341a82ed6f16cc9698ee494409af172943aaebd7aa6806c6cac7d9a2ea29200` |
| 12 | `theorem` | [ResidualFreshTrail.in_degree_partition](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-in-degree-partition--096853d13f7f023e542763b5.md) | 239 | `result-track:096853d13f7f023e542763b57b1c963a90b1bf015119788aca605e19961a84d2` |
| 13 | `theorem` | [ResidualFreshTrail.closed_of_balanced_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-closed-of-balanced-maximal--0caa0ab796607a1d142b398e.md) | 283 | `result-track:0caa0ab796607a1d142b398e5c7b04ec465e2ac88ee023262c06b8da23cd5957` |
| 14 | `def` | [ResidualFreshTrail.empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-empty--6bc9b18dd6924a4a5549a432.md) | 305 | `declaration-track:6bc9b18dd6924a4a5549a432555786876c462c0a8f1cc18d28b012f351691956` |
| 15 | `def` | [ResidualFreshTrail.single](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-single--92f630198a79fbd19f53d2cc.md) | 315 | `declaration-track:92f630198a79fbd19f53d2cc3e2339ef9abf82c2f5551fb52612755034e58eef` |
| 16 | `theorem` | [ResidualFreshTrail.single_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-single-used--b694eedd0cfc7b1ce458c412.md) | 328 | `result-track:b694eedd0cfc7b1ce458c412ebbaf0123632b905ec0358ca5fd2100454202007` |
| 17 | `theorem` | [ResidualFreshTrail.exists_nonempty_closed_of_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-exists-nonempty-closed-of-edge--f782996a445da6ece72b5aa8.md) | 340 | `result-track:f782996a445da6ece72b5aa87c363369e2cbd715121ac0b161c678c8f77e9e0c` |
| 18 | `theorem` | [ResidualFreshTrail.disjoint_of_universe_disjoint](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-disjoint-of-universe-disjoint--7099b4dea64516b1f025b6ea.md) | 366 | `result-track:7099b4dea64516b1f025b6ea1aee878c885441aee4d6138457a8dbfb05830f48` |
| 19 | `theorem` | [ResidualFreshTrail.disjoint_from_existing](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualfreshtrail-disjoint-from-existing--8c062302e364c4e9ce7d385f.md) | 378 | `result-track:8c062302e364c4e9ce7d385fded5d5d880370409ac4bd307a9269d286894254d` |
| 20 | `theorem` | [residualDegreeBalanced_of_closed_trail](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/residualdegreebalanced-of-closed-trail--5ad6e166bdfb0d740608a476.md) | 394 | `result-track:5ad6e166bdfb0d740608a476120298fa874c59dfd863df3cac47a0f393becaf2` |
| 21 | `theorem` | [FreshCountedTrail.exists_disjoint_residual_cycle](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerResidualTrail.lean/declarations/freshcountedtrail-exists-disjoint-residual-cycle--1ae7e6e36fcca494671eec65.md) | 407 | `result-track:1ae7e6e36fcca494671eec65a13aebae016bd25d3ad0baff21b1bbd08a812150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
