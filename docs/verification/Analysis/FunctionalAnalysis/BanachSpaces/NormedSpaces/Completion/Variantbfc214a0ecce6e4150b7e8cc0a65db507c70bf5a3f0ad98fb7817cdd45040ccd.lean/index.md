# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Completion.Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29b2a6ae40afef81fc24444197b1841996cbcb5d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29b2a6ae40afef81fc24444197b1841996cbcb5d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Completion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformField` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/instance--73821a01e068f9075f905655.md) | 40 | `declaration-track:73821a01e068f9075f90565548d1a46a126e83885c347325c97d03a915e9f1a3` |
| 2 | `def` | [toComplₗᵢ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/tocompl--afe163d86e489a1255adcf27.md) | 50 | `declaration-track:afe163d86e489a1255adcf27217562b0f1bcf9ecbc5a7bc92a443fb04e1182b6` |
| 3 | `theorem` | [coe_toComplₗᵢ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/coe-tocompl--9c39ce4030849ebfe1c8b626.md) | 57 | `result-track:9c39ce4030849ebfe1c8b6267e1fdd8386c0b9013760146478bfcffbf7d58ead` |
| 4 | `def` | [toComplL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/tocompll--93df1be8cc1c1571070194ec.md) | 61 | `declaration-track:93df1be8cc1c1571070194ecc35b66df33dd4048ba3182766f231d8d53c25c01` |
| 5 | `theorem` | [coe_toComplL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/coe-tocompll--1d27a90da528c28a318f8d50.md) | 65 | `result-track:1d27a90da528c28a318f8d500ec4d1a69f267f194e5d539e679d427496da49b7` |
| 6 | `theorem` | [norm_toComplL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/norm-tocompll--e7e6498c51fd1a1d79c2ab91.md) | 69 | `result-track:e7e6498c51fd1a1d79c2ab9107625a26eec49ffe6d54de82ffc581ab77cddcee` |
| 7 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/instance--58a6de3e02ccf74aad82c17d.md) | 79 | `declaration-track:58a6de3e02ccf74aad82c17dc9dfc4b98f56953b64a1862b0827a66370dd07ab` |
| 8 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/instance--776fd2db7c55a78459a0eb93.md) | 87 | `declaration-track:776fd2db7c55a78459a0eb932d99c7358b74a4d8ada1f159c5bb4ac22bfb5fc8` |
| 9 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/instance--7fda58713bbfae415059e3d6.md) | 91 | `declaration-track:7fda58713bbfae415059e3d61c8f7a1d158db931564239ebfe7f1ae13e0405b9` |
| 10 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Completion/Variantbfc214a0ecce6e4150b7e8cc0a65db507c70bf5a3f0ad98fb7817cdd45040ccd.lean/declarations/instance--f052d6d8cf3782ec604d5f11.md) | 95 | `declaration-track:f052d6d8cf3782ec604d5f1101a5c3f40f6f3f6a51589b2b145114f906938814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
