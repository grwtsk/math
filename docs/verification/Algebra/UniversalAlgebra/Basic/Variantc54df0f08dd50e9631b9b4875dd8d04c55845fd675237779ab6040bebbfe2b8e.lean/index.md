# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82b0538c00ca9b94476e726449951c0d688bd802",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82b0538c00ca9b94476e726449951c0d688bd802`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntFractPair](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/intfractpair--76375f4610c228fdf9dbadbd.md) | 71 | `declaration-track:76375f4610c228fdf9dbadbd31b1443d628bb8c8ef283c2ea17dba7de9a64e85` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/instance--fe17f26d41c15aabee6eecdf.md) | 83 | `declaration-track:fe17f26d41c15aabee6eecdf2de2968f390419d28fdcb0ee3ffb1dba40578e70` |
| 3 | `instance` | [inhabited](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/inhabited--42939d8e43c3e3c1a08685a8.md) | 86 | `declaration-track:42939d8e43c3e3c1a08685a8c32e2f7ba27570d5f5c0a9d3d528c9a5a9c18f99` |
| 4 | `def` | [mapFr](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/mapfr--3c0a9f13b71e276b9e541d23.md) | 91 | `declaration-track:3c0a9f13b71e276b9e541d233d17c61b9fb62c309115b93595970ea9646b44ab` |
| 5 | `def` | [coeFn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/coefn--efb4115e4a1e29f2bf5746d7.md) | 104 | `declaration-track:efb4115e4a1e29f2bf5746d74aabd15217ba6daad78e30b94a8c119fe2482bfe` |
| 6 | `instance` | [coe](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/coe--39c0572ec92e12777406de7d.md) | 107 | `declaration-track:39c0572ec92e12777406de7d90f000f31a2b40fe50767b188eac32d4e848130e` |
| 7 | `theorem` | [coe_to_intFractPair](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/coe-to-intfractpair--820eb1209d0f288ebff84e38.md) | 111 | `result-track:820eb1209d0f288ebff84e38170de1b4265410d0b7ecb1eaf79c7b2d14579617` |
| 8 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/of--36a126c030bc8a61d79ed509.md) | 121 | `declaration-track:36a126c030bc8a61d79ed5090b68b6a020996329bd9375831b80adb600541c80` |
| 9 | `def` | [stream](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/stream--7efe99be6f6b8b7f8a7fed4b.md) | 138 | `declaration-track:7efe99be6f6b8b7f8a7fed4b373a779ecaee6b405ccaeb63d90d7d3751f19b8c` |
| 10 | `theorem` | [stream_isSeq](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/stream-isseq--727ccfd11b66ce8f8d71faf1.md) | 147 | `result-track:727ccfd11b66ce8f8d71faf129b6c6f5c8d0102202d8b2467840586af62f303d` |
| 11 | `def` | [seq1](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/seq1--8129da10f4dc75105dd4797e.md) | 160 | `declaration-track:8129da10f4dc75105dd4797edcd1b989fba7d5fb473ac91e7732192565e8b064` |
| 12 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/declarations/of--2a4a6cd225d7b5eecc1176ec.md) | 181 | `declaration-track:2a4a6cd225d7b5eecc1176ec736ce99beaa758378358c06ee643c53c5705c5e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
