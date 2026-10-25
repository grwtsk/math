# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849a457353df87c49693cff34437d1c9ba571f06",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849a457353df87c49693cff34437d1c9ba571f06`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Simproc` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rwFixEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/rwfixeq--992e63acc77b8166bcb011aa.md) | 40 | `declaration-track:992e63acc77b8166bcb011aac1b24dfe754147e9b2e4813d2c4c8f8e22895c55` |
| 2 | `def` | [isForallMotive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/isforallmotive--96d0b536b8ddf3dff1c3d56d.md) | 71 | `declaration-track:96d0b536b8ddf3dff1c3d56d8b491e5b355ea10e178eeb85bea2eda9f360f512` |
| 3 | `def` | [splitMatchOrCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/splitmatchorcaseson--7de0befeb5aa281cbe5fef89.md) | 80 | `declaration-track:7de0befeb5aa281cbe5fef891157f9eb38f4018dfc990cbdf816866ae2c22dfa` |
| 4 | `def` | [mkMatchArgPusher](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/mkmatchargpusher--db4bb5ad310831cd6957b67f.md) | 106 | `declaration-track:db4bb5ad310831cd6957b67f6119c7780ebb6add2cb0934700fe0c2df60874da` |
| 5 | `def` | [mkUnfoldProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/mkunfoldproof--e5c350629e9c7a0494ec3232.md) | 209 | `declaration-track:e5c350629e9c7a0494ec323243824f28500b5abf4b5c19319b4841f84283c9a5` |
| 6 | `def` | [mkUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/mkunfoldeq--dcf1aff4716a27117c85d0b2.md) | 219 | `declaration-track:dcf1aff4716a27117c85d0b2ce778b35b25a83bfe8dbe31471573ce4fb1cd1fc` |
| 7 | `def` | [mkBinaryUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/mkbinaryunfoldeq--1b2f8c77e4f8d6b47a573794.md) | 254 | `declaration-track:1b2f8c77e4f8d6b47a5737942bececbcfc9c47205ee6538c79510e6374aed911` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/declarations/builtin-initialize--13c721ae9244c1c888c1c0d9.md) | 281 | `declaration-track:13c721ae9244c1c888c1c0d9500979bac08a4156d904d1df1453e7a2a7bd0928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
