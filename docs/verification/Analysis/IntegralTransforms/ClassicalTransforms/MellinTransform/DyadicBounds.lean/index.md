# Verification target: GRWTSK.Analysis.MellinTransform.DyadicBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3b64a1606dbd10952c6425793c3381bb24c38da",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/DyadicBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3b64a1606dbd10952c6425793c3381bb24c38da`.

Source path: `GRWTSK/Analysis/MellinTransform/DyadicBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/DyadicBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [half_plane_margin](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/half-plane-margin--0e2f2333852a3dd1eb0bac92.md) | 24 | `result-track:0e2f2333852a3dd1eb0bac92413bb74a5c832c2bd2950616cc918464c0125e42` |
| 2 | `theorem` | [choose_energy_loss](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/choose-energy-loss--b73d22cc19e614bd4f5e111c.md) | 27 | `result-track:b73d22cc19e614bd4f5e111c1e25e72cfae2faa10412b311b9a13760a58f4e29` |
| 3 | `theorem` | [summable_exponential_tail](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/summable-exponential-tail--82d4274c51224c7dc847dae0.md) | 32 | `result-track:82d4274c51224c7dc847dae0004bfa2e24fb17e5fbfc5bb6d400e2dd557bb67a` |
| 4 | `theorem` | [summable_norm_of_eventual_geometric_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/summable-norm-of-eventual-geometric-bound--b7a9c972d871183cc8afd9bf.md) | 48 | `result-track:b7a9c972d871183cc8afd9bfde4996247360d12e4ba6708456fa4ffca94b05a4` |
| 5 | `def` | [dyadicWeight](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/dyadicweight--f3119940d759c82ec6c97851.md) | 66 | `declaration-track:f3119940d759c82ec6c978511720d882de450f7aa926e7bbbccf5baa07600267` |
| 6 | `theorem` | [summable_dyadicWeight](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/summable-dyadicweight--2f122c5f9595b60f2f650d59.md) | 69 | `result-track:2f122c5f9595b60f2f650d59930860d37f32b2c7f6d71f07f0d85e777ef71274` |
| 7 | `theorem` | [source_exponent](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicBounds.lean/declarations/source-exponent--2c6b06c9ca64efe76baaa42c.md) | 81 | `result-track:2c6b06c9ca64efe76baaa42c2a69418050ea336bc1ab2a65a16e23ded8f44a03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
