# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CoeffMem.Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb369a13e233d7a83ca8fc0211fdb30fd4e6d52f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb369a13e233d7a83ca8fc0211fdb30fd4e6d52f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coeff_divModByMonicAux_mem_span_pow_mul_span](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean/declarations/coeff-divmodbymonicaux-mem-span-pow-mul-span--19c16af474b1624ea9ad72d2.md) | 36 | `result-track:19c16af474b1624ea9ad72d20d2ebb07ed3b0b204e507d7cf99ed41f76a8f912` |
| 2 | `lemma` | [coeff_modByMonic_mem_pow_natDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean/declarations/coeff-modbymonic-mem-pow-natdegree-mul--b57681b9c60f7ef7f01fe825.md) | 88 | `result-track:b57681b9c60f7ef7f01fe825d916d2af6904e7e75fdee37ca985ac86150eca3e` |
| 3 | `lemma` | [coeff_divByMonic_mem_pow_natDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean/declarations/coeff-divbymonic-mem-pow-natdegree-mul--cf01b101bade67dbfaa6188b.md) | 103 | `result-track:cf01b101bade67dbfaa6188b935d229460d90d2722e2e741c0539df86437b721` |
| 4 | `lemma` | [idealSpan_range_update_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/CoeffMem/Variant3815d5076c46295d54b8a60bdffcd1f68dac503349ddcd6efc07f97f8583afbb.lean/declarations/idealspan-range-update-divbymonic--fdbac54fb2443928b8e3ad8a.md) | 116 | `result-track:fdbac54fb2443928b8e3ad8adcb17e4a9218374d269e1aa451015f35b2a677b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
