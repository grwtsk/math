# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Incidence.Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ed341a8f96f1983a1fcedeb1f49207ea4dda79",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ed341a8f96f1983a1fcedeb1f49207ea4dda79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Primitive` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IncidenceSignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/declarations/incidencesignature--16478e7457be7c537a7d827d.md) | 24 | `declaration-track:16478e7457be7c537a7d827d7caac0f6b206496df307675f64cc14d3a1f2db0a` |
| 2 | `def` | [Collinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/declarations/collinear--f567fc91bc6990e2caa6c46e.md) | 28 | `declaration-track:f567fc91bc6990e2caa6c46e633cf3dcada6d02bf32c398905b0be20062b7e94` |
| 3 | `def` | [TwoPointLineExistence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/declarations/twopointlineexistence--014069d2d0d8442b7d49624d.md) | 38 | `declaration-track:014069d2d0d8442b7d49624d517910ee5c6cfe4b73bc6d43b2f81e3f07a6ca4a` |
| 4 | `def` | [TwoPointLineUniqueness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/declarations/twopointlineuniqueness--396dc1797005f0c79876c34e.md) | 48 | `declaration-track:396dc1797005f0c79876c34ecd0e82f367e5e7133f5e3b9c8bef0c3d53c9dc95` |
| 5 | `def` | [ThreeNoncollinearPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Incidence/Variant749f12043a9436b0410e11d148b4f7bb409a7c9db5a5b5001ef1b99173beb1ed.lean/declarations/threenoncollinearpoints--3da01c1d0ef0188ae23bbe18.md) | 60 | `declaration-track:3da01c1d0ef0188ae23bbe18b0bf2cf2f9d717e3ecc8624d0ae5f438fa89115f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
