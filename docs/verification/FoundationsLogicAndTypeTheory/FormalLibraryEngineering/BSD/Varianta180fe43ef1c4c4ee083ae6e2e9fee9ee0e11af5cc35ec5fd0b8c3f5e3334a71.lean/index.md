# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BSD.Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dadeca7276d6c70571070c86897bc1ee3a44867",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dadeca7276d6c70571070c86897bc1ee3a44867`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.BSD.RankOrderCompatibility` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.BSD.MorleyTrisectorAnalogy` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.BSD.TorsionOffset` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bsd_rank_order_compatible_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/bsd-rank-order-compatible-if-supplied--5cd8337eb45ba5977f305828.md) | 21 | `result-track:5cd8337eb45ba5977f30582805cb38a9d3188622119e23811fe0b9f684629c48` |
| 2 | `theorem` | [bsd_mismatch_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/bsd-mismatch-obstruction-if-supplied--bd84cf0ac2cda2713b9326c7.md) | 26 | `result-track:bd84cf0ac2cda2713b9326c7984d0b7c7e3f97bcb9f61f59f60c93ad1b7ab016` |
| 3 | `theorem` | [morley_analogy_only](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/morley-analogy-only--47bc253723078f64042d3b23.md) | 31 | `result-track:47bc253723078f64042d3b23466e406925026fd96001ef9a6562ffd8a66786b2` |
| 4 | `theorem` | [torsion_offset_no_intersection_with_half_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/torsion-offset-no-intersection-with-half-if-supplied--f39c6ecf215d0685721efb3f.md) | 35 | `result-track:f39c6ecf215d0685721efb3f4d6f44538f73d4a359fa1b337b611b0de6b86fcb` |
| 5 | `theorem` | [torsion_offset_no_intersection_with_one_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/torsion-offset-no-intersection-with-one-if-supplied--1a69f1e7e0713e5e4adf5568.md) | 40 | `result-track:1a69f1e7e0713e5e4adf5568bb41adf48080d2cac629c2dc9048d0b0e1521c00` |
| 6 | `theorem` | [torsion_offset_no_intersection_with_composites_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/torsion-offset-no-intersection-with-composites-if-supplied--155ec0d74f9c113009fc963a.md) | 45 | `result-track:155ec0d74f9c113009fc963aa9ea8fda188df3d2648d6ea9905fb61e7384da31` |
| 7 | `theorem` | [bsd_obstruction_accounted_for_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/bsd-obstruction-accounted-for-if-supplied--23cc38d970adc0159f009bab.md) | 51 | `result-track:23cc38d970adc0159f009babc3600575b6764052f98c6841b6fdd1ab9d3fb62d` |
| 8 | `theorem` | [bsd_rank_order_if_compatibility_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/bsd-rank-order-if-compatibility-supplied--b1c8e29cf086389d64a41474.md) | 56 | `result-track:b1c8e29cf086389d64a4147427831eede429e5b0d233d2dc04146bb2ac7a6f2d` |
| 9 | `theorem` | [torsion_offset_obstruction_persistence_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BSD/Varianta180fe43ef1c4c4ee083ae6e2e9fee9ee0e11af5cc35ec5fd0b8c3f5e3334a71.lean/declarations/torsion-offset-obstruction-persistence-if-supplied--7e52c3812287b9b5dd2c4f5e.md) | 61 | `result-track:7e52c3812287b9b5dd2c4f5e3daae77f9f7e6194b8c22389a5eef3ac68a3cd89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
