# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Fiber.Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b2a53fa25c8509907243b94cdaaddb02a376b4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b2a53fa25c8509907243b94cdaaddb02a376b4`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Jacobson` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Scheme.Hom.fiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiber--5d1a6927b0eb5f09dc14f4a5.md) | 32 | `declaration-track:5d1a6927b0eb5f09dc14f4a5e9a6c73503564ea3ea43ce71f5757fcb5e2ce63f` |
| 2 | `def` | [Scheme.Hom.fiberι](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiber--60e56c68287bd4e6688d74ca.md) | 35 | `declaration-track:60e56c68287bd4e6688d74ca07382248c935dff1f02282cb0828e1a1eb4271b2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/instance--13df3365af71440bbf0abbbf.md) | 37 | `declaration-track:13df3365af71440bbf0abbbfa11e6577d8dc784cb71c8a562fee083ef9a41e60` |
| 4 | `def` | [Scheme.Hom.fiberToSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fibertospecresiduefield--f5dd7cea83f07b7a3c354c6d.md) | 40 | `declaration-track:f5dd7cea83f07b7a3c354c6d4c26053e1e1faa4800eefbfb481782db30e5c8cc` |
| 5 | `def` | [Scheme.Hom.fiberOverSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiberoverspecresiduefield--5cef01bca922cb29ad0f7199.md) | 45 | `declaration-track:5cef01bca922cb29ad0f7199444fb8c3f0a61b5596199d8e801da1a6580b1552` |
| 6 | `lemma` | [Scheme.Hom.fiberToSpecResidueField_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fibertospecresiduefield-apply--637a0846b827599e916b6bc0.md) | 49 | `result-track:637a0846b827599e916b6bc0df4257f1fdb25c901115dd0d217040d7ea069b93` |
| 7 | `lemma` | [Scheme.Hom.range_fiberι](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-range-fiber--19babaeea4403d1bbfce5cd5.md) | 53 | `result-track:19babaeea4403d1bbfce5cd5888e5013902edb92a2304a0cc8d1523a94ac9711` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/instance--bed15ed92cabffc51c3e391e.md) | 57 | `declaration-track:bed15ed92cabffc51c3e391ea13589c766e820e7b7c7bf9efc7168fbee83c2db` |
| 9 | `def` | [Scheme.Hom.fiberHomeo](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiberhomeo--e6524acc2d6b8ca7c7aabc99.md) | 61 | `declaration-track:e6524acc2d6b8ca7c7aabc99bb706fa4356906dcbc533c71eccc4db174e77216` |
| 10 | `lemma` | [Scheme.Hom.fiberHomeo_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiberhomeo-apply--7d8af5b0ccf23a636fcdedf6.md) | 65 | `result-track:7d8af5b0ccf23a636fcdedf6bea27a7dc95fab1aa46ae79b4f28e357321ea583` |
| 11 | `lemma` | [Scheme.Hom.fiberι_fiberHomeo_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiber-fiberhomeo-symm--ff25738f2a3938b49fdd42fd.md) | 69 | `result-track:ff25738f2a3938b49fdd42fd3703ca458fbe445f6e20b71379cdcac904d4bdb5` |
| 12 | `def` | [Scheme.Hom.asFiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-asfiber--8b87ea7243ea694d012455ef.md) | 74 | `declaration-track:8b87ea7243ea694d012455efe08ee854da890ae990a713b0893d20d5dea74036` |
| 13 | `lemma` | [Scheme.Hom.fiberι_asFiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-fiber-asfiber--567dc02b131b755ee6237eed.md) | 78 | `result-track:567dc02b131b755ee6237eed406045860538a5089bbf41b366eabaf01aa2db96` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/instance--0cfe03d06a128a0a49197a02.md) | 81 | `declaration-track:0cfe03d06a128a0a49197a02f77e1de7e828d8be885f453939e4a647330da0ef` |
| 15 | `lemma` | [QuasiCompact.isCompact_preimage_singleton](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/quasicompact-iscompact-preimage-singleton--df31bf3fc1f7e1774cd46f83.md) | 87 | `result-track:df31bf3fc1f7e1774cd46f837c23a6e9d17a8a112cb27495010860c8ea033948` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/instance--a57ab6baa0583d74c91bd6d0.md) | 91 | `declaration-track:a57ab6baa0583d74c91bd6d0aefa1f8d9212dbc5894a8d9b8c6a9fbdbd41a2fb` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/instance--ab9f8050e171518cf5d29a31.md) | 96 | `declaration-track:ab9f8050e171518cf5d29a31db8006a41f851e35ef3a28ed9d8f6621882e0769` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/instance--8b5198e14dd65130df929b31.md) | 101 | `declaration-track:8b5198e14dd65130df929b3170b23264b5a42b5e3db90c06c0fc93e6cf704e15` |
| 19 | `lemma` | [IsFinite.finite_preimage_singleton](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/isfinite-finite-preimage-singleton--a3ad6c8184b71f664fdadbfb.md) | 109 | `result-track:a3ad6c8184b71f664fdadbfb89e3cbeb7e91cd4999dda871084ff0198abff7d8` |
| 20 | `lemma` | [Scheme.Hom.finite_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-finite-preimage--c59a562fff5773339b8ac942.md) | 113 | `result-track:c59a562fff5773339b8ac94250dc9c56f7d76d6f146f1eba69350a458f615594` |
| 21 | `instance` | [Scheme.Hom.discrete_fiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant1c0da36b0cda37f80b37408130ab1cd8df1811887b39a483c1d4f767a73ef924.lean/declarations/scheme-hom-discrete-fiber--e49a3dfd09b112f7e743aaef.md) | 118 | `declaration-track:e49a3dfd09b112f7e743aaef14cc812b2181c34e8c4418caf5a806844a36e67b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
