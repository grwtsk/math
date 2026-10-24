# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48bec43ae1bb96ed652f9e225fc6fa33416eb3a8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48bec43ae1bb96ed652f9e225fc6fa33416eb3a8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterEvaluation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [embed_sourceExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/embed-sourceexponent--48aa8463dd71b954dadc906d.md) | 26 | `result-track:48aa8463dd71b954dadc906da75d263dd33be4cf6224f4f53ff0d908369299cb` |
| 2 | `theorem` | [cast_cutoffQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/cast-cutoffq--5d7c9166fdf7a153132b216a.md) | 30 | `result-track:5d7c9166fdf7a153132b216acb46796e5cdfa8a7a3f332fe8ffc8f7862e1b011` |
| 3 | `theorem` | [embed_sumQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/embed-sumq--b62ac5d61bfc9c04375ee4d9.md) | 33 | `result-track:b62ac5d61bfc9c04375ee4d992af0c4a73ff40ee375ece920af471a792d81821` |
| 4 | `theorem` | [embed_factorQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/embed-factorq--5ee6beccaa78f3517b3e87eb.md) | 37 | `result-track:5ee6beccaa78f3517b3e87ebbc26ea1d0d30cacb54fcabb29d17c4cd6ba1aa2f` |
| 5 | `theorem` | [embed_factorSlopeQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/embed-factorslopeq--320ca1466d38e0d4117e65f6.md) | 41 | `result-track:320ca1466d38e0d4117e65f673a5deddfcda376176d2e71ca7f6b945336a5cc3` |
| 6 | `theorem` | [powerLog_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/powerlog-refines--526f7abcdf42fe0adee9e214.md) | 46 | `result-track:526f7abcdf42fe0adee9e21435be759bea28e71cb304b7e76b073c1abab6e9a4` |
| 7 | `theorem` | [power_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/power-sound--be783af9e232683d9de22f05.md) | 67 | `result-track:be783af9e232683d9de22f05e0b3301c9780bec2614387c51469d7c0181f8360` |
| 8 | `theorem` | [powerLog_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/powerlog-sound--05cfc07b4199635455ce58d2.md) | 77 | `result-track:05cfc07b4199635455ce58d2c3282bcb14235404624c962243b0d5de8cc63674` |
| 9 | `theorem` | [finite_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/finite-sound--290fda0d8045e98cf8e13afa.md) | 87 | `result-track:290fda0d8045e98cf8e13afaf4b9755abd76511b4ce2f937d8257479b8632faf` |
| 10 | `theorem` | [center_ne_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/center-ne-one--08243fb50c0c2618dfd2dab2.md) | 134 | `result-track:08243fb50c0c2618dfd2dab2aa82a21a078b4ee1b1579a5e3630118853422a17` |
| 11 | `theorem` | [compute_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/compute-sound--e6c541b7b9f1147a4b9d2ac2.md) | 143 | `result-track:e6c541b7b9f1147a4b9d2ac2637fa7b5dba00a51c3a9d620a72d1c2453dda865` |
| 12 | `theorem` | [verify_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/declarations/verify-sound--97af561aa2683be4946365c5.md) | 166 | `result-track:97af561aa2683be4946365c549114adfd3522d6ec893f63db602770dcb4319a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
