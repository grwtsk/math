# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c6c7f58fd93fc2a256f3f020506b234b839a2a5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c6c7f58fd93fc2a256f3f020506b234b839a2a5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Eval.Extended` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exprCore_le_of_interval_hi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/exprcore-le-of-interval-hi--caae2b390a7ed6952e55180c.md) | 48 | `result-track:caae2b390a7ed6952e55180c6d2cb02c24bd9a830b36066d5fd7da497fe1479a` |
| 2 | `theorem` | [exprCore_ge_of_interval_lo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/exprcore-ge-of-interval-lo--8fc98d1cda6ba917cfa00f5e.md) | 63 | `result-track:8fc98d1cda6ba917cfa00f5e83f3e25f2d6af417a18ea2a1c80d330ff89529f1` |
| 3 | `theorem` | [exprCore_lt_of_interval_hi_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/exprcore-lt-of-interval-hi-lt--22de3c57ee40e0a9e5537484.md) | 78 | `result-track:22de3c57ee40e0a9e55374848de38a34214411bc5280a0966e94398bdb8d096a` |
| 4 | `theorem` | [exprCore_gt_of_interval_lo_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/exprcore-gt-of-interval-lo-gt--55161cdb35a2d6ca7b7456a7.md) | 93 | `result-track:55161cdb35a2d6ca7b7456a729df1623ef425da9f9cb140e2e063d49f32c692b` |
| 5 | `theorem` | [expr_le_of_interval_hi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/expr-le-of-interval-hi--6e63b4f5d75d6220f62ff958.md) | 109 | `result-track:6e63b4f5d75d6220f62ff9581e80828d4ddd9e630c2dd23711b0a5eb3344d1a6` |
| 6 | `theorem` | [expr_ge_of_interval_lo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/expr-ge-of-interval-lo--fe0888e442ee1cd14d9744c7.md) | 121 | `result-track:fe0888e442ee1cd14d9744c7450a8a742869bcaf91cb4f3cb936b11c928a1eec` |
| 7 | `theorem` | [expr_lt_of_interval_hi_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/expr-lt-of-interval-hi-lt--9ccb7406b17a678c906e47de.md) | 133 | `result-track:9ccb7406b17a678c906e47de691387f0d78b8cdb707971974c47524e2fe7955c` |
| 8 | `theorem` | [expr_gt_of_interval_lo_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/expr-gt-of-interval-lo-gt--6956e3fb6cbb084fb606a8c4.md) | 145 | `result-track:6956e3fb6cbb084fb606a8c4769992b38d61e8f04f393a8a6bf86540bfead254` |
| 9 | `theorem` | [expr_le_of_mem_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/expr-le-of-mem-interval--a19e6e0859cddc4bf1ce88ec.md) | 156 | `result-track:a19e6e0859cddc4bf1ce88ec44bc0b4a3f67a694a52f45fcce8ed32627817894` |
| 10 | `theorem` | [expr_ge_of_mem_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4.lean/declarations/expr-ge-of-mem-interval--831ece5dfad9e7d256152349.md) | 163 | `result-track:831ece5dfad9e7d25615234981524c8cfb29eac7eb2846a74ea351d1e63173f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
