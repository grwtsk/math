# Verification target: GRWTSK.Algebra.RingTheory.LexOrder.Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc6f8c0783b003833248ab1aebd3a2bc701bb8f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc6f8c0783b003833248ab1aebd3a2bc701bb8f`.

Source path: `GRWTSK/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/lexorder--6a3711ccd0c0f62eb10215ff.md) | 33 | `declaration-track:6a3711ccd0c0f62eb10215ff7ed0f66735d56b3d6d5d779f99647ab9675034cd` |
| 2 | `theorem` | [lexOrder_def_of_ne_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/lexorder-def-of-ne-zero--bb64db8a7fac810112753d33.md) | 42 | `result-track:bb64db8a7fac810112753d3366937005b86f5e64133bbf1314a3b705ee7c621e` |
| 3 | `theorem` | [lexOrder_eq_top_iff_eq_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/lexorder-eq-top-iff-eq-zero--6c47d7955f77c9b2258ac04b.md) | 53 | `result-track:6c47d7955f77c9b2258ac04b71c015933642b0c3bbac6a881e25e46c615d4d98` |
| 4 | `theorem` | [lexOrder_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/lexorder-zero--de31ef5eabe6c1f594bccd5c.md) | 60 | `result-track:de31ef5eabe6c1f594bccd5cb2f367e13cb845e32c3fbc82a8cd4cca06ed75f0` |
| 5 | `theorem` | [exists_finsupp_eq_lexOrder_of_ne_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/exists-finsupp-eq-lexorder-of-ne-zero--f5c401f226efd90077ddc7b7.md) | 64 | `result-track:f5c401f226efd90077ddc7b747e1aae8af436a8363ff7a33044b26b2886b2b2c` |
| 6 | `theorem` | [coeff_ne_zero_of_lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/coeff-ne-zero-of-lexorder--cc023a38fb4fd0cdd648b12d.md) | 70 | `result-track:cc023a38fb4fd0cdd648b12d552e17553b9c546ccb747204e888249df60c6d40` |
| 7 | `theorem` | [coeff_eq_zero_of_lt_lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/coeff-eq-zero-of-lt-lexorder--c798a294b00989e43741dc3a.md) | 83 | `result-track:c798a294b00989e43741dc3ac78d16556b77098ae410bfbfc8412080d31bc81e` |
| 8 | `theorem` | [lexOrder_le_of_coeff_ne_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/lexorder-le-of-coeff-ne-zero--9172376ac14a8c5413ba7629.md) | 92 | `result-track:9172376ac14a8c5413ba7629e6e2916c475caa859b94ce7bc97faa97c61582a1` |
| 9 | `theorem` | [le_lexOrder_iff](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/le-lexorder-iff--28be79e7e52bed57b3f6da9d.md) | 98 | `result-track:28be79e7e52bed57b3f6da9d66b9f6916bfbfb24fa54e064d28aa0edef88594d` |
| 10 | `theorem` | [min_lexOrder_le](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/min-lexorder-le--fb97f7a2b8706347467823a7.md) | 114 | `result-track:fb97f7a2b8706347467823a7578d298eedcc426cf71540b124c4e42ace8cda18` |
| 11 | `theorem` | [coeff_mul_of_add_lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/coeff-mul-of-add-lexorder--f108c911ea971983b5ad114c.md) | 121 | `result-track:f108c911ea971983b5ad114cdde8331669f6ce4308d4dfcfcec352b971786e84` |
| 12 | `theorem` | [le_lexOrder_mul](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/le-lexorder-mul--77e8b8afcda3af0c2b1ff841.md) | 136 | `result-track:77e8b8afcda3af0c2b1ff841dda19d28016108d20b324216af8cb094fb821197` |
| 13 | `theorem` | [lexOrder_mul](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant6ba69347b4209d74782b1b94927fe51fdca14209a40f6bb2d15bc708f82e524c.lean/declarations/lexorder-mul--fba1533f6fd9c1afa7606229.md) | 157 | `result-track:fba1533f6fd9c1afa7606229e7cbd582f4dc1b9435a304e21927b2755e701528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
