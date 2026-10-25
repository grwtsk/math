# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateBorrow.Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9af93bf85ab307d9f03bbeb829ac55f08c033a09",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9af93bf85ab307d9f03bbeb829ac55f08c033a09`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.PhaseExt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Ownedness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/ownedness--55e0c46a4bdcc22336c23e2e.md) | 21 | `declaration-track:55e0c46a4bdcc22336c23e2eebd120516c997e7c4c97512e748ef0649a10d1bc` |
| 2 | `def` | [Ownedness.join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/ownedness-join--77e1b7abc79321ffd5f6f5ba.md) | 28 | `declaration-track:77e1b7abc79321ffd5f6f5baf3a9ecfaf36673949aa67ffc4323ab5afba64bc8` |
| 3 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/state--b038fc32a9ce7461421aa1b1.md) | 34 | `declaration-track:b038fc32a9ce7461421aa1b13683be57ef100e32cb829f0a95cc123d44da9084` |
| 4 | `abbrev` | [InferM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/inferm--84256e021609f371f868f6e4.md) | 39 | `declaration-track:84256e021609f371f868f6e498a3b837b7deb338a0b6cd78c1877853872a0246` |
| 5 | `def` | [Decl.analyzePropagatedBorrows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/decl-analyzepropagatedborrows--1c09ae7841b1aaf72c2717e7.md) | 41 | `declaration-track:1c09ae7841b1aaf72c2717e75c974481fea1122fb8ce11a8e22299b9d18a0966` |
| 6 | `def` | [Ownedness.toBorrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/ownedness-toborrow--b04f8e825286046235eae72a.md) | 138 | `declaration-track:b04f8e825286046235eae72ab2bd14d15cca6f1b861283ed815f35c45ec87579` |
| 7 | `def` | [Decl.applyOwnedness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/declarations/decl-applyownedness--ae94f91d27542f22f1897c21.md) | 143 | `declaration-track:ae94f91d27542f22f1897c213c17be1c1103086ab7c5d9fdf53a709c73daf87b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
