# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.RSPrimeLower.Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5fb4cbe411eb42fc479ab86412000a18dcfc82c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5fb4cbe411eb42fc479ab86412000a18dcfc82c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.Dusart` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimeTables` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [count_prime_le_imp_le_nth](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/declarations/count-prime-le-imp-le-nth--c00adf316fe7528d5bc5130c.md) | 17 | `result-track:c00adf316fe7528d5bc5130c84d03753b81df139f82c1c9678e6b2a112b2fcd8` |
| 2 | `lemma` | [nth_prime_gt_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/declarations/nth-prime-gt-bound--00fd42ccc53ffbe2376b3293.md) | 25 | `result-track:00fd42ccc53ffbe2376b3293c3ed30bf2b5a60305645c0a301bbbfb8cd885118` |
| 3 | `lemma` | [p_n_lower_small](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/declarations/p-n-lower-small--a416264979d34f9c7cbe16fe.md) | 31 | `result-track:a416264979d34f9c7cbe16fe59a6f54d52ff9d51dd22ca0f99120d8417550eb0` |
| 4 | `lemma` | [pi_nth_prime'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/declarations/pi-nth-prime--f314b01561f382e1fec6fb72.md) | 65 | `result-track:f314b01561f382e1fec6fb72e90b6d6119b5730ce4e2cb401c7abd7fb0b24c4f` |
| 5 | `lemma` | [p_n_lower_large](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/declarations/p-n-lower-large--277266632b573af2578634b8.md) | 74 | `result-track:277266632b573af2578634b87af3aedf628b567c781edfaf1c959609cbb69da8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
