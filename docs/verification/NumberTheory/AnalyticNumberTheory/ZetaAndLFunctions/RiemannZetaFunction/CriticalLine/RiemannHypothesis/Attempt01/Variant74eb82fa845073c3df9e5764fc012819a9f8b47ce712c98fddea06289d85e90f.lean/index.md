# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fecbc7613235f6a8d4854987c39639c2c10b5ca",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fecbc7613235f6a8d4854987c39639c2c10b5ca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiHalfHyperbola` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualClosedXiAtomKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedxiatomkernel--eb67d892bc8b259c7dfdb9eb.md) | 27 | `declaration-track:eb67d892bc8b259c7dfdb9ebba00bd34f8f9595f89bb1699e2c3c62de8fc8cbc` |
| 2 | `def` | [actualClosedMangoldtXiPair](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedmangoldtxipair--b94cdaeac88c5e5ce67247e5.md) | 31 | `declaration-track:b94cdaeac88c5e5ce67247e529325b35f6bac409fcbd51e6b240240dec21cb13` |
| 3 | `def` | [actualClosedMobiusXiHyperbola](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedmobiusxihyperbola--dba8e0aefda560cc565ae1bd.md) | 35 | `declaration-track:dba8e0aefda560cc565ae1bd0d6670c4ad19b8cb5c9296a3de8de7544c772d2b` |
| 4 | `theorem` | [ioc_zero_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/ioc-zero-eq--0d939f7fb1ddd074fec664d9.md) | 40 | `result-track:0d939f7fb1ddd074fec664d9cbb5d4f93b65dbae03b0992105727793a8db6be2` |
| 5 | `theorem` | [psi_eq_positive_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/psi-eq-positive-prefix--87c600d8e5ff4f51b68ef915.md) | 45 | `result-track:87c600d8e5ff4f51b68ef9157690951647e94b6a13251fdb696db39743193d43` |
| 6 | `theorem` | [actualPsi_eq_moebius_log_hyperbola](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualpsi-eq-moebius-log-hyperbola--3bc047e424b31829ea3e243a.md) | 51 | `result-track:3bc047e424b31829ea3e243a93d28628aa1000af620f689e50dfeb58e7e78b27` |
| 7 | `theorem` | [actualClosedMangoldtXiPair_eq_half_sub_psi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedmangoldtxipair-eq-half-sub-psi--52e83e95f5ccb7e0bce83dd7.md) | 61 | `result-track:52e83e95f5ccb7e0bce83dd7ce0f7dd1a681ffbd23a2dc0e1d51727e55b9d7f6` |
| 8 | `theorem` | [actualClosedMangoldtXiPair_eq_joint_hyperbola](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedmangoldtxipair-eq-joint-hyperbola--ac87ddaf66d72e9f65d0f195.md) | 70 | `result-track:ac87ddaf66d72e9f65d0f1956af7b4af3e21b9af246acb6e7aa5a245bb9b6dd7` |
| 9 | `theorem` | [actualClosedXiAtomKernel_touching](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedxiatomkernel-touching--d2ab3c67c3f007f5aaa9a9b7.md) | 84 | `result-track:d2ab3c67c3f007f5aaa9a9b78950c95868c51cea5c5f2a6e95ea93052717e047` |
| 10 | `theorem` | [actualClosedMangoldtXiPair_on_closed_cell](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualclosedmangoldtxipair-on-closed-cell--402ca1d274e18c5a73360ac6.md) | 89 | `result-track:402ca1d274e18c5a73360ac64668da189ca5bdf17c882d7fd6ef2e5173cdd296` |
| 11 | `theorem` | [actualAnchoredXiTailPrimitive_eq_closed_pair](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant74eb82fa845073c3df9e5764fc012819a9f8b47ce712c98fddea06289d85e90f.lean/declarations/actualanchoredxitailprimitive-eq-closed-pair--3a2f636e80330b5b8a49dcbf.md) | 105 | `result-track:3a2f636e80330b5b8a49dcbf843c0b15ad7480cfc402b56d419c9983f0b2c15d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
