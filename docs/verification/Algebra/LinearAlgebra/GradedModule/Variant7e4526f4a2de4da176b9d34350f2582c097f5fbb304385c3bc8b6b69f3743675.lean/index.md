# Verification target: GRWTSK.Algebra.LinearAlgebra.GradedModule.Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bcc7226f18fe22f5bf7554ddf931e8a0c763f06",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bcc7226f18fe22f5bf7554ddf931e8a0c763f06`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gdistribmulaction--680ae2d39959340146fb053b.md) | 39 | `declaration-track:680ae2d39959340146fb053b02a884e225c4b270d0c7d6d3fee1d09d8d233d03` |
| 2 | `class` | [Gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gmodule--91a2c31fdeaff8761353f4a6.md) | 45 | `declaration-track:91a2c31fdeaff8761353f4a6057e231d59d3aeda433b5a30be2219e5c8d08c42` |
| 3 | `instance` | [GSemiring.toGmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gsemiring-togmodule--c9f62d4c0531c87c07d4ee37.md) | 51 | `declaration-track:c9f62d4c0531c87c07d4ee37e551dd1a25e4bc1b5f0db7126dd437f5209ce7a4` |
| 4 | `def` | [gsmulHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gsmulhom--b782f66cd067e493777caf8d.md) | 63 | `declaration-track:b782f66cd067e493777caf8d4c061162a882bdb52b479f99213e7705875b31e4` |
| 5 | `def` | [smulAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/smuladdmonoidhom--2c0e459bdd1cb86944b5ae4a.md) | 75 | `declaration-track:2c0e459bdd1cb86944b5ae4a95fcc62bd77509a308f9bd38c2e5f3faf6d3caec` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/instance--2680b921d2c5abf101064997.md) | 85 | `declaration-track:2680b921d2c5abf1010649971469e71a23a7d1a63638e574e7378158332ce1bc` |
| 7 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/smul-def--e43355a8c1127624ef497a3f.md) | 90 | `result-track:e43355a8c1127624ef497a3f63a6e9810f2d4c975c6b174323c58e96d6d67af0` |
| 8 | `theorem` | [smulAddMonoidHom_apply_of_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/smuladdmonoidhom-apply-of-of--54e6c2bf08bbdeb7b87be4d1.md) | 95 | `result-track:54e6c2bf08bbdeb7b87be4d1ea37dbde15197ef2e4ff983bf4730b5a797245dd` |
| 9 | `theorem` | [of_smul_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/of-smul-of--e01ab0ef824f071673505749.md) | 100 | `result-track:e01ab0ef824f071673505749582ea534d0ac236317061a462f678d15a06f9aff` |
| 10 | `theorem` | [one_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/one-smul--8a8806d9875fdb19de61a8cd.md) | 107 | `result-track:8a8806d9875fdb19de61a8cd9c4c13c1cb2cbb897220a887d11ba204d806bc2f` |
| 11 | `theorem` | [mul_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/mul-smul--7208569154ebf4affe86ef5f.md) | 118 | `result-track:7208569154ebf4affe86ef5f4ec50c73bd2ba2367ddc59ab6e136ddf07279001` |
| 12 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/module--8798bbbc1e0ff21b9b34d116.md) | 139 | `declaration-track:8798bbbc1e0ff21b9b34d1168d63e208a7e5385c1b5abdaece9f5b2b5fe8428b` |
| 13 | `instance` | [gmulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gmulaction--1edbbeba4b39c08d4f6392c3.md) | 165 | `declaration-track:1edbbeba4b39c08d4f6392c3b0a8e7adace2f9b86671f8dbc6f9b35b6798a2ef` |
| 14 | `instance` | [gdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gdistribmulaction--776657b651424218559354b6.md) | 172 | `declaration-track:776657b651424218559354b6b680ab19d7f54486121882c91910e59ac271a5ab` |
| 15 | `instance` | [gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/gmodule--7c631cd24f31574a058fb6cb.md) | 184 | `declaration-track:7c631cd24f31574a058fb6cb76706089834ea43a727fed4b56e236045352141b` |
| 16 | `def` | [isModule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/ismodule--7c72acad06aa6ed374cae4b7.md) | 202 | `declaration-track:7c72acad06aa6ed374cae4b7cc64c95dccfe08f97632fc1046591ad805c13645` |
| 17 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant7e4526f4a2de4da176b9d34350f2582c097f5fbb304385c3bc8b6b69f3743675.lean/declarations/linearequiv--fbe93e9f6e867762d7ab3c39.md) | 209 | `declaration-track:fbe93e9f6e867762d7ab3c39af27f2cf82d53747839c7ae175442d9f3e39bfbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
