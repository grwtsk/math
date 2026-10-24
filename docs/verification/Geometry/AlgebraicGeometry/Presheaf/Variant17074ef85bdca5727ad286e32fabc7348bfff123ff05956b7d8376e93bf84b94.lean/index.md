# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Presheaf.Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "676691e467bfd0add85256c2aefdc3ce477bbc53",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `676691e467bfd0add85256c2aefdc3ce477bbc53`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Scheme` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ringCatSheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean/declarations/ringcatsheaf--f01f6420e44455f8835384aa.md) | 30 | `declaration-track:f01f6420e44455f8835384aa3b6e2e8a0da289f52dce92c6ca34204a7bda6ef8` |
| 2 | `abbrev` | [PresheafOfModules](../../../../../mathematics/Geometry/AlgebraicGeometry/Presheaf/Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94.lean/declarations/presheafofmodules--44c73d3f10fe6b8dd8ba5a91.md) | 34 | `declaration-track:44c73d3f10fe6b8dd8ba5a91f3ebeeea2a08ea1bc52464ee80a3bb1ce5fb0078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
