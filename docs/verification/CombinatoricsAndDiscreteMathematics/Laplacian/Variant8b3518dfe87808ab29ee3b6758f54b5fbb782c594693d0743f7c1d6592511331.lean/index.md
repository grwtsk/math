# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Laplacian.Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f91660b91f1956355f4d4e35187cd7a97ffba680",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f91660b91f1956355f4d4e35187cd7a97ffba680`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Graph` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [degree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean/declarations/degree--75e5a9b5cd1219ed96e35073.md) | 24 | `declaration-track:75e5a9b5cd1219ed96e35073b3ff796e0374d1106f89ee76b625c68541c20565` |
| 2 | `def` | [laplacian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean/declarations/laplacian--c50855979e5cee2d7a578067.md) | 32 | `declaration-track:c50855979e5cee2d7a5780674c13ba88a93cd3a10cf859c4522cb0f41aeda0c6` |
| 3 | `theorem` | [laplacian_constant_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Laplacian/Variant8b3518dfe87808ab29ee3b6758f54b5fbb782c594693d0743f7c1d6592511331.lean/declarations/laplacian-constant-zero--958cebec8ae2707443d1c3c9.md) | 42 | `result-track:958cebec8ae2707443d1c3c9e1d075642792c1f85838d766a32022198c3fb8aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
