# Verification target: GRWTSK.Algebra.Archimedean.Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d44c2de411a4e51c81c49f7fe8fe061080a827b6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d44c2de411a4e51c81c49f7fe8fe061080a827b6`.

Source path: `GRWTSK/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Submonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.ArchimedeanDensely` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/declarations/instance--6657e965bb71e3ba9eed4992.md) | 28 | `declaration-track:6657e965bb71e3ba9eed4992329eec58eb1b7d48297d6b2179b12673ceb3dda5` |
| 2 | `lemma` | [wfDvdMonoid_iff_wellFounded_gt_on_v](../../../../mathematics/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/declarations/wfdvdmonoid-iff-wellfounded-gt-on-v--1b89b0158ee353b03574ab9b.md) | 43 | `result-track:1b89b0158ee353b03574ab9b49a2961b6cc070999446809824f81159f9c63ae7` |
| 3 | `lemma` | [wellFounded_gt_on_v_iff_discrete_mrange](../../../../mathematics/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/declarations/wellfounded-gt-on-v-iff-discrete-mrange--66c08a3b2c8c15e2fbd653a7.md) | 49 | `result-track:66c08a3b2c8c15e2fbd653a72fbcf7a11eca3905582123c0f86ad47c5eb803ab` |
| 4 | `lemma` | [isPrincipalIdealRing_iff_not_denselyOrdered](../../../../mathematics/Algebra/Archimedean/Variantdf5355f2586a4097f5d7d42af28daa3a8de3a0e8213e47674c2fdf58280f76b9.lean/declarations/isprincipalidealring-iff-not-denselyordered--a932152c8c4477a46359cd69.md) | 71 | `result-track:a932152c8c4477a46359cd69a8e51d72b5c0479000be4f15a02c1d9476097185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
