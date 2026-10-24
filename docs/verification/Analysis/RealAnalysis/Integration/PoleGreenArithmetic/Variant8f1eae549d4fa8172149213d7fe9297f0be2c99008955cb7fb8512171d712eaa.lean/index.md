# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PoleGreenArithmetic.Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4da832018b86ffae5e94ddda85bdb4546190671",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4da832018b86ffae5e94ddda85bdb4546190671`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleGreenWeakIdentity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_squared_operator_eq_zero_of_not_mem_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/pole-squared-operator-eq-zero-of-not-mem-tsupport--b3ec749d2086c04b365d8b9d.md) | 27 | `result-track:b3ec749d2086c04b365d8b9df751dd5c5ca91fc7530b15a4e541c3d8704e5e90` |
| 2 | `theorem` | [pole_squared_operator_has_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/pole-squared-operator-has-compact-support--e392c16d6f25188b50054989.md) | 34 | `result-track:e392c16d6f25188b500549892e5af78e14aa8647a11ebd3ae9f419774b7c8c60` |
| 3 | `theorem` | [translated_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/translated-green-operator-integrable--612263b045f18731a0a76d4c.md) | 42 | `result-track:612263b045f18731a0a76d4ced7077d5e4a4981ffe8a679c38db3da907c3864c` |
| 4 | `theorem` | [translated_green_operator_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/translated-green-operator-integral--7b0f52de0b8f71527bc7667a.md) | 52 | `result-track:7b0f52de0b8f71527bc7667afae4ed56faf3b2a47b8c40e33af9dece58969825` |
| 5 | `theorem` | [continuum_green_operator_joint_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/continuum-green-operator-joint-integrable--0037cfe673c664846ba67020.md) | 65 | `result-track:0037cfe673c664846ba67020c907e807c489999e834b7d999a3228e03a444a5a` |
| 6 | `theorem` | [continuum_green_operator_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/continuum-green-operator-integral--7dc6b98c514f9e24d53c5ffb.md) | 95 | `result-track:7dc6b98c514f9e24d53c5ffb7be44d725ff092afb3a832abce352961bab97039` |
| 7 | `theorem` | [continuum_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/continuum-green-operator-integrable--0777640f49dd777f9b6da5e0.md) | 122 | `result-track:0777640f49dd777f9b6da5e017efc515f709166d66dd60047a579906bcfc0c0b` |
| 8 | `theorem` | [prime_square_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/prime-square-green-operator-integrable--2bf89090b33824e0b467597b.md) | 134 | `result-track:2bf89090b33824e0b467597b89a4e04fa0cdafb57c1b137ec75d71e7fac56898` |
| 9 | `theorem` | [prime_square_green_weak_discrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/prime-square-green-weak-discrepancy--1a6db8dc4b706dfc19aba85d.md) | 147 | `result-track:1a6db8dc4b706dfc19aba85d97df01427dff8c102f657d80c90ea153c4f7bd7a` |
| 10 | `theorem` | [prime_square_green_source_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/prime-square-green-source-correlation-integrable--63bbfcf28a08132b838db86c.md) | 171 | `result-track:63bbfcf28a08132b838db86c8f92bdbf9421b8f5b839de1b1ca99731f4ed0d22` |
| 11 | `theorem` | [prime_square_green_source_correlation_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant8f1eae549d4fa8172149213d7fe9297f0be2c99008955cb7fb8512171d712eaa.lean/declarations/prime-square-green-source-correlation-pairing--4034e389aee6c0d4404a2fa4.md) | 180 | `result-track:4034e389aee6c0d4404a2fa4d3fa2659551a4ee2efd789ea79f414cd032ded5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
