# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SingularReconstruction.Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b39c3fa4672ebf664ef9fb21b969a1ade4ff87ff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b39c3fa4672ebf664ef9fb21b969a1ade4ff87ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Cardinal` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Choose` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [singular_small_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/declarations/singular-small-decomposition--5313f65b8e0c888b6b0de758.md) | 24 | `result-track:5313f65b8e0c888b6b0de75801cccdcb51b84736997c16fca6e997cb7dcacdc7` |
| 2 | `def` | [singularCoverThreshold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/declarations/singularcoverthreshold--2c060275e39c61a8f2eb9488.md) | 67 | `declaration-track:2c060275e39c61a8f2eb9488aab7a55a1b92996006bea793656a0efe594e8e42` |
| 3 | `theorem` | [le_singularCoverThreshold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/declarations/le-singularcoverthreshold--f7c7818008320efbb97e8b37.md) | 70 | `result-track:f7c7818008320efbb97e8b37e95d51395ec61f9ddd439fc59703156526952aec` |
| 4 | `theorem` | [singularCoverThreshold_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/declarations/singularcoverthreshold-lt--d2b4b7ce262cab22fe136f03.md) | 73 | `result-track:d2b4b7ce262cab22fe136f032f9a0e104760839de3e346a48603d66f91e3ffbe` |
| 5 | `theorem` | [singular_exact_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstruction/Variant90b4265136bfd797986d583429b78ba306a3bc68e0d7728eb73bd2612cd01b56.lean/declarations/singular-exact-reconstruction--88cf07e8e6757a11b5d128ca.md) | 81 | `result-track:88cf07e8e6757a11b5d128cabf47f703e672a4def10c863f5422522969f1609a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
