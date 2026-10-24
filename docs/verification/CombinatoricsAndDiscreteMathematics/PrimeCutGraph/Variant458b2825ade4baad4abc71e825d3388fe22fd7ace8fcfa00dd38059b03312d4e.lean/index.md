# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraph.Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f19acc6f7e722a5d816a908a0ea4c47ea1e4d87e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f19acc6f7e722a5d816a908a0ea4c47ea1e4d87e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AnchoredPrimeCut.insertPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean/declarations/anchoredprimecut-insertprime--bd0f80dd02c3fd9335885f4f.md) | 21 | `declaration-track:bd0f80dd02c3fd9335885f4fbd1df1664ce64b1e3988cbec989cc3ec410d8817` |
| 2 | `theorem` | [insertPrime_preserves_archimedean_anchor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean/declarations/insertprime-preserves-archimedean-anchor--58bd0bc81b9b0fa7170db333.md) | 34 | `result-track:58bd0bc81b9b0fa7170db333fee752215a5217a967b8ed7a590c15b5e76a6334` |
| 3 | `theorem` | [insertPrime_finite_places](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean/declarations/insertprime-finite-places--5d2918f2ea3482d1786bb8de.md) | 44 | `result-track:5d2918f2ea3482d1786bb8de52eab96878280a19c64a8ec77ce4536294307681` |
| 4 | `theorem` | [insertPrime_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant458b2825ade4baad4abc71e825d3388fe22fd7ace8fcfa00dd38059b03312d4e.lean/declarations/insertprime-card--a278259a400315a193394b47.md) | 54 | `result-track:a278259a400315a193394b47e5dce5a3c964deb59af033b72c65561f4cb3f798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
