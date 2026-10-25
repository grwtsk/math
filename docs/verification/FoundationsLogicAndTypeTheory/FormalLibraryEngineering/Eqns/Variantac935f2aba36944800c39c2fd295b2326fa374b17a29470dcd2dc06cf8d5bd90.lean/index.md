# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c69938afd8f9223631306fff8954e5c7d732605",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c69938afd8f9223631306fff8954e5c7d732605`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Internal.Order.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/eqninfo--264750075d4c43b564ace239.md) | 25 | `declaration-track:264750075d4c43b564ace239dfab74f95c7c876e6dfadce2d06549eda596695e` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/builtin-initialize--83434178dec501021b90292b.md) | 36 | `declaration-track:83434178dec501021b90292b90f62a8ec4456b7fb50975ae4bfea9bc6496b28c` |
| 3 | `def` | [registerEqnsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/registereqnsinfo--59e2a20fe5da34c1c2378d4a.md) | 43 | `declaration-track:59e2a20fe5da34c1c2378d4a81ebefb8867c2da7c5492da63b5a7eb804c4610b` |
| 4 | `def` | [deltaLHSUntilFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/deltalhsuntilfix--16e52a8ae862a66e89db5de6.md) | 54 | `declaration-track:16e52a8ae862a66e89db5de6a8d4bf76b163c039ecb6caf21532adf89f659b4f` |
| 5 | `def` | [rwFixUnder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/rwfixunder--e9f667dddc1a3e7097a6e3d2.md) | 60 | `declaration-track:e9f667dddc1a3e7097a6e3d25bb36185dd2a5816eacb55ae30a8c452c87d33f2` |
| 6 | `def` | [rwFixEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/rwfixeq--c0e083b1259e1e64d54dd2e1.md) | 75 | `declaration-track:c0e083b1259e1e64d54dd2e173509477916e7a27263283380fa4a2f7daa6234b` |
| 7 | `def` | [mkUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/mkunfoldeq--0241826b226e598bad0bcab4.md) | 87 | `declaration-track:0241826b226e598bad0bcab47e0e5101cd77a2fcd84c548c7d1ad5495cb03668` |
| 8 | `def` | [getUnfoldFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/getunfoldfor--b231b330f2c82a3df3709627.md) | 123 | `declaration-track:b231b330f2c82a3df3709627e3f8a465d603a2adc2e561122838abc2ace61c37` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/declarations/builtin-initialize--2892028501acd817a367d405.md) | 130 | `declaration-track:2892028501acd817a367d40581de6a2bc826d8fc302c5c344b9caf86e423bd49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
