# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6768f190bcca34163328346fe33c87b65540681",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6768f190bcca34163328346fe33c87b65540681`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Term` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/tosyntax--396f95fbc677261cb80217a0.md) | 21 | `declaration-track:396f95fbc677261cb80217a07444dbb38fea6533491c8aa5f28391c3c241a29d` |
| 2 | `def` | [forallArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/forallarity--9aa082da8a53cc32758610d9.md) | 30 | `declaration-track:9aa082da8a53cc32758610d9ec06ba9ded3d984f3f47a0a6451d9d9b23d20db6` |
| 3 | `def` | [lambdaArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/lambdaarity--90c033386dd3bd785864f7d2.md) | 38 | `declaration-track:90c033386dd3bd785864f7d2f71f6851b7b8e8a120f943ba56251ab80533113d` |
| 4 | `def` | [getAppFn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getappfn--a7e6ad05cf3269ea32694e7a.md) | 44 | `declaration-track:a7e6ad05cf3269ea32694e7acc30ec3e30041112a963f92f07953786276421af` |
| 5 | `def` | [getAppNumArgs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getappnumargs--0ea7f7a34d997ae02f84787d.md) | 50 | `declaration-track:0ea7f7a34d997ae02f84787dd8b7d2ca5ae900312c839547840cdc60e028ac74` |
| 6 | `def` | [withApp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/withapp--356062c754cef7bfbb999505.md) | 61 | `declaration-track:356062c754cef7bfbb99950562da78251590e164e188dbda144075d8118417b5` |
| 7 | `def` | [getAppArgs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getappargs--00d25b61f573c89800463f1c.md) | 75 | `declaration-track:00d25b61f573c89800463f1c261032f4553c5a120248602fdf371ad630c65c90` |
| 8 | `def` | [traverseApp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/traverseapp--86928a5ba10d1f7d1786cf0b.md) | 79 | `declaration-track:86928a5ba10d1f7d1786cf0b9dbb35b5a2c595d3e60613d5382eb2229ccd9bdb` |
| 9 | `def` | [withAppRev'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/withapprev--1dffa36d6c68ac172548c50c.md) | 85 | `declaration-track:1dffa36d6c68ac172548c50c2595fc94edf2040e1bfccdee47c89f6ee861abe2` |
| 10 | `def` | [getAppRevArgs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getapprevargs--9c0b889e5b1fcafdc695c3fc.md) | 97 | `declaration-track:9c0b889e5b1fcafdc695c3fc5dbe4c066ccc9459f3acd61a0e7f6694e5b39c9f` |
| 11 | `def` | [getRevArgD'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getrevargd--5d77a9defde5a8d0552d0764.md) | 101 | `declaration-track:5d77a9defde5a8d0552d076456843f181fbb9f2438f6a10d85f96c6a67f31417` |
| 12 | `def` | [getRevArg!'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getrevarg--48f5a253df08373405266009.md) | 109 | `declaration-track:48f5a253df083734052660097ec4a5457ecc007a09d4d68491ac4e4454dab87a` |
| 13 | `def` | [getArgD'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getargd--d462cd82e1ff954c8f3b0e52.md) | 117 | `declaration-track:d462cd82e1ff954c8f3b0e5200630c4384264d75d4e0ccd415172156418fb127` |
| 14 | `def` | [getArg!'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getarg--cf800b8bd0c82db182b8a230.md) | 122 | `declaration-track:cf800b8bd0c82db182b8a230de8117d8098ca9f889ef07f1c0bf2174ffcb50dc` |
| 15 | `def` | [isAppOf'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/isappof--405ced89ac0503183ef59dc6.md) | 126 | `declaration-track:405ced89ac0503183ef59dc6153686096984fd46c56ffd2ecabddf6f1f86edab` |
| 16 | `def` | [constName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/constname--343ac0da5e6893ba8ef636c6.md) | 132 | `declaration-track:343ac0da5e6893ba8ef636c658c58385faa05381e61ae5091ab8908348493fe8` |
| 17 | `def` | [getAppFnArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantc9f1867dd4cf2ae429b7a76486cf5631987e1a099e91a39f42724e0d0516e383.lean/declarations/getappfnargs--61de2dd3910de05847b9f169.md) | 136 | `declaration-track:61de2dd3910de05847b9f169525a8dcabfa1df778755b66e8a9d22015f07289e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
