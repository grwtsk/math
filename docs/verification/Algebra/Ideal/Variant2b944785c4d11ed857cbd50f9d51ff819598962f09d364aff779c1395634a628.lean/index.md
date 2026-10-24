# Verification target: GRWTSK.Algebra.Ideal.Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e55fa05c423dadfe4ce75ea96647def1705b36c8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e55fa05c423dadfe4ce75ea96647def1705b36c8`.

Source path: `GRWTSK/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Division` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_ideal_span_monomial_image](../../../../mathematics/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean/declarations/mem-ideal-span-monomial-image--d8f1817e1fa22005e583a2bc.md) | 38 | `result-track:d8f1817e1fa22005e583a2bc4f7df5011af89cc68bad0c1a94e5511d0a01a8f8` |
| 2 | `theorem` | [mem_ideal_span_monomial_image_iff_dvd](../../../../mathematics/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean/declarations/mem-ideal-span-monomial-image-iff-dvd--6eac752bae58cb572fcaef2b.md) | 44 | `result-track:6eac752bae58cb572fcaef2b897a52291c28ac82f4d37f392e9491b16bf08757` |
| 3 | `theorem` | [mem_ideal_span_X_image](../../../../mathematics/Algebra/Ideal/Variant2b944785c4d11ed857cbd50f9d51ff819598962f09d364aff779c1395634a628.lean/declarations/mem-ideal-span-x-image--0252be9e1cce06c9c4511722.md) | 52 | `result-track:0252be9e1cce06c9c4511722be831f3be806e420ff896000c43f0a4a1662a751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
