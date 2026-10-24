# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fc80468d7f2928a20f8f89bb005bc958d38134d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fc80468d7f2928a20f8f89bb005bc958d38134d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/galgebra--5949f6a5038c7fef739c7c65.md) | 48 | `declaration-track:5949f6a5038c7fef739c7c65b58dd13ec1d0909c7b4e5662473ca013661b2c84` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/instance--8f3b96b827eca60a7ac4fda5.md) | 61 | `declaration-track:8f3b96b827eca60a7ac4fda533ec88eb5ec19303bb9710e09a4f82cc5ff1912b` |
| 3 | `theorem` | [algebraMap_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/algebramap-apply--fbe5ce0a5e3a9e5f27d51e94.md) | 86 | `result-track:fbe5ce0a5e3a9e5f27d51e94f3cd50f0a819bab132ba41266320385845e8043d` |
| 4 | `theorem` | [algebraMap_toAddMonoid_hom](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/algebramap-toaddmonoid-hom--44b549c0e9b332bf54c74d5d.md) | 91 | `result-track:44b549c0e9b332bf54c74d5de947c263a9bef75fbc803ec0cc80b2c93c839b18` |
| 5 | `def` | [toAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/toalgebra--f2226a0110990a3e87d0cdae.md) | 104 | `declaration-track:f2226a0110990a3e87d0cdae51f90b41f73e680e0d3165fe694b021c78a952c8` |
| 6 | `theorem` | [algHom_ext'](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/alghom-ext--817fac6d9fca61836be78ccb.md) | 117 | `result-track:817fac6d9fca61836be78ccba554781d360c8c9731c4461199e7cf13fbb9cd13` |
| 7 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/alghom-ext--dfc0bc81834339203885e11f.md) | 122 | `result-track:dfc0bc81834339203885e11faad82fc54fc58497e52bf15617f4f4f949c90b14` |
| 8 | `instance` | [Algebra.directSumGAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/declarations/algebra-directsumgalgebra--8bc4f478403a9225296f324b.md) | 135 | `declaration-track:8bc4f478403a9225296f324b52ef2faa4cfffb7f8a441c5ca917d3cca8e8da91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
