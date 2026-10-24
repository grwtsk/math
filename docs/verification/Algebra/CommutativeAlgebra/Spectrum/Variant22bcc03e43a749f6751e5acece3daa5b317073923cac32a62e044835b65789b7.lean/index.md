# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Spectrum.Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4439d8f32b67b87dd11590b5816e54cae85c1841",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4439d8f32b67b87dd11590b5816e54cae85c1841`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/macro-rules--aa103bba360c887d80004522.md) | 46 | `declaration-track:aa103bba360c887d80004522943d84f49e0ccc4706a88c1f5ced11121e414265` |
| 2 | `theorem` | [exists_mem_of_not_isUnit_aeval_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/exists-mem-of-not-isunit-aeval-prod--762c7a976dfcc8310d31e9a6.md) | 66 | `result-track:762c7a976dfcc8310d31e9a6c083cf0da2c241b5e19fc178a73297aa142453fa` |
| 3 | `theorem` | [subset_polynomial_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/subset-polynomial-aeval--461d537a803801438eb4eafe.md) | 93 | `result-track:461d537a803801438eb4eafe4b290d9a0d5f0254a6d5b127495ac113cd25091b` |
| 4 | `theorem` | [map_polynomial_aeval_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/map-polynomial-aeval-of-degree-pos--ae47c2fb5d9e0ae7336c93d2.md) | 109 | `result-track:ae47c2fb5d9e0ae7336c93d258b0abc1d44018db8b2d2b8742f801b031ee9ee2` |
| 5 | `theorem` | [map_polynomial_aeval_of_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/map-polynomial-aeval-of-nonempty--5372a8eeffebc7ea9c663080.md) | 132 | `result-track:5372a8eeffebc7ea9c6630802835e657ec03c0bca5442162e6d8c8f1a5459abd` |
| 6 | `theorem` | [pow_image_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/pow-image-subset--421b1c379a772a150e9a7857.md) | 141 | `result-track:421b1c379a772a150e9a785739ee5011c8a795f260ba6d21346a808f69fb7f8f` |
| 7 | `theorem` | [map_pow_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/map-pow-of-pos--924f1dbe876f676ec788811c.md) | 147 | `result-track:924f1dbe876f676ec788811c70b28d78deb326f0f4ea8dd227161ee72fd66deb` |
| 8 | `theorem` | [map_pow_of_nonempty](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/map-pow-of-nonempty--a4e80ae088f55eccfbb599b8.md) | 155 | `result-track:a4e80ae088f55eccfbb599b8cb889434315cd135e099bf03153b797ec6111b85` |
| 9 | `theorem` | [nonempty_of_isAlgClosed_of_finiteDimensional](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/declarations/nonempty-of-isalgclosed-of-finitedimensional--82f5043fb1757d66d4b96199.md) | 165 | `result-track:82f5043fb1757d66d4b96199ffc7d32fed0ff46416a3b72624248ac465cc6ad5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
