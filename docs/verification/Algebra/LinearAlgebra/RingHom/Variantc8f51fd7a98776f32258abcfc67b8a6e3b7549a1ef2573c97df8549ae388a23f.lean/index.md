# Verification target: GRWTSK.Algebra.LinearAlgebra.RingHom.Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "820a6c36aa16644708776fa65fae6c93dd1eeada",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `820a6c36aa16644708776fa65fae6c93dd1eeada`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean.json)

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
| 1 | `abbrev` | [Function.Surjective.moduleLeft](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/declarations/function-surjective-moduleleft--cbbaff9a0bede0cd3144ae70.md) | 53 | `declaration-track:cbbaff9a0bede0cd3144ae70221e3d5b6a975be2de56284f68260cc23980943d` |
| 2 | `abbrev` | [Module.compHom](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/declarations/module-comphom--7a53689ead5fd405d6202b0a.md) | 65 | `declaration-track:7a53689ead5fd405d6202b0aaed426aeedf3b8103a7b82b672fcd08e33325b03` |
| 3 | `abbrev` | [RingHom.toModule](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/declarations/ringhom-tomodule--a5d078dfc41a8dbabdb9dc4e.md) | 78 | `declaration-track:a5d078dfc41a8dbabdb9dc4eefc8b9264ee9fb8f89fa246d4cbe3aa8857b1634` |
| 4 | `lemma` | [RingHom.toModule_smul](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/declarations/ringhom-tomodule-smul--5beca92517e81542b012408a.md) | 81 | `result-track:5beca92517e81542b012408a1b9f1736d8f7d028b9bcdcef874057b54450d0ad` |
| 5 | `def` | [RingHom.smulOneHom](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/declarations/ringhom-smulonehom--aa6adf8c9ee7df7eb9fb79a2.md) | 92 | `declaration-track:aa6adf8c9ee7df7eb9fb79a2baf3a526521a6f9df0ecb10fc6bab6487b993872` |
| 6 | `def` | [ringHomEquivModuleIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variantc8f51fd7a98776f32258abcfc67b8a6e3b7549a1ef2573c97df8549ae388a23f.lean/declarations/ringhomequivmoduleisscalartower--f10419c68ed11132fb0ebf17.md) | 100 | `declaration-track:f10419c68ed11132fb0ebf17a7397e6eac77955a49c012f950f27732a5b26126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
