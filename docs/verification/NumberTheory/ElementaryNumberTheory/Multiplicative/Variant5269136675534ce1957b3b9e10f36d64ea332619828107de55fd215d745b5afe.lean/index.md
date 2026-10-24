# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Multiplicative.Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c6a21cff27a1382e518edf20e22ea148dcd6b82",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c6a21cff27a1382e518edf20e22ea148dcd6b82`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_pow_coprime_prod_of_coprime_insert](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/declarations/prime-pow-coprime-prod-of-coprime-insert--b220f0d7c0f735b1d00d5079.md) | 31 | `result-track:b220f0d7c0f735b1d00d507923c28bbf49a9c7ccf7808e2373c4422aec49acaf` |
| 2 | `theorem` | [induction_on_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/declarations/induction-on-prime-power--5140838d923dc5e4b3d8872f.md) | 52 | `result-track:5140838d923dc5e4b3d8872f0018d63e5f9b9737c02ea6faa3d117e472a23273` |
| 3 | `theorem` | [induction_on_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/declarations/induction-on-coprime--4f7e411c0a4af2ba326b4cd7.md) | 71 | `result-track:4f7e411c0a4af2ba326b4cd7bfd9e14bbfbb2f88b4b0bc0ee553dacbfc968876` |
| 4 | `theorem` | [multiplicative_prime_power](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/declarations/multiplicative-prime-power--25a3f82082cea13810a1e3e9.md) | 90 | `result-track:25a3f82082cea13810a1e3e955452df8cf8e345e16d20aa7729dd5ee12d4bc94` |
| 5 | `theorem` | [multiplicative_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Multiplicative/Variant5269136675534ce1957b3b9e10f36d64ea332619828107de55fd215d745b5afe.lean/declarations/multiplicative-of-coprime--1b5c35df1e8a51520a626dc4.md) | 110 | `result-track:1b5c35df1e8a51520a626dc4fa27e9ad66bce409ee628462507fd44ddb86351e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
