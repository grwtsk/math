# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed87d55c1688e3cf0c626b8ba10d48aa4ad40774",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed87d55c1688e3cf0c626b8ba10d48aa4ad40774`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Normalize` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/declarations/mk-eq--9b4c18d18fc6d48abecb266a.md) | 29 | `result-track:9b4c18d18fc6d48abecb266ab447f2d5a694505b4a70b30a66290e557842c124` |
| 2 | `def` | [normalForm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/declarations/normalform--d1a539d0bae7c372ff247cdf.md) | 33 | `declaration-track:d1a539d0bae7c372ff247cdfdb9d92ee8052256a27e4aece7ed2b84a992f9574` |
| 3 | `theorem` | [mk_eq_of_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/declarations/mk-eq-of-cons--ba638f2ab55a3e31d2ddc032.md) | 56 | `result-track:ba638f2ab55a3e31d2ddc032b644e20d661e76944a0fd181f0df408cdc1a013a` |
| 4 | `def` | [ofNormalizedEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/declarations/ofnormalizedeq--3a97fe985f19da081d95e748.md) | 64 | `declaration-track:3a97fe985f19da081d95e748af1e3a5a059f188be1dcd948fd916ac59c5d3a79` |
| 5 | `def` | [List.splitEvenOdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/declarations/list-splitevenodd--df5d05a613bf6b0fd032f28d.md) | 83 | `declaration-track:df5d05a613bf6b0fd032f28db738a73b4e4b82d79910511fd994846b53c88703` |
| 6 | `def` | [main](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante4bf3dee1b839625f32f5da4669e40cc245d2b55da17a64b9955de99ac16860a.lean/declarations/main--24ce3a9edcf70af4fe114054.md) | 91 | `declaration-track:24ce3a9edcf70af4fe11405452da6869ead7a02178f802c7ca81a34b44e87954` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
