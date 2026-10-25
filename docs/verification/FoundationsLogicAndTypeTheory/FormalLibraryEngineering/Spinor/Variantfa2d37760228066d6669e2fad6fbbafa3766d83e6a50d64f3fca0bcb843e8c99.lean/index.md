# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Spinor.Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "717328bf78a365402e51a2686ada2d89bbd7151e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `717328bf78a365402e51a2686ada2d89bbd7151e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Kernel.Core` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ℓ²](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/declarations/anonymous--b72fc2057a43bbd658ed0340.md) | 13 | `declaration-track:b72fc2057a43bbd658ed03401b2f77c82385d2419ded71a3573e78eeb461e62d` |
| 2 | `def` | [embed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/declarations/embed--31343316bab865f5736180c9.md) | 16 | `declaration-track:31343316bab865f5736180c9795ec7ec0eb7e1f5457e89d9938eec87080658bb` |
| 3 | `def` | [dist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/declarations/dist--e7697f9d6600f4a98b0cd92c.md) | 22 | `declaration-track:e7697f9d6600f4a98b0cd92cddd39f960cf7a12fab1d71f6c97d2bdade50632a` |
| 4 | `def` | [addSpin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/declarations/addspin--6dd42beecbb1c49141a9bfc8.md) | 26 | `declaration-track:6dd42beecbb1c49141a9bfc8600c4dcd151467444aa629d811b56da1463d2978` |
| 5 | `theorem` | [sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spinor/Variantfa2d37760228066d6669e2fad6fbbafa3766d83e6a50d64f3fca0bcb843e8c99.lean/declarations/sound--1e46b66200fbecfeaebf27b6.md) | 42 | `result-track:1e46b66200fbecfeaebf27b6594755f01edd61cbd4b985e9bf4db6fdd155e6fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
