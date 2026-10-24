# Verification target: GRWTSK.Algebra.Ideal.Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832475cf07b0cfb5111a2af3dff36936ad610fb9",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832475cf07b0cfb5111a2af3dff36936ad610fb9`.

Source path: `GRWTSK/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonoidAlgebra.mem_ideal_span_of_image](../../../../mathematics/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean/declarations/monoidalgebra-mem-ideal-span-of-image--030046a1279e4faeff701d9f.md) | 22 | `result-track:030046a1279e4faeff701d9fe5939c56062d983a828b0bf5a5599e5ae1e79e72` |
| 2 | `theorem` | [AddMonoidAlgebra.mem_ideal_span_of'_image](../../../../mathematics/Algebra/Ideal/Variantd01981b66cadd867521b95dfdcabf21b7c5df2b4a9f69e6165008fc2babea771.lean/declarations/addmonoidalgebra-mem-ideal-span-of-image--7c6b762261646f88627f94d4.md) | 61 | `result-track:7c6b762261646f88627f94d474256c5b7d5a001e491034a10022029cff83fe6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
