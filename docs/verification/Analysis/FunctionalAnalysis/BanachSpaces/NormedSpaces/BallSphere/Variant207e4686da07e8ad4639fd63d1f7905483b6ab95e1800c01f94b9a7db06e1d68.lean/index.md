# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.BallSphere.Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "468490df9aad095195d1417b47c3a5300a344dd2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `468490df9aad095195d1417b47c3a5300a344dd2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/instance--abe8806801673deef84b9ffd.md) | 29 | `declaration-track:abe8806801673deef84b9ffd8a247e31c2f0e2ab10039489b6279e91329658a7` |
| 2 | `theorem` | [coe_neg_sphere](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/coe-neg-sphere--60b9fa36658ae9f0a92f50a8.md) | 34 | `result-track:60b9fa36658ae9f0a92f50a88be36069f53aeceb202624e7352d241339c72f80` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/instance--bc029ed339db1c84c73dd645.md) | 37 | `declaration-track:bc029ed339db1c84c73dd645a7457e28870d8d1a6320892dbdecb1f08966d1bc` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/instance--c8cb1e73a1393aa56346bc92.md) | 41 | `declaration-track:c8cb1e73a1393aa56346bc928672a8eb7df3672f8cc857dc427d7e83546266ea` |
| 5 | `theorem` | [coe_neg_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/coe-neg-ball--d651f12b3eb7f4d6a75b2918.md) | 45 | `result-track:d651f12b3eb7f4d6a75b291865d0080f8fc1204c4ab9fd1fdc7210a0d96a5d6a` |
| 6 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/instance--3694c38f9e2fbff49efc9bb7.md) | 47 | `declaration-track:3694c38f9e2fbff49efc9bb7c039cd7bc65ebb34fd3ab8a230c761095cabfd0c` |
| 7 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/instance--768a92ec1a80fad3327d0821.md) | 51 | `declaration-track:768a92ec1a80fad3327d0821cfc6105cd6632035259730669c4daef15e22bb41` |
| 8 | `theorem` | [coe_neg_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/coe-neg-closedball--b3e3fdbb4881834328267934.md) | 55 | `result-track:b3e3fdbb4881834328267934082b351f2fcc83584397ea35665f2993f9130db3` |
| 9 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variant207e4686da07e8ad4639fd63d1f7905483b6ab95e1800c01f94b9a7db06e1d68.lean/declarations/instance--07e411b4584f94e446c861aa.md) | 57 | `declaration-track:07e411b4584f94e446c861aac9b5a55eab70729511d0aa0e207921e39478beaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
