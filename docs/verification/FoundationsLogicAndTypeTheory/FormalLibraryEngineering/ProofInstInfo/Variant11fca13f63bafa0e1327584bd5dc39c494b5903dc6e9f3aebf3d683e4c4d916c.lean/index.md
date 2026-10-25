# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofInstInfo.Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fef082357b474373719e585343711cc66d15018a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fef082357b474373719e585343711cc66d15018a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.IsClass` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Eta` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocessType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/declarations/preprocesstype--d0f089190ce1922ea61e590e.md) | 25 | `declaration-track:d0f089190ce1922ea61e590e7d8a7075dbf14a287af97dca6117708cd114d328` |
| 2 | `def` | [mkProofInstArgInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/declarations/mkproofinstarginfo--f241fdbe21cf24f66770470d.md) | 42 | `declaration-track:f241fdbe21cf24f66770470d06e7fe5233ae393e4107a046ffbf063c4eb9b77c` |
| 3 | `def` | [mkProofInstInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/declarations/mkproofinstinfo--f0b53e2d5f6ac75bf3626453.md) | 62 | `declaration-track:f0b53e2d5f6ac75bf3626453150edba3f6dd5cffa7fda4f358c5e6525f0d0bca` |
| 4 | `def` | [getProofInstInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/declarations/getproofinstinfo--11d6571f34bc139908038930.md) | 71 | `declaration-track:11d6571f34bc139908038930b73381dcee875194bce789bbfa73b28a7fb47505` |
| 5 | `def` | [getProofInstInfoOfExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/declarations/getproofinstinfoofexpr--edb56559fbed935bf3b72a7f.md) | 79 | `declaration-track:edb56559fbed935bf3b72a7f065951a46235f65f593ab6a6dface8f1dff00f41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
