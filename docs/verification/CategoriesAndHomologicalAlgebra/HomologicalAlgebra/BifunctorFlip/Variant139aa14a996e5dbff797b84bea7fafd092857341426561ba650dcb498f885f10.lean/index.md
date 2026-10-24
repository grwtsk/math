# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BifunctorFlip.Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f1ea01d482050e461fe20a6c3aca848ed6791fc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f1ea01d482050e461fe20a6c3aca848ed6791fc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.TotalComplexSymmetry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasMapBifunctor_flip_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean/declarations/hasmapbifunctor-flip-iff--eff92c59e4c2f1212d3439c8.md) | 33 | `result-track:eff92c59e4c2f1212d3439c8b580940e6740fe716b3408a85e585c1685f2c0a5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean/declarations/instance--c52fb8fabe6ec3f263b256fb.md) | 39 | `declaration-track:c52fb8fabe6ec3f263b256fb479a9c867af76fcb6539ce9c6158535f22450c2f` |
| 3 | `def` | [mapBifunctorFlipIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean/declarations/mapbifunctorflipiso--57d05fb4fdb59f645e0a7e94.md) | 44 | `declaration-track:57d05fb4fdb59f645e0a7e943ca22a6724fae093765e4747d34024a67a8412ef` |
| 4 | `lemma` | [mapBifunctorFlipIso_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variant139aa14a996e5dbff797b84bea7fafd092857341426561ba650dcb498f885f10.lean/declarations/mapbifunctorflipiso-flip--c1e66de8f4096a406418dc05.md) | 48 | `result-track:c1e66de8f4096a406418dc05c9e2cf8e8d99e57561a13b60c4da0396b69031d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
