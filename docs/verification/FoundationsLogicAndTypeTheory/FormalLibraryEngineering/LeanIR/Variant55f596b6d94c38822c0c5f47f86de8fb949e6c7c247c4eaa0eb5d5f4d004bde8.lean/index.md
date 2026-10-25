# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanIR.Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09bd0478a6e38fb33aed09e4c427406dd07ce275",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09bd0478a6e38fb33aed09e4c427406dd07ce275`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Util.ForEachExpr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.IR.CompilerM` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.EmitC` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Language.Lean` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Main` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkIRSigData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/declarations/mkirsigdata--39c020c938a189965d985335.md) | 34 | `declaration-track:39c020c938a189965d9853355840a73fe46cda7bee15324fa8e922881fc929ee` |
| 2 | `def` | [mkIRData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/declarations/mkirdata--600e1f65fc7defbb5591b5b6.md) | 40 | `declaration-track:600e1f65fc7defbb5591b5b67e7fb0faf521db32b189614ea80d5023d3544917` |
| 3 | `constants` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/declarations/constants--df054ef5aac561f8c40483ea.md) | 51 | `declaration-track:df054ef5aac561f8c40483ea8e2139b1e20774f982060ce8bc2bf5dc6bfc7016` |
| 4 | `def` | [setConfigOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/declarations/setconfigoption--a7e9e168ca4c1756b41eb007.md) | 58 | `declaration-track:a7e9e168ca4c1756b41eb0074a7357ff1b49978008c913228e0cc47e03b957eb` |
| 5 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variant55f596b6d94c38822c0c5f47f86de8fb949e6c7c247c4eaa0eb5d5f4d004bde8.lean/declarations/main--5b592ebf718ca2cfd1285fcd.md) | 72 | `declaration-track:5b592ebf718ca2cfd1285fcda4bb55da91c155cff457f861fac916a9814a9315` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
