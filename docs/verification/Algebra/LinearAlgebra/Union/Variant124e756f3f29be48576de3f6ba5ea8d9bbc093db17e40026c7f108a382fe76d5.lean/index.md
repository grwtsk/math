# Verification target: GRWTSK.Algebra.LinearAlgebra.Union.Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84f5c9d0d8d1c467e8d94cd1605f4586f84ea3be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84f5c9d0d8d1c467e8d94cd1605f4586f84ea3be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.iUnion_ssubset_of_forall_ne_top_of_card_lt](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/declarations/submodule-iunion-ssubset-of-forall-ne-top-of-card-lt--9b6ffc8d0eb6de5517c905da.md) | 39 | `result-track:9b6ffc8d0eb6de5517c905dad96892ec078a69aec261b6945b38928df3d86d74` |
| 2 | `lemma` | [Submodule.exists_forall_notMem_of_forall_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/declarations/submodule-exists-forall-notmem-of-forall-ne-top--228f05a185da2daf916f64cf.md) | 96 | `result-track:228f05a185da2daf916f64cf39874c3849f3f41949e7f90e98f0dfc07a94ef96` |
| 3 | `lemma` | [Module.Dual.exists_forall_ne_zero_of_forall_exists](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/declarations/module-dual-exists-forall-ne-zero-of-forall-exists--118ec076887ef5d7c638d2e0.md) | 102 | `result-track:118ec076887ef5d7c638d2e0589380b56df9c6613a9e906aa785332bfc679b1b` |
| 4 | `lemma` | [Module.Dual.exists_forall_mem_ne_zero_of_forall_exists](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/declarations/module-dual-exists-forall-mem-ne-zero-of-forall-exists--fccc76c07350393725e6c6bb.md) | 112 | `result-track:fccc76c07350393725e6c6bbd90392d61a95b74affe1b61aca8045477c3a9bb7` |
| 5 | `lemma` | [Module.exists_dual_forall_apply_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/declarations/module-exists-dual-forall-apply-ne-zero--2c5beb02eae063923ba310ae.md) | 120 | `result-track:2c5beb02eae063923ba310aead9d1284bf3b300b588f8a38437d560327d8844e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
