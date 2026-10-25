# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d11744b6abdc059cbf54fcdb623bb7b6c127a6b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d11744b6abdc059cbf54fcdb623bb7b6c127a6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [instMonadLiftTOfMonadLift_instMonadLiftTOfPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/instmonadlifttofmonadlift-instmonadlifttofpure--9f7bde2e8ea61bc5fade6d8a.md) | 17 | `result-track:9f7bde2e8ea61bc5fade6d8a89caf1f4ff81c644b1bfe0cfa16c9b4ef418d08c` |
| 2 | `theorem` | [monadLift_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/monadlift-map--005ae9b869344b8c3a78ba71.md) | 28 | `result-track:005ae9b869344b8c3a78ba7109433b8adc320f05fdc7642cf0b2f8a5cf280a72` |
| 3 | `theorem` | [monadLift_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/monadlift-seq--d751299905d48ef05921d13e.md) | 33 | `result-track:d751299905d48ef05921d13e4eb955a4062e98bba4546d54d5abf2ce1c01597c` |
| 4 | `theorem` | [monadLift_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/monadlift-seqleft--55bfb068a60a5a8ca95f7050.md) | 37 | `result-track:55bfb068a60a5a8ca95f705012bcc959d923d7aff910932ac18eff1bbc15be23` |
| 5 | `theorem` | [monadLift_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/monadlift-seqright--b0947f9a663593ecbac7604e.md) | 41 | `result-track:b0947f9a663593ecbac7604e8391b6e6019015ad18ccf9276dae8c0e63a3acfc` |
| 6 | `theorem` | [liftM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/liftm-pure--1b5fb02a4f5d329776eb0887.md) | 48 | `result-track:1b5fb02a4f5d329776eb0887b950f08b27221db8c6cb4ae2c19678c4df8a6290` |
| 7 | `theorem` | [liftM_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/liftm-bind--5ddb3503a991d264c05637b6.md) | 52 | `result-track:5ddb3503a991d264c05637b628dff554606fee83eaa856538649269b603acb54` |
| 8 | `theorem` | [liftM_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/liftm-map--45e386b788e097bb9f36adaf.md) | 57 | `result-track:45e386b788e097bb9f36adaf43ef7bab06a69bd58a55eeeeff8d2a4008d5c034` |
| 9 | `theorem` | [liftM_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/liftm-seq--23b422c3825bccb062aafc42.md) | 62 | `result-track:23b422c3825bccb062aafc42bce4261c66252fe7c512000a573532e56f7fce7e` |
| 10 | `theorem` | [liftM_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/liftm-seqleft--e690beb1b2a4f74e00957c2d.md) | 67 | `result-track:e690beb1b2a4f74e00957c2d7e6eef431418fefc62799a6ec6ad7048d19f276d` |
| 11 | `theorem` | [liftM_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24.lean/declarations/liftm-seqright--2eb7be64589672f5c31059d9.md) | 72 | `result-track:2eb7be64589672f5c31059d99b8285a11e94b17a90ba2bec6eff4dbd64033da1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
