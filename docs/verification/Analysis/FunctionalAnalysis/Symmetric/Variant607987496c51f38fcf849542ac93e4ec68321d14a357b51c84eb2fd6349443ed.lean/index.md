# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Symmetric.Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d736e100624eb6fe703ead1c11a751760147fe98",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d736e100624eb6fe703ead1c11a751760147fe98`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.taylor_approx_two_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/declarations/convex-taylor-approx-two-segment--647524600f2095229e109b20.md) | 69 | `result-track:647524600f2095229e109b2039e4f8a9790956a44f1296af099eef72279d2af2` |
| 2 | `theorem` | [Convex.isLittleO_alternate_sum_square](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/declarations/convex-islittleo-alternate-sum-square--e8f0367e0aca7ea00226c86c.md) | 180 | `result-track:e8f0367e0aca7ea00226c86ce2c1c4831b1cf830f647dd4eae9db6349402a9d0` |
| 3 | `theorem` | [Convex.second_derivative_within_at_symmetric_of_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/declarations/convex-second-derivative-within-at-symmetric-of-mem-interior--d79d835504eb1e832a8b4e9d.md) | 234 | `result-track:d79d835504eb1e832a8b4e9d8d73d05115d70aa0322ce16aaeb059d8b3cfcb1b` |
| 4 | `theorem` | [Convex.second_derivative_within_at_symmetric](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/declarations/convex-second-derivative-within-at-symmetric--7150a09c4033362c26dfe981.md) | 259 | `result-track:7150a09c4033362c26dfe98103fde86c6fb70bfadcb563451fda7e0ad18593cd` |
| 5 | `theorem` | [second_derivative_symmetric_of_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/declarations/second-derivative-symmetric-of-eventually--a8b9093bac43cb24381d0e79.md) | 309 | `result-track:a8b9093bac43cb24381d0e79869867af3a630bf79d162873b12128237ebd9950` |
| 6 | `theorem` | [second_derivative_symmetric](../../../../../mathematics/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/declarations/second-derivative-symmetric--e2da9a5e69f29cd10fe838c8.md) | 322 | `result-track:e2da9a5e69f29cd10fe838c899b358a2a32d9cd69f4b456af843b00f430b5be4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
