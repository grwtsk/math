# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9c313a08378dbc1cb90614317f413317c36e3a1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9c313a08378dbc1cb90614317f413317c36e3a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/colimitcocone--e5b87f782aabfc5b833a6a44.md) | 33 | `declaration-track:e5b87f782aabfc5b833a6a4442721b34ccc772e9cbbf0847bd7887e1f06ea440` |
| 2 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/colimitcoconeiscolimit--4d0d1da0a3741174d1281876.md) | 41 | `declaration-track:4d0d1da0a3741174d128187617ec9ae7c086f30f03f9880c6eca0804971d6c33` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/instance--d75677838d99cfe993c03bac.md) | 56 | `declaration-track:d75677838d99cfe993c03bacbdcc8b8990a0166cc80571e9f82c45daa1067f55` |
| 4 | `def` | [colimitCoyonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/colimitcoyonedaiso--7f0f6fac6e0f3e497468ae0d.md) | 63 | `declaration-track:7f0f6fac6e0f3e497468ae0dc01082fe7cb310c24f95cbf7f9d9daf134bfe815` |
| 5 | `instance` | [yonedaPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/yonedapreserveslimits--e13d1ffe0a996e05339c6366.md) | 76 | `declaration-track:e13d1ffe0a996e05339c63667f2dfe008d92166f861bfe9c78b0cf99a0089e6b` |
| 6 | `instance` | [coyonedaPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/coyonedapreserveslimits--f2bacde09e5baa5563a64f63.md) | 94 | `declaration-track:f2bacde09e5baa5563a64f634fc4bfc1c669bdb9818bd0516feb16664b74c936` |
| 7 | `def` | [yonedaJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/yonedajointlyreflectslimits--acf8b1056ef9844a76c6f3f6.md) | 112 | `declaration-track:acf8b1056ef9844a76c6f3f60017b188ed4af3b7f1e11a1058ab44924986f39b` |
| 8 | `def` | [coyonedaJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/coyonedajointlyreflectslimits--eaf8a8673cc73e27b56d105f.md) | 130 | `declaration-track:eaf8a8673cc73e27b56d105f0f1e5752b08914dfd99a72ada85d2d1c6a9db675` |
| 9 | `instance` | [yonedaFunctorPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/yonedafunctorpreserveslimits--65b850500764cdda5ef7b4be.md) | 146 | `declaration-track:65b850500764cdda5ef7b4be2bd4986896c35290bf190b48e540838f59557779` |
| 10 | `instance` | [coyonedaFunctorPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/coyonedafunctorpreserveslimits--8f004c8bffa3de9113a3cdcb.md) | 153 | `declaration-track:8f004c8bffa3de9113a3cdcb64851c68d9972760f8574e2410aa9c69413c550f` |
| 11 | `instance` | [yonedaFunctorReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/yonedafunctorreflectslimits--01046652f88fc9f887563819.md) | 160 | `declaration-track:01046652f88fc9f887563819ce9d4e71bc5dde0fad4d06d59940533d369d6b05` |
| 12 | `instance` | [coyonedaFunctorReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant6baa7cd6f3752f504bbe6730b5a12af273c17e14cd4cb8b5491db7803ffa0466.lean/declarations/coyonedafunctorreflectslimits--ece1795e23edb2cd4f1c9640.md) | 164 | `declaration-track:ece1795e23edb2cd4f1c9640a9ca9d280364215a2af5ccc71bb7f4606e2be244` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
