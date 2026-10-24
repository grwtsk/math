# Verification target: GRWTSK.Algebra.Integral.Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24ca1b6eb3926c566fe749cd58cc094dbd5e2733",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24ca1b6eb3926c566fe749cd58cc094dbd5e2733`.

Source path: `GRWTSK/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIntegral_stableUnderComposition](../../../../mathematics/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/declarations/isintegral-stableundercomposition--cce9aca88611de99d447e9cd.md) | 30 | `result-track:cce9aca88611de99d447e9cd76e887cb1137777df05c983da1f1d43375544ca3` |
| 2 | `theorem` | [isIntegral_respectsIso](../../../../mathematics/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/declarations/isintegral-respectsiso--0bee6bd65f5386aeb67e8ec4.md) | 33 | `result-track:0bee6bd65f5386aeb67e8ec4bec636745386b48c33f5569b9ac5b78844d8e3e8` |
| 3 | `theorem` | [isIntegral_isStableUnderBaseChange](../../../../mathematics/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/declarations/isintegral-isstableunderbasechange--41d558a5ad91aeb995f0cce8.md) | 39 | `result-track:41d558a5ad91aeb995f0cce8dbd62ebc5a4293529260903ec891c0234f869c81` |
| 4 | `theorem` | [isIntegral_ofLocalizationSpan](../../../../mathematics/Algebra/Integral/Variant9cb9dc8ea05ecd6c48df5abbe49d3ceac83b757b64cc02d204fedb483120829d.lean/declarations/isintegral-oflocalizationspan--17380c55df7e7308b63ba73a.md) | 50 | `result-track:17380c55df7e7308b63ba73aed6487ae9a9bdf39ef27e4d6ee8ab6ea151485c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
