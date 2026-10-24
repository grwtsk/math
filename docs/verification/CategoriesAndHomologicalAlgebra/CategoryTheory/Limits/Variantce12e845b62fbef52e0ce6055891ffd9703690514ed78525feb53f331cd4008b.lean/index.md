# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b219b093016a9aa3d8ea4a8f429656503a8ed1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b219b093016a9aa3d8ea4a8f429656503a8ed1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPushout.hasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/ispushout-hasliftingproperty--728cc63061649d20143ab554.md) | 33 | `result-track:728cc63061649d20143ab55485a649bcbf621c945c16172f15529e722239cfe3` |
| 2 | `lemma` | [IsPullback.hasLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/ispullback-hasliftingproperty--cd269084d88aae0f8a5f52df.md) | 41 | `result-track:cd269084d88aae0f8a5f52df9260a7333d4af8445b8dd2c0b4c2637989bd0813` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/instance--8887ea369031f39360a2ab94.md) | 50 | `declaration-track:8887ea369031f39360a2ab94090d467f3f66a3fc5b6e23bd840410981242b8e2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/instance--36fc89bca6f8befb20d8d1f1.md) | 54 | `declaration-track:36fc89bca6f8befb20d8d1f1f4fb543494ebff071793f507e364fc4f0bb6abdc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/instance--46053de3f69c89c5c9d16385.md) | 58 | `declaration-track:46053de3f69c89c5c9d1638552fca1f37509ae55a11b630480e95643b3db9ce5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/instance--6537b42fdf234d454d51b5db.md) | 62 | `declaration-track:6537b42fdf234d454d51b5db44b932a03c16d0f381c746cd49e9108dc824f5b1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/instance--d3a8a50b8851c4f4952d1e45.md) | 66 | `declaration-track:d3a8a50b8851c4f4952d1e455113d55fd7c2fa7924fb21b50c7fd7aa467a410b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantce12e845b62fbef52e0ce6055891ffd9703690514ed78525feb53f331cd4008b.lean/declarations/instance--158ababfaaf0990f3c67bf39.md) | 76 | `declaration-track:158ababfaaf0990f3c67bf39f8ebb28bb8690c4abec00ad7ac256b0f6b77120f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
