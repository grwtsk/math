# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GzGpChi.Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a9e4eee8176d095c9c019ce1873c280358ce2c9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a9e4eee8176d095c9c019ce1873c280358ce2c9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses.GzGp` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.AssemblyQ` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [EFrhs_eq_GpChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/declarations/efrhs-eq-gpchi--f8a42161f15ea07708be5d1c.md) | 31 | `result-track:f8a42161f15ea07708be5d1cccc015f2ded056818bd569bf25fdf8c542a624ef` |
| 2 | `theorem` | [ZeroConfig.Gz_eq_GpChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/declarations/zeroconfig-gz-eq-gpchi--1b3065922f3cdad6668162fb.md) | 47 | `result-track:1b3065922f3cdad6668162fbccddb74a1312c9640cdf471644083c9269add35d` |
| 3 | `theorem` | [ZeroConfig.summable_Gsummand_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/declarations/zeroconfig-summable-gsummand-chi--98cd2ac350672ec3c98d36e7.md) | 58 | `result-track:98cd2ac350672ec3c98d36e7c1dd22a3382ce5ce5b7b10983c62fe385b7fe2a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
