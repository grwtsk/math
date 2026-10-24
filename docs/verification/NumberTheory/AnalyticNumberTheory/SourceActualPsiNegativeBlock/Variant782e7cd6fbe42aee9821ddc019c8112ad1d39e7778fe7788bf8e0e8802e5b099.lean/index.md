# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualPsiNegativeBlock.Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "663f62ff65817f44a2afc18ba2b681245f88b7bc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `663f62ff65817f44a2afc18ba2b681245f88b7bc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedActualChebyshev](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/shiftedactualchebyshev--a28e19817bb5a4f77fb3876d.md) | 19 | `declaration-track:a28e19817bb5a4f77fb3876d180336695a3c3c1e7bb2b5b0605dda1e7649119c` |
| 2 | `theorem` | [actual_prime_power_four_contribution](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/actual-prime-power-four-contribution--8412b81747396b6b4dc6e015.md) | 23 | `result-track:8412b81747396b6b4dc6e0152ff3cc965a64b4f4fbc866679ba251902f748540` |
| 3 | `theorem` | [actual_psi_on_negative_block](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/actual-psi-on-negative-block--c48337e03f0ada1b347583f9.md) | 31 | `result-track:c48337e03f0ada1b347583f93e3400e99eca9891eb5058a64dd1a40d3bcb4dad` |
| 4 | `theorem` | [log_fifteen_lt_three](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/log-fifteen-lt-three--2f1942e4c67eda63fde3a7a1.md) | 44 | `result-track:2f1942e4c67eda63fde3a7a16b458a3b85ed8ab05d3a04c33a914db9a23c9acf` |
| 5 | `theorem` | [shiftedActualChebyshev_negative_on_block](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/shiftedactualchebyshev-negative-on-block--73597f2894189a00e20a1978.md) | 55 | `result-track:73597f2894189a00e20a1978c2a82a9604debd9fcf72166f037c8110e2947f05` |
| 6 | `theorem` | [actual_psi_at_closed_seven](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/actual-psi-at-closed-seven--8486f7104c3f77c5a8ffc6e7.md) | 68 | `result-track:8486f7104c3f77c5a8ffc6e756349bef3a8cceae93d363a7b43b9bed741dea52` |
| 7 | `theorem` | [shiftedActualChebyshev_not_nonnegative_everywhere](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variant782e7cd6fbe42aee9821ddc019c8112ad1d39e7778fe7788bf8e0e8802e5b099.lean/declarations/shiftedactualchebyshev-not-nonnegative-everywhere--593ab9550341db822daed2e6.md) | 73 | `result-track:593ab9550341db822daed2e6203fbd82b4384554c200a501540f52ae36ded400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
