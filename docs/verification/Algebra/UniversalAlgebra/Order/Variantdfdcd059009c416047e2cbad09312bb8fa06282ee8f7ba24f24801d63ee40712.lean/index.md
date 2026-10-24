# Verification target: GRWTSK.Algebra.UniversalAlgebra.Order.Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a7518926d27623ce7fc8ece29a4b2090a868dd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a7518926d27623ce7fc8ece29a4b2090a868dd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean/declarations/toisorderedring--8d859d83694ad12c77a4e19f.md) | 28 | `declaration-track:8d859d83694ad12c77a4e19f089ba61d9c9ea994b616dc35dd6a22a7d6000553` |
| 2 | `instance` | [toIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean/declarations/toisstrictorderedring--f8653a061436f3d0cf7fe00d.md) | 34 | `declaration-track:f8653a061436f3d0cf7fe00dbdde3c87137f507a520c3641c8877b0a01db5b03` |
| 3 | `def` | [orderedSubtype](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean/declarations/orderedsubtype--db5cd7af01c3815b7e847ee7.md) | 40 | `declaration-track:db5cd7af01c3815b7e847ee774f30361e7db98aaa5b31802946fa69831b94c48` |
| 4 | `lemma` | [orderedSubtype_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean/declarations/orderedsubtype-coe--5d5d4ba4428274de318322b6.md) | 47 | `result-track:5d5d4ba4428274de318322b6629ddec844c2c6a99f6cc22bf639c2f8cbec1689` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
