# Verification target: GRWTSK.Algebra.Ideal.Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de669fd310c465fb997f633f085c914899b41f7a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de669fd310c465fb997f633f085c914899b41f7a`.

Source path: `GRWTSK/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Division` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_ideal_span_monomial_image](../../../../mathematics/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean/declarations/mem-ideal-span-monomial-image--2afe5b2e6f49c6dd7cb5a394.md) | 30 | `result-track:2afe5b2e6f49c6dd7cb5a3946f9d29da11dcff9c29194b418ca5c07f680d498c` |
| 2 | `theorem` | [mem_ideal_span_monomial_image_iff_dvd](../../../../mathematics/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean/declarations/mem-ideal-span-monomial-image-iff-dvd--cca1c02d55b9c4ad00df1af1.md) | 36 | `result-track:cca1c02d55b9c4ad00df1af14a8438a3899c51d493808def1a35f873e3f928fa` |
| 3 | `theorem` | [mem_ideal_span_X_image](../../../../mathematics/Algebra/Ideal/Variant43b62d1227c51d0fcdf1accf89b37cd4d013447c219a4ffcd6a712d1f8a4d0d9.lean/declarations/mem-ideal-span-x-image--7a56c4d735d372920656be0b.md) | 44 | `result-track:7a56c4d735d372920656be0b7d5a541477a5ebbeaa353922fe7e24796211e1e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
