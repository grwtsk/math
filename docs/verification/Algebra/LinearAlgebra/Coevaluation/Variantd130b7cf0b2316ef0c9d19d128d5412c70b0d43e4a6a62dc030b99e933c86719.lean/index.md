# Verification target: GRWTSK.Algebra.LinearAlgebra.Coevaluation.Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31b64ef5ce5f84cd850273d205821f7b9098314b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31b64ef5ce5f84cd850273d205821f7b9098314b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/declarations/coevaluation--cc67e22c9cf5dc7bcc7f2189.md) | 39 | `declaration-track:cc67e22c9cf5dc7bcc7f21891744cdb183c8f7045eb96a733cd79751dc90da31` |
| 2 | `theorem` | [coevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/declarations/coevaluation-apply-one--74b0bebe2d883edd5021a187.md) | 44 | `result-track:74b0bebe2d883edd5021a1877a30f5eafe9299a9210af75e1da495fc7d831ee8` |
| 3 | `theorem` | [contractLeft_assoc_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/declarations/contractleft-assoc-coevaluation--e5d4e7dd8ef1a799dc8b55d0.md) | 57 | `result-track:e5d4e7dd8ef1a799dc8b55d0d9360d9729f3574a662f474666f16126cd081b49` |
| 4 | `theorem` | [contractLeft_assoc_coevaluation'](../../../../../mathematics/Algebra/LinearAlgebra/Coevaluation/Variantd130b7cf0b2316ef0c9d19d128d5412c70b0d43e4a6a62dc030b99e933c86719.lean/declarations/contractleft-assoc-coevaluation--0a5edf5c4bc2ec544713924e.md) | 76 | `result-track:0a5edf5c4bc2ec544713924e99ac14d621a82441f74c42f46917651e37dd2ebd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
