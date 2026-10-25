# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6f253c31747a926e162a002d813f99d1de7883",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6f253c31747a926e162a002d813f99d1de7883`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Lawful.MonadLift.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LawfulMonadAttach.canReturn_bind_imp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/lawfulmonadattach-canreturn-bind-imp--47458fee2965d86a940e1a17.md) | 16 | `result-track:47458fee2965d86a940e1a1775f653d5c31addfc4ce81f6ef443061ef2f7fb92` |
| 2 | `theorem` | [LawfulMonadAttach.eq_of_canReturn_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/lawfulmonadattach-eq-of-canreturn-pure--42520eb7090057e53bb5ae88.md) | 33 | `result-track:42520eb7090057e53bb5ae8834508a7900fa8318449c73a79eeb285b7a584756` |
| 3 | `theorem` | [LawfulMonadAttach.canReturn_map_imp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/lawfulmonadattach-canreturn-map-imp--cdc898211b944b9a7c665645.md) | 42 | `result-track:cdc898211b944b9a7c6656458ecb4623268ead7d6e6e44831de97b19f4ec5b3e` |
| 4 | `theorem` | [LawfulMonadAttach.canReturn_liftM_imp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/lawfulmonadattach-canreturn-liftm-imp--239968dbd3e67f83d4e259d3.md) | 51 | `result-track:239968dbd3e67f83d4e259d31f891237a902fa5b3e41e106db36381910abdfbd` |
| 5 | `theorem` | [WeaklyLawfulMonadAttach.attach_bind_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/weaklylawfulmonadattach-attach-bind-val--b14654a59575afe340f0964b.md) | 60 | `result-track:b14654a59575afe340f0964bedb6184711226d9737d98523af7423df84520dce` |
| 6 | `theorem` | [WeaklyLawfulMonadAttach.bind_attach_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/weaklylawfulmonadattach-bind-attach-of-nonempty--44849331d7fff1690d375371.md) | 66 | `result-track:44849331d7fff1690d3753710bf91f433b41f9924099f72523d33407cbf04856` |
| 7 | `theorem` | [MonadAttach.attach_bind_eq_pbind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/monadattach-attach-bind-eq-pbind--d64389bcc0448e88440d69b1.md) | 74 | `result-track:d64389bcc0448e88440d69b144ebf655a9ae3ac5f742c4ffcf7fef43185795aa` |
| 8 | `theorem` | [WeaklyLawfulMonadAttach.pbind_eq_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/weaklylawfulmonadattach-pbind-eq-bind--935802740c66fb1396711c88.md) | 80 | `result-track:935802740c66fb1396711c88d68146fdff3e72b6734a542f81b9064bce60b49e` |
| 9 | `theorem` | [WeaklyLawfulMonadAttach.pbind_eq_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdac56cdb5a3e363512a3d0d99f8c2f12e6145ff80007317fdbe5f1bf988cad7e.lean/declarations/weaklylawfulmonadattach-pbind-eq-bind--17b7ce55a6e8bff72591120c.md) | 87 | `result-track:17b7ce55a6e8bff72591120c9cd716030eb780830c0d8d9d73e3fda6f09b9485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
