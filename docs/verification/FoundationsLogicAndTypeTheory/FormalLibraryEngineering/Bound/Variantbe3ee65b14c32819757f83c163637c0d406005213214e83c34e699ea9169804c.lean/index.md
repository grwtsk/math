# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0a6728d5cc48227fbf9f08d7a8c8a0203cc050c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0a6728d5cc48227fbf9f08d7a8c8a0203cc050c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.DyadicBounds` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Eval.Core` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reifyFuncForDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/declarations/reifyfuncfordiag--72879c2d0cb02052bf6f3f02.md) | 39 | `declaration-track:72879c2d0cb02052bf6f3f028b29e04da73d418fecb2c952ffb9f1871f8cc6b1` |
| 2 | `def` | [runShadowDiagnostic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/declarations/runshadowdiagnostic--ef293247aa44bfd85d5d1293.md) | 56 | `declaration-track:ef293247aa44bfd85d5d1293a84db874075645e48e28c51698bda7e6fca6ed59` |
| 3 | `def` | [tryDyadicBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/declarations/trydyadicbound--5cf7a9a3e11d0ca90e903f85.md) | 138 | `declaration-track:5cf7a9a3e11d0ca90e903f85bf06c4b7eef09f28a199587bc9f81e31c791fa2c` |
| 4 | `def` | [intervalBoundCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/declarations/intervalboundcore--81c28daab03fa898bce715df.md) | 200 | `declaration-track:81c28daab03fa898bce715df95d013ab6ed8eb905e9a27f2fbfffca49b7909fc` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/declarations/elab--4e18e3766e67c8709e8d884e.md) | 879 | `declaration-track:4e18e3766e67c8709e8d884e8ce61afb5488cef30cf804daea7c79b4a6dc09e8` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/declarations/macro--35dfb15273825b590371fc9b.md) | 927 | `declaration-track:35dfb15273825b590371fc9bb00434e9b9394f10f40e4829a21164b2ace6181c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
