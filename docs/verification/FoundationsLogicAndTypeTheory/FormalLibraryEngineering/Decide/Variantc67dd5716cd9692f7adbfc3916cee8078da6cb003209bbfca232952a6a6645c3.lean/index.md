# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decide.Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3804e78634c73e45e68da0e4aebaa72b5d53995",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3804e78634c73e45e68da0e4aebaa72b5d53995`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Native` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.ElabTerm` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.ConfigEval` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocessPropToDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/declarations/preprocessproptodecide--30e331c5ed9da5e318b9e954.md) | 32 | `declaration-track:30e331c5ed9da5e318b9e9540ccc8b6a4004a43bdeba202176a98b9462481d57` |
| 2 | `def` | [blameDecideReductionFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/declarations/blamedecidereductionfailure--9ae81cbbe664cdf5d7fd136b.md) | 47 | `declaration-track:9ae81cbbe664cdf5d7fd136bc43b117dc98052c0e891d2b93c3cda1ce7666e1f` |
| 3 | `def` | [elabNativeDecideCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/declarations/elabnativedecidecore--66207b8cd0e2ef6efdea2bc4.md) | 65 | `declaration-track:66207b8cd0e2ef6efdea2bc4ca7487be1a736590b412de27c970440fce406048` |
| 4 | `def` | [evalDecideCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/declarations/evaldecidecore--ddea1292634b0a2fad47e1fa.md) | 78 | `declaration-track:ddea1292634b0a2fad47e1fa9b7a762e0c15dfac19c1b914160c6df924d88e1a` |
| 5 | `def` | [evalDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/declarations/evaldecide--759674a3bcf48c498395b2be.md) | 194 | `declaration-track:759674a3bcf48c498395b2be9092a4ee8ed45c713e9563f17357d4a593648e1c` |
| 6 | `def` | [evalNativeDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variantc67dd5716cd9692f7adbfc3916cee8078da6cb003209bbfca232952a6a6645c3.lean/declarations/evalnativedecide--5dad3c4b585a15d77fb821a4.md) | 198 | `declaration-track:5dad3c4b585a15d77fb821a4e8211a776b696de3a8725a9a22eaa13d1297fdc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
