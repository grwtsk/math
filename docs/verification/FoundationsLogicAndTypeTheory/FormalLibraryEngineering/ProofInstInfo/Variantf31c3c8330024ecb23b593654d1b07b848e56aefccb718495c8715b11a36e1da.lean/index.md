# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofInstInfo.Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aadf5c1b26345891e68349059507bc5d6e46479",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aadf5c1b26345891e68349059507bc5d6e46479`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.IsClass` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Eta` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocessType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/declarations/preprocesstype--55536b72f9263dc78d3019e3.md) | 17 | `declaration-track:55536b72f9263dc78d3019e3d886b0b256fe6bfa8a2af0305235e2f992d5c661` |
| 2 | `def` | [mkProofInstArgInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/declarations/mkproofinstarginfo--0f8552d4261421ab56e636a0.md) | 34 | `declaration-track:0f8552d4261421ab56e636a01b2a3cbf0194699ac7c71ac9ab6753e79bdbedf9` |
| 3 | `def` | [mkProofInstInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/declarations/mkproofinstinfo--e0817593a6472e2a5dc4b5b0.md) | 54 | `declaration-track:e0817593a6472e2a5dc4b5b02de77250c40f75bd438cddcb7003a7c102641c4f` |
| 4 | `def` | [getProofInstInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/declarations/getproofinstinfo--7cb0e4f998636c3641edf1c4.md) | 63 | `declaration-track:7cb0e4f998636c3641edf1c46f8e74f11808856a3169d84951622abaed4268a7` |
| 5 | `def` | [getProofInstInfoOfExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variantf31c3c8330024ecb23b593654d1b07b848e56aefccb718495c8715b11a36e1da.lean/declarations/getproofinstinfoofexpr--50b248fd75f31c2d395bc981.md) | 71 | `declaration-track:50b248fd75f31c2d395bc981a7a436c4782b6efbe056a0899b884c6f956a46bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
