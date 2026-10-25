# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a0011c4c798d221a6d453c78a27e93640f0149c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a0011c4c798d221a6d453c78a27e93640f0149c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.AC.Seq` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/eqcnstr--f3d97089691ee09237342f8c.md) | 27 | `declaration-track:f3d97089691ee09237342f8caa2d6e932efc32a64ccdd839422697084dd8f591` |
| 2 | `inductive` | [EqCnstrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/eqcnstrproof--a5397cd6bfb5918a77f7fe6e.md) | 33 | `declaration-track:a5397cd6bfb5918a77f7fe6e3866212a63256ed268b00a134ce75ca92f8b796e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/instance--77e524d40d3a73bc005b007a.md) | 54 | `declaration-track:77e524d40d3a73bc005b007a1b37eb1272f18f2bf7383d369fe03a071eb69bbf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/instance--6fe6a4dd7af8d7106f0241fc.md) | 57 | `declaration-track:6fe6a4dd7af8d7106f0241fc48dfb504f7b04f2e15d011d3ee3f2f1e310c1126` |
| 5 | `def` | [EqCnstr.compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/eqcnstr-compare--01fa571c8c81a266719e71e4.md) | 60 | `declaration-track:01fa571c8c81a266719e71e4fd6461c366563dac92bfedbbecaa95eaceb68dd6` |
| 6 | `abbrev` | [Queue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/queue--4cea878a45b34c998371cb37.md) | 64 | `declaration-track:4cea878a45b34c998371cb37564f3297145680a7b7b8f228f7106bc48f6c15b6` |
| 7 | `structure` | [DiseqCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/diseqcnstr--7f40c14acab2cdd34bebeb9f.md) | 67 | `declaration-track:7f40c14acab2cdd34bebeb9f475efa94872f07a20b95f91100ed7db5ef98c018` |
| 8 | `inductive` | [DiseqCnstrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/diseqcnstrproof--86f5e8496090f664b8523e24.md) | 72 | `declaration-track:86f5e8496090f664b8523e24e1c989755cd1a9768eda617cfd78c761df5acd79` |
| 9 | `structure` | [Struct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/struct--ff925bf8ea3f1916515253b7.md) | 83 | `declaration-track:ff925bf8ea3f1916515253b78dfdaa65dcff522f721aae0f02fe22194cdb4359` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/state--1be5ae91192eb9308c51a580.md) | 121 | `declaration-track:1be5ae91192eb9308c51a5804fbc299ee9371aba209dd72e34d32cec7de7ffb1` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/declarations/builtin-initialize--79295a1259665bfc602c2b13.md) | 138 | `declaration-track:79295a1259665bfc602c2b1319e0487cdd573e77c4015e886d31836d5810b1ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
