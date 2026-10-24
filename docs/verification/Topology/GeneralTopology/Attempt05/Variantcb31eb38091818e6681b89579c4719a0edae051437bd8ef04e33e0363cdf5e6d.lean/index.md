# Verification target: GRWTSK.Topology.GeneralTopology.Attempt05.Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbef82129a08a7d85ccb6be5e2beda9748aecb4a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbef82129a08a7d85ccb6be5e2beda9748aecb4a`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/p--8d305a3c84b6bead9a7baedc.md) | 15 | `declaration-track:8d305a3c84b6bead9a7baedc1515c6f6f5bedcaafc5fcaac847f2ad96f31953a` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/normalizedsquare--37a88dbecfa7c435d77ba91e.md) | 17 | `declaration-track:37a88dbecfa7c435d77ba91e4abbb5f6a844a374f337974e61ea2e27f9f67a92` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/p-coe--5199e7df6fe590037ef5a801.md) | 20 | `result-track:5199e7df6fe590037ef5a8016270c3af54f2d8460c6a3f13a6966f0d6075d6bc` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/actual-scaled-square-real--30bc2ddb018bf554696b5071.md) | 23 | `result-track:30bc2ddb018bf554696b50713c2ef9e1e8bbf4e7fe7f82331010266c20141352` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/p-ratio--860f443ccc279ed4e1d69ba4.md) | 49 | `result-track:860f443ccc279ed4e1d69ba46936d522f03b641b8f69dc5fc120993de17bc7bd` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/p-ratio-tendsto--5a9fb8aecadac0f084f52af6.md) | 53 | `result-track:5a9fb8aecadac0f084f52af68669ad6ac7bd74f9d92de2ea42018537d882607f` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/normalization-tendsto--a0fa60eeb0343831442a587a.md) | 70 | `result-track:a0fa60eeb0343831442a587ad1a023b5f970c35f63e0c78afb170a8b0d18a1b8` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/exp-scaled-neg-tendsto--542af9ef4ffb1250fb1dbac2.md) | 79 | `result-track:542af9ef4ffb1250fb1dbac2c1bbcdc1395ef78f582a4ada344ab00906abbb19` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/exp-square-rescale--720f72316f43126d3e95d33b.md) | 84 | `result-track:720f72316f43126d3e95d33b1858edd43d7b68c7b95983e7221b75247d219348` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/scaled-square-exact--28ab1b21c2e6bb320be402ab.md) | 93 | `result-track:28ab1b21c2e6bb320be402ab99f790974c51f96b9ecebdb6b7f732da357f2970` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/scaled-square-tendsto--e0edae1e63c22fa9db1c5a93.md) | 113 | `result-track:e0edae1e63c22fa9db1c5a931e9f16303554969b22d5de10ca0f2bb9050f7c4b` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variantcb31eb38091818e6681b89579c4719a0edae051437bd8ef04e33e0363cdf5e6d.lean/declarations/quarter-scaled-limit--65d73bb0e0d789904fb249f6.md) | 133 | `result-track:65d73bb0e0d789904fb249f6d403bd4c3aa65c2bef2e97f84a59387b1313ce78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
