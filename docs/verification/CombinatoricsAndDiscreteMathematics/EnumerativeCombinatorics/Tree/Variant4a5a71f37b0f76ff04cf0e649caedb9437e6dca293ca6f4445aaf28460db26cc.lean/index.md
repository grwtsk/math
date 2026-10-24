# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Tree.Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30bffea601174fa6c711020b6a2d7b06028e615f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30bffea601174fa6c711020b6a2d7b06028e615f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/ctree--4fb923f6854e743f9c1e9c0d.md) | 19 | `declaration-track:4fb923f6854e743f9c1e9c0d6ef0c59acac92579fa3ffdd9a2b87a0bb2f29db8` |
| 2 | `def` | [internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/internal--fdf2dfd2529f0cb479ac18ea.md) | 26 | `declaration-track:fdf2dfd2529f0cb479ac18eaa1ac656b62e3aa0d09b5e2df716d7a435ab62d82` |
| 3 | `def` | [leaves](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/leaves--2a846a86641f07b0d5e3e30a.md) | 30 | `declaration-track:2a846a86641f07b0d5e3e30a8a1b0bd2fa5244754d5c5263a427cbe9515f88f1` |
| 4 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/depth--82506a5b3519e75df66b2cd4.md) | 34 | `declaration-track:82506a5b3519e75df66b2cd4105c85626c937bca7f9a3dbf5d90deb9f5c50f77` |
| 5 | `def` | [mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/mirror--ecdfe3b3ee18391b29110abe.md) | 38 | `declaration-track:ecdfe3b3ee18391b29110abe40151ef95e249cd8f84137783c486a932a9a949a` |
| 6 | `theorem` | [leaves_eq_internal_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/leaves-eq-internal-add-one--bb8bfc208f72e89e312c93cb.md) | 43 | `result-track:bb8bfc208f72e89e312c93cb6c0984c17cccd0221dbf1f0a1f4c107ee06f0165` |
| 7 | `theorem` | [mirror_mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/mirror-mirror--61a1dcc8de9f7cd68fb84582.md) | 53 | `result-track:61a1dcc8de9f7cd68fb84582f8ce242c0a2a8930c90821a6eafa647603b3915f` |
| 8 | `theorem` | [internal_mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/internal-mirror--36e281e28eddd88858b30abb.md) | 62 | `result-track:36e281e28eddd88858b30abb8fa79ee57dec1eadcc8beb208186355b70577690` |
| 9 | `theorem` | [leaves_mirror](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc.lean/declarations/leaves-mirror--168b8e9f5ea388d096edff7e.md) | 72 | `result-track:168b8e9f5ea388d096edff7ecd50788cc5a45b4ab2614d6b30c3d0efa0efc691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
