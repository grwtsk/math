# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f798541bf5e0ba241e549814de0c11e01e77e56b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f798541bf5e0ba241e549814de0c11e01e77e56b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean.json)

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
| 1 | `lemma` | [LinearMap.ker_inf_smul_top_eq_smul_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/declarations/linearmap-ker-inf-smul-top-eq-smul-of-flat--eab167b5b197643828075aa6.md) | 34 | `result-track:eab167b5b197643828075aa67a83d76e5d4b1ddfbf04eb2667cd324cbd485559` |
| 2 | `lemma` | [comap_ker_eq_sup_of_ker_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/declarations/comap-ker-eq-sup-of-ker-eq-map--a07393cbc39378edce9eabdf.md) | 71 | `result-track:a07393cbc39378edce9eabdfa0baa4f8608593a77a41b24bf65934357fba3f88` |
| 3 | `lemma` | [mul_le_ker_of_range_le_mul_of_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/declarations/mul-le-ker-of-range-le-mul-of-sq-zero--16f491e3ff0db8f53d368df8.md) | 79 | `result-track:16f491e3ff0db8f53d368df87ef6f60aacdd4f2214d298d1b987ceb5c9219cb7` |
| 4 | `lemma` | [Algebra.FormallySmooth.of_surjective_of_ker_eq_map_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/declarations/algebra-formallysmooth-of-surjective-of-ker-eq-map-of-flat--8d7be337a07c3d579cc64f55.md) | 105 | `result-track:8d7be337a07c3d579cc64f5504d84b46d09d185750122924c85889b5ad9d9f00` |
| 5 | `lemma` | [RingHom.FormallySmooth.of_flat_of_ker_eq_map_of_square_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantb4e8bf0b82f3afa2f2d1ab37131f4c2f065555876b18d14216f81a854acb65c4.lean/declarations/ringhom-formallysmooth-of-flat-of-ker-eq-map-of-square-zero--c4b836c1409cf8613675440b.md) | 225 | `result-track:c4b836c1409cf8613675440b832939a9fb88385f833981c5ad102db476c5d134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
