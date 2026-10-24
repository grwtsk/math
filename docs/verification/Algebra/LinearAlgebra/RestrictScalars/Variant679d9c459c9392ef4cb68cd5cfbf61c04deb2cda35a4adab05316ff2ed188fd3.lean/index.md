# Verification target: GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7923c4b6bec0ecde47bf0577088a452858ac3df7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7923c4b6bec0ecde47bf0577088a452858ac3df7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars--855cdaaf3ed45fff8ab8480e.md) | 31 | `declaration-track:855cdaaf3ed45fff8ab8480e8130b26ca6417d682011ec5e52a68e70f51bbc74` |
| 2 | `theorem` | [coe_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/coe-restrictscalars--b2715c86eeeed94deb76733b.md) | 38 | `result-track:b2715c86eeeed94deb76733bbd42e678dfff6bac1e72963900d80a966f5dfb24` |
| 3 | `theorem` | [toAddSubmonoid_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/toaddsubmonoid-restrictscalars--bcfe1e2338376cd492f174a0.md) | 42 | `result-track:bcfe1e2338376cd492f174a0bbb2c073902d3596d2b8a332ad0932513354b089` |
| 4 | `theorem` | [restrictScalars_mem](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-mem--11dd9fc623b20c9ee6676c00.md) | 47 | `result-track:11dd9fc623b20c9ee6676c008bb6dd5ddb3cff93028e7ef83317c3b7a95a4de4` |
| 5 | `theorem` | [restrictScalars_self](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-self--26d9053a9f0ecdea2703edf9.md) | 51 | `result-track:26d9053a9f0ecdea2703edf9509c3c2f3876f4b7c5cd2399637db32f025960ff` |
| 6 | `theorem` | [restrictScalars_injective](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-injective--12ccc754262af2e464264d8a.md) | 56 | `result-track:12ccc754262af2e464264d8a97b74a97f50b241d8b61a43aaafebfa8ce0ecb22` |
| 7 | `theorem` | [restrictScalars_inj](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-inj--8c0217ffc1b19f93262773aa.md) | 61 | `result-track:8c0217ffc1b19f93262773aa2d59e7b06b5c62695221b80879dd4477b14c24ba` |
| 8 | `instance` | [restrictScalars.origModule](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-origmodule--351671989d974915edc816b5.md) | 66 | `declaration-track:351671989d974915edc816b5d89279979333c3647da86f1115cc312852a6d46b` |
| 9 | `instance` | [restrictScalars.isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-isscalartower--c0c002bab30bd7dd085cee8b.md) | 69 | `declaration-track:c0c002bab30bd7dd085cee8bad281d52efe6f6080e00dfd07d1fab5c7a2b2851` |
| 10 | `def` | [restrictScalarsEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalarsembedding--11df8ad7006139a98d6e535a.md) | 76 | `declaration-track:11df8ad7006139a98d6e535a5be5f6a2915485c6da9ba1707a3c7406a98b572b` |
| 11 | `def` | [restrictScalarsEquiv](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalarsequiv--1bf9626b7220d040eedcb994.md) | 84 | `declaration-track:1bf9626b7220d040eedcb99402f266c41a143f367017aa372a833d5a4b06065f` |
| 12 | `theorem` | [restrictScalars_bot](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-bot--c87cc2a83ac57a364c680f73.md) | 89 | `result-track:c87cc2a83ac57a364c680f73334d7c96f397fda000d32b33e1e5386f8dbd9ed6` |
| 13 | `theorem` | [restrictScalars_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-eq-bot-iff--eb0bf645a86d8747c428baed.md) | 93 | `result-track:eb0bf645a86d8747c428baed2947c52eeead45322552656b3f03d752eb8910a7` |
| 14 | `theorem` | [restrictScalars_top](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-top--cc6d7c6a0042eef4a61b5404.md) | 97 | `result-track:cc6d7c6a0042eef4a61b54043d172dbba498f0fdf2273d35d9f9e7d5ae110997` |
| 15 | `theorem` | [restrictScalars_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalars-eq-top-iff--4690870842b8d6b695f64fb9.md) | 101 | `result-track:4690870842b8d6b695f64fb95472d958f79afd3e8dca1904925d81e091cb3a1e` |
| 16 | `def` | [restrictScalarsLatticeHom](../../../../../mathematics/Algebra/LinearAlgebra/RestrictScalars/Variant679d9c459c9392ef4cb68cd5cfbf61c04deb2cda35a4adab05316ff2ed188fd3.lean/declarations/restrictscalarslatticehom--5819f8b279e33a42b1f6e524.md) | 106 | `declaration-track:5819f8b279e33a42b1f6e5247a568275cc741f3caa29d084b3f24fa272eaab05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
