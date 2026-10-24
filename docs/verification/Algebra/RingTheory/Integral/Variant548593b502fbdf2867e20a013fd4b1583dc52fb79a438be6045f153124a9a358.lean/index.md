# Verification target: GRWTSK.Algebra.RingTheory.Integral.Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "447e4d2b53f4ed4e4fbccded3efe7b0879476359",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `447e4d2b53f4ed4e4fbccded3efe7b0879476359`.

Source path: `GRWTSK/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_of_integral](../../../../../mathematics/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean/declarations/mem-of-integral--973fe9829f1942120d7922b6.md) | 30 | `result-track:973fe9829f1942120d7922b61720f9be098994039680331eb4d516d14d959bea` |
| 2 | `theorem` | [integralClosure](../../../../../mathematics/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean/declarations/integralclosure--51a05570786fbc7220801898.md) | 43 | `result-track:51a05570786fbc72208018989b139e5ac75829db565c184ebf5686367c02ac50` |
| 3 | `theorem` | [integrallyClosed](../../../../../mathematics/Algebra/RingTheory/Integral/Variant548593b502fbdf2867e20a013fd4b1583dc52fb79a438be6045f153124a9a358.lean/declarations/integrallyclosed--882b8adfed70b5bf1aba38b8.md) | 58 | `result-track:882b8adfed70b5bf1aba38b8dfbccb8aaa09038c4701d97b44378fea775af4dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
