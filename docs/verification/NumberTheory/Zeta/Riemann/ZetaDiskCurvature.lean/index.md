# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCurvature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55576e68843c3929f7a60c843c648e30138bdc3c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55576e68843c3929f7a60c843c648e30138bdc3c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.Liouville` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticOnNhd_zeta_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/declarations/analyticonnhd-zeta-disk--ca82d82e8d5b11257d2b5ed3.md) | 27 | `result-track:ca82d82e8d5b11257d2b5ed39c45599d009c1d01901e29bf6060af0bc2953e58` |
| 2 | `theorem` | [half_disk_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/declarations/half-disk-subset--b3ac17bda1664367619dd434.md) | 38 | `result-track:b3ac17bda1664367619dd43481ac05bec847b5aa1793c5c2be85f8e295fd1989` |
| 3 | `theorem` | [norm_zeta_second_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/declarations/norm-zeta-second-le--e20418973171e59452add523.md) | 48 | `result-track:e20418973171e59452add5231a042a0796a69b1af95d12f94dbe4b6d0eba2cf3` |
| 4 | `theorem` | [nontrivial_of_zero_in_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaDiskCurvature.lean/declarations/nontrivial-of-zero-in-disk--ab6b46e01be258a517594555.md) | 66 | `result-track:ab6b46e01be258a51759455582bd5e7bc8a9d92884d9f35982d45e247a0b0f13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
