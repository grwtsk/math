# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c82574bb73c164f0e47c15ed92778120303e79c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c82574bb73c164f0e47c15ed92778120303e79c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.DyadicBounds` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Eval.Core` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reifyFuncForDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/declarations/reifyfuncfordiag--df5cfeb9c524abb53f993b12.md) | 31 | `declaration-track:df5cfeb9c524abb53f993b12b0dae89b48d8db0f086e225f76349aac1446b4a3` |
| 2 | `def` | [runShadowDiagnostic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/declarations/runshadowdiagnostic--cbe22e950bbd6a3e9692cf19.md) | 48 | `declaration-track:cbe22e950bbd6a3e9692cf1974a2ecafbd51531d02613a5a526f9bbef7282410` |
| 3 | `def` | [tryDyadicBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/declarations/trydyadicbound--7be1646eb3392bb3f64238d5.md) | 130 | `declaration-track:7be1646eb3392bb3f64238d51245af64c43035774b27b4c6149346fffad39c6a` |
| 4 | `def` | [intervalBoundCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/declarations/intervalboundcore--c242638ff45c77f1a1bd83e0.md) | 192 | `declaration-track:c242638ff45c77f1a1bd83e0ee56d8ee0e081f0350a1ada8b4a52cbaed517096` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/declarations/elab--4a24367e69c689ff215aded7.md) | 871 | `declaration-track:4a24367e69c689ff215aded7a9ce8eb424fa2ec9033fdf7712851330b1e8b60a` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/declarations/macro--f59f9f2eade536771acbc462.md) | 919 | `declaration-track:f59f9f2eade536771acbc462ffff4d7c1dfcc85cf1bc42e529b8e5d45c823cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
