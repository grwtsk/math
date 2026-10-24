# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b96a788fae2ec1444b993db2a7c574a0f8e24a8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b96a788fae2ec1444b993db2a7c574a0f8e24a8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedSquareReadout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/declarations/pairedsquarereadout--54ba4efa98d25febe7991bef.md) | 28 | `declaration-track:54ba4efa98d25febe7991befe6bf9d3eea1aa3a2a26ea5fa1827eb4d0e02370a` |
| 2 | `theorem` | [squarePrefix_pairedTail_work](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/declarations/squareprefix-pairedtail-work--ca9c9ec9ad41eedc7068f8cf.md) | 33 | `result-track:ca9c9ec9ad41eedc7068f8cf969e87c7828f130618731457f5db9b4f71978f37` |
| 3 | `theorem` | [squareTail_pairedTail_work](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/declarations/squaretail-pairedtail-work--3e29cf7ff1fe7d8496720d08.md) | 61 | `result-track:3e29cf7ff1fe7d8496720d08d020623c4ecbc702912a9adba4e9457bc5022755` |
| 4 | `theorem` | [squareTailPairedWork_eq_neg_integral_pairedTail_deriv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/declarations/squaretailpairedwork-eq-neg-integral-pairedtail-deriv--01a172c7de6251d4e02870e4.md) | 77 | `result-track:01a172c7de6251d4e02870e4b9f2be65c10ea19f4cc0afaf574755d06b063aab` |
| 5 | `theorem` | [squareTailPairedWork_eq_neg_readout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/declarations/squaretailpairedwork-eq-neg-readout--9dbd0738a0198e651d38eab9.md) | 107 | `result-track:9dbd0738a0198e651d38eab938f9eadf874b71edd541bff8a08fa8a519d08d8e` |
| 6 | `theorem` | [squareRemovedPairedWork_eq_first_square_quadrature](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant98f49f4f75329608fbe649ad9e7b4bb35c36347154bdb81a10e7d0d919d354b7.lean/declarations/squareremovedpairedwork-eq-first-square-quadrature--6cfacbfbe8c507208f674c2b.md) | 113 | `result-track:6cfacbfbe8c507208f674c2b30820c9ac327fea87e3765b7d24fd481940d053e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
