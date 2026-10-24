# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeSums.Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17da169e0814ca6cf64425c8276565660731d843",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17da169e0814ca6cf64425c8276565660731d843`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.NonSquarefree` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mertens_monomial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/declarations/mertens-monomial--ebae9aa83bf6e03027dafcbb.md) | 25 | `result-track:ebae9aa83bf6e03027dafcbb2565689065082d4c4f7a4ccb340e9e262bcc7a4f` |
| 2 | `lemma` | [sum_not_prime_lam_logpow_div_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/declarations/sum-not-prime-lam-logpow-div-le--a1ef36c6819f9bee8736b25f.md) | 64 | `result-track:a1ef36c6819f9bee8736b25fa8ec15c0034bd7653265fe61bf644a4b6756953a` |
| 3 | `lemma` | [sum_prime_logpow_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/declarations/sum-prime-logpow-eq--4b35f596ea76950654f88a39.md) | 100 | `result-track:4b35f596ea76950654f88a39ad8bbd7b5ada50d72edcb45d4d25df9d599fe699` |
| 4 | `theorem` | [prime_logpow_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/declarations/prime-logpow-sum--247ab6c0905829f9008b85bd.md) | 112 | `result-track:247ab6c0905829f9008b85bdc3b0ade6af2891117e928431e1059163c4e27584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
