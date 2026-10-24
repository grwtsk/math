# Verification target: GRWTSK.Algebra.UniversalAlgebra.TypeTags.Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b2d5ef6548ed20e802e102563adb6edc8fe8b1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b2d5ef6548ed20e802e102563adb6edc8fe8b1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Multiplicative.isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/declarations/multiplicative-isorderedmonoid--7ee5808cd7ae804e740dc049.md) | 21 | `declaration-track:7ee5808cd7ae804e740dc049bdca0524c1d6a2b0fdd62e578426ec6739c4ceed` |
| 2 | `instance` | [Additive.isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/declarations/additive-isorderedaddmonoid--861bff98b582f7a42a318e03.md) | 25 | `declaration-track:861bff98b582f7a42a318e03a9e8a8dca9a7003efc4fecc34b878fa92279611c` |
| 3 | `instance` | [Multiplicative.isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/declarations/multiplicative-isorderedcancelmonoid--b5fb01f33b2313bbfac1c970.md) | 29 | `declaration-track:b5fb01f33b2313bbfac1c9706658854debf95731731043406c0b160ea6448d4c` |
| 4 | `instance` | [Additive.isOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/declarations/additive-isorderedcanceladdmonoid--46a86981c5badc9cf8f53b10.md) | 34 | `declaration-track:46a86981c5badc9cf8f53b10e5be819027fddb6df31a37ec59d02e8bb8a4d907` |
| 5 | `instance` | [Multiplicative.canonicallyOrderedMul](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/declarations/multiplicative-canonicallyorderedmul--f3e49bab0d46235729553d8c.md) | 39 | `declaration-track:f3e49bab0d46235729553d8c989541cfc383fed87aacc0c25eb6021c58d54f2b` |
| 6 | `instance` | [Additive.canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e.lean/declarations/additive-canonicallyorderedadd--9835e5aa2fe0188de0a26f17.md) | 44 | `declaration-track:9835e5aa2fe0188de0a26f17d900068f3fd6715f79eacee219374a7b267758fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
