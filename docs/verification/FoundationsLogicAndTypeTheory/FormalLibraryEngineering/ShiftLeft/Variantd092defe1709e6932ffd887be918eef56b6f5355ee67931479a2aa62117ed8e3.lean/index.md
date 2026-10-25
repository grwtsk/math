# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShiftLeft.Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ced59a84dff910f40954ae7f0ec5599296530cfb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ced59a84dff910f40954ae7f0ec5599296530cfb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Bootstrap` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [go_get_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/go-get-aux--ac80df19da2c0fd8f668f3e6.md) | 34 | `result-track:ac80df19da2c0fd8f668f3e6800b55f43bf222055ac80186cd62fd89f23bc440` |
| 2 | `theorem` | [go_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/go-get--11b217c868b21ce6648425c0.md) | 61 | `result-track:11b217c868b21ce6648425c047170d9e2cc537f69327aaf7bc9bd193b10e8b8c` |
| 3 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/go-denote-mem-prefix--c85ac30d0ad2f9aedc4765f5.md) | 70 | `result-track:c85ac30d0ad2f9aedc4765f594d6bd7227ddbf2a1797e197e0a8fbf842e747ed` |
| 4 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/go-denote-eq--7c05f7237bf3a8c70ecf4706.md) | 86 | `result-track:7c05f7237bf3a8c70ecf4706573491132a169b0b86fbc359fd592d0ce3ce0437` |
| 5 | `theorem` | [denote_blastShiftLeftConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/denote-blastshiftleftconst--d24cd28f4bcbda7de831fbd9.md) | 155 | `result-track:d24cd28f4bcbda7de831fbd97309218316e8748d296b5a34f9658aefc31e3ca3` |
| 6 | `theorem` | [twoPowShift_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/twopowshift-eq--d7359e9c0ba94b025ddc3af3.md) | 176 | `result-track:d7359e9c0ba94b025ddc3af39b30739fd66cdda44fd0890d2c19be4e1421f825` |
| 7 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/go-denote-eq--f7958d493ba0f67b0f8d632c.md) | 238 | `result-track:f7958d493ba0f67b0f8d632c93fc033a6d125fbb209b72f257231e4c19313449` |
| 8 | `theorem` | [denote_blastShiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/declarations/denote-blastshiftleft--0f59c12608bc8c1446f87806.md) | 275 | `result-track:0f59c12608bc8c1446f8780686ad8d39552eaadf77aedd3c173f0ba308dbc733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
