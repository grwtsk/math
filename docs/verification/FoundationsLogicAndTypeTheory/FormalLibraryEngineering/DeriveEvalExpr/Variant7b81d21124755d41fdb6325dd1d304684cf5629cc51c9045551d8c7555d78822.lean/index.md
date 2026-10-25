# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEvalExpr.Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ea325d9df659423eed2e379c80f0ba2906805b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ea325d9df659423eed2e379c80f0ba2906805b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclNameGen` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withSimpleEvalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/declarations/withsimpleevalexpr--42971fe0ce2fb200cb3830d3.md) | 32 | `declaration-track:42971fe0ce2fb200cb3830d3457dd197473120cbe00050eab46b240a04195e10` |
| 2 | `def` | [ensureEvalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/declarations/ensureevalexpr--b1e05470ff6bf3e1a3d4720e.md) | 48 | `declaration-track:b1e05470ff6bf3e1a3d4720e3dd915e1f42fd7da29c6753af606fecbb83fc4a6` |
| 3 | `def` | [evalMetaEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/declarations/evalmetaeval--387cf9928315ff676f06d8ce.md) | 108 | `declaration-track:387cf9928315ff676f06d8ce28b869d1119de9296147a22c456bb9dc261e0639` |
| 4 | `def` | [deriveEvalExprUsingMetaEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variant7b81d21124755d41fdb6325dd1d304684cf5629cc51c9045551d8c7555d78822.lean/declarations/deriveevalexprusingmetaeval--6b7d47c6f6e765ecf2ee0810.md) | 122 | `declaration-track:6b7d47c6f6e765ecf2ee0810928b7086acc1bf552fa5ad3f4f1ccb58f305075b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
