# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResetReuse.Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc120590a914feecdd6c12d15ea43cc4569732d3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc120590a914feecdd6c12d15ea43cc4569732d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.LiveVars` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.DependsOn` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PropagateBorrow` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/context--26af0ef896281c31a345c32a.md) | 40 | `declaration-track:26af0ef896281c31a345c32aa713668656b165c6a853139dda7fcce2bc6a0200` |
| 2 | `abbrev` | [ReuseM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/reusem--49ed935b42fb3a2d402001a9.md) | 68 | `declaration-track:49ed935b42fb3a2d402001a99d5a546e8194e50ee6747c49120b27b85063f7eb` |
| 3 | `def` | [mayReuse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/mayreuse--9f033b2499df8c4ea6c25134.md) | 70 | `declaration-track:9f033b2499df8c4ea6c25134900ec28a1a6f3ce2b39d1b3a64dc37ffc841eb55` |
| 4 | `def` | [S](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/s--7372add4a4eb677be00228c0.md) | 83 | `declaration-track:7372add4a4eb677be00228c0a550d792caa10c10c87a3479d138bcf8c3c9354b` |
| 5 | `def` | [isCtorUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/isctorusing--a4dd4a0dff690c590dc1b499.md) | 127 | `declaration-track:a4dd4a0dff690c590dc1b499f0cfd26c812b2a9f83f5a26c0f150678f3b74881` |
| 6 | `inductive` | [UseClassification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/useclassification--4571b10028d9f641b989d5b8.md) | 132 | `declaration-track:4571b10028d9f641b989d5b858d218fb4b8a146c6ff3b1809e11f07e3c4d0e69` |
| 7 | `def` | [classifyUse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/classifyuse--eb5105ef428688e1109a109b.md) | 149 | `declaration-track:eb5105ef428688e1109a109b96ab2be6ed9a849bf2186c3d43033206e178f81b` |
| 8 | `def` | [D](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/d--004be5fb495e52098a23d355.md) | 188 | `declaration-track:004be5fb495e52098a23d355f86a9c8d7c849772a9905d5b70c0a967bfba1c33` |
| 9 | `def` | [Code.insertResetReuse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/code-insertresetreuse--9bd02f0bf7a3cc722787472c.md) | 255 | `declaration-track:9bd02f0bf7a3cc722787472c04e85c0e5bc274a2d4d72f51fb1e9f246c8a7df9` |
| 10 | `def` | [Decl.insertResetReuseCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/decl-insertresetreusecore--4cdfcbbba0e2e6dc2d31cd4e.md) | 283 | `declaration-track:4cdfcbbba0e2e6dc2d31cd4eba69ca5c331b6fffa33a3d2e02e146ba70359800` |
| 11 | `def` | [Decl.insertResetReuse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/decl-insertresetreuse--023502e18fbda1823dd10c3d.md) | 307 | `declaration-track:023502e18fbda1823dd10c3d08e4af130e53ad88d3149751f60a8d8c5787e8c5` |
| 12 | `def` | [insertResetReuse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/insertresetreuse--29741f94e7b57f7ee560dcf9.md) | 327 | `declaration-track:29741f94e7b57f7ee560dcf90d696e0d3210910b1e2973b23605dc1937638af2` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variant424540b72cba42b78abbb6bce5796aec2df58e4359da5d38f551a7d7b88f99b0.lean/declarations/builtin-initialize--9ae642233f0573b5f8ffb444.md) | 330 | `declaration-track:9ae642233f0573b5f8ffb4444bf243734ef5b9d18c6c7b9bcf93dc741f8e7c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
