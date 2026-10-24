# Verification target: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f85df42c9059d4a74b604bd660bd473a2ffb21",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f85df42c9059d4a74b604bd660bd473a2ffb21`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/declarations/tensorobj--88baf22d95c89229079b71cf.md) | 33 | `declaration-track:88baf22d95c89229079b71cfcd3a7aeb9be250b54981af27821ba6ef6bfc6a9d` |
| 2 | `abbrev` | [tensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/declarations/tensorhom--df1f1d17a8fcabd4d9ebc8fc.md) | 38 | `declaration-track:df1f1d17a8fcabd4d9ebc8fc9a226e9b692d8d8709e2016dfba543626ad81d4e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/declarations/instance--2de90f746bebf73a1927637b.md) | 48 | `declaration-track:2de90f746bebf73a1927637b61aef75cf8a4491da3cb5b78d91bced1e5d3ad13` |
| 4 | `instance` | [instMonoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/declarations/instmonoidalcategory--2bc93bfed333dcf2287c2ab9.md) | 58 | `declaration-track:2bc93bfed333dcf2287c2ab9748ccecb29ed1694dc9a339b46bc104c18564447` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant33f92389fedc08f69d1c7cb41a5b6ec18f3252d50554fa60a47549db00f124eb.lean/declarations/example--8677e2cafe875a707e32483c.md) | 69 | `declaration-track:8677e2cafe875a707e32483c6be4ba32cd9ff95609cb250abf8231bb1c8d9b6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
