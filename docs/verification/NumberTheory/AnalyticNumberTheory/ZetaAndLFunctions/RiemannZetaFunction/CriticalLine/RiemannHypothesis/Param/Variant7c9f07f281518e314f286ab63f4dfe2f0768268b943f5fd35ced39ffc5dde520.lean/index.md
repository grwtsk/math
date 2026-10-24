# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Param.Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbbb95d893ed0ab4dc5cdd58e9f09650fba8f682",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbbb95d893ed0ab4dc5cdd58e9f09650fba8f682`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_param_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/norm-param-ge--40f689128b4f64a478eec83a.md) | 30 | `result-track:40f689128b4f64a478eec83afcba8acfd20874b8b3193493cf91224a5caae524` |
| 2 | `lemma` | [normSq_param_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/normsq-param-eq--79e7bf0cf3042658f2579ffd.md) | 35 | `result-track:79e7bf0cf3042658f2579ffdbc88c0c739b15aca1f7acaa357bdf510772c4d02` |
| 3 | `lemma` | [normSq_param_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/normsq-param-ge--39dadb092f4698728f65c927.md) | 38 | `result-track:39dadb092f4698728f65c9276d8152b3b2fae13329e2e72550f6b7f54422ff20` |
| 4 | `lemma` | [normSq_param_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/normsq-param-le--2636bebac5f7c9733fde0b3f.md) | 41 | `result-track:2636bebac5f7c9733fde0b3f260de3d4e923ab0205da9920fc14f25d46dcd38a` |
| 5 | `lemma` | [norm_param_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/norm-param-pos--3d8782fdb39332fe4071be9e.md) | 48 | `result-track:3d8782fdb39332fe4071be9e96308a5ac19b8dbeb3ff835c8f3e2a01717a2bea` |
| 6 | `lemma` | [inv_re_param](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/inv-re-param--207167789041ecf7c0d5c0d8.md) | 51 | `result-track:207167789041ecf7c0d5c0d82245508f154b5badcb2af73477de68c64c551fde` |
| 7 | `lemma` | [inv_normSq_param](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/inv-normsq-param--84d415754b3d9abb19e0741d.md) | 69 | `result-track:84d415754b3d9abb19e0741daae4100cece86272f43f7be7b0340b5327c681a7` |
| 8 | `lemma` | [inv_normSq_param_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/inv-normsq-param-le--3a9f331548fec7fa8c86f319.md) | 83 | `result-track:3a9f331548fec7fa8c86f3190c59c4cd6fa66329ab1403b7337bc4fded208b6d` |
| 9 | `lemma` | [mul_pow_sub_pow_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/mul-pow-sub-pow-le--0c0bb86fd06bc52884c30b63.md) | 92 | `result-track:0c0bb86fd06bc52884c30b6389bb33656f9f1c645a5625fabeea86d3886efc2f` |
| 10 | `lemma` | [inv_normSq_pow_param](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/declarations/inv-normsq-pow-param--0738d25b7c50ae88cf99c9c8.md) | 112 | `result-track:0738d25b7c50ae88cf99c9c88a1d26ea3e54fadc31606023d47a8c6904489d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
