# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e97ef366feb4b5cad5c0a9f000000a248c0102ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e97ef366feb4b5cad5c0a9f000000a248c0102ad`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/instance--52adbb80eb08679128c95a8b.md) | 28 | `declaration-track:52adbb80eb08679128c95a8b0798b80eb1c03119f4d2c5bb11dbd7f7631b30d6` |
| 2 | `instance` | [instOrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/instorderedcancelcommmonoid--0ce5739e49687e4bfab146e3.md) | 32 | `declaration-track:0ce5739e49687e4bfab146e314ae5346961584c29e6b454b421835d5cffde7fe` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/instance--e5c66655d15345da366464ca.md) | 39 | `declaration-track:e5c66655d15345da366464ca6f2de6bf557faf81144431f29d836658a5c61cef` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/instance--53faaa3420e55acb5b8db14d.md) | 47 | `declaration-track:53faaa3420e55acb5b8db14d6dd33737760fd472a27fb950452251acc0b410fc` |
| 5 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/orderedcommmonoid--4f6109d14af5a98d4fd6f600.md) | 56 | `declaration-track:4f6109d14af5a98d4fd6f600a38be1792543a5289b2334a3c5efffeaf3e07d52` |
| 6 | `instance` | [orderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/orderedcancelcommmonoid--722ed1722ea997874a1c3f64.md) | 64 | `declaration-track:722ed1722ea997874a1c3f6472bcafe22bab7d8f658d1ba41fd7b68b7d391576` |
| 7 | `instance` | [linearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantc98aa68d303753806f010d36e64559aabf2f2124681f5619ecfdab5fcbe10612.lean/declarations/linearorderedcancelcommmonoid--75a0d43e98d02e7d5d88cc42.md) | 72 | `declaration-track:75a0d43e98d02e7d5d88cc42990fe3d1e58c30f570fb0b51b19de69ea8321b5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
