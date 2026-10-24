# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EigenIdentity.Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4e71ab50aaa9f6391a4e2574f8e5b696f2f5e5b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4e71ab50aaa9f6391a4e2574f8e5b696f2f5e5b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_sq_eq_re_mul_conj](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean/declarations/norm-sq-eq-re-mul-conj--e4cd47269822e19d596cff07.md) | 47 | `result-track:e4cd47269822e19d596cff07dd1fdd20ae4a2900bbb1b47a9f67e5468bc06b79` |
| 2 | `lemma` | [re_mul_conj_comm](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean/declarations/re-mul-conj-comm--6e3b72cbe07dc3f993a04a30.md) | 51 | `result-track:6e3b72cbe07dc3f993a04a3077be738a3179ca28ca5a3b16b7c79bc179b76fa6` |
| 3 | `theorem` | [eigen_identity'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EigenIdentity/Variant884963a4bdbe2214c0b8de03702555a316939c5aa0d398a75b7731290df5857e.lean/declarations/eigen-identity--83f16e100b007bb7fbe67d5c.md) | 55 | `result-track:83f16e100b007bb7fbe67d5c64e71aaee4af9ebd9940b3b7a7757fe210fbe8dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
