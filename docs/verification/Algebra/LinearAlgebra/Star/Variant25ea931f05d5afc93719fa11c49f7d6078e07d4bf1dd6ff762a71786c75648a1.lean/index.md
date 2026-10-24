# Verification target: GRWTSK.Algebra.LinearAlgebra.Star.Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0646f618c017fbdfa2826808f3dc06916228eea6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0646f618c017fbdfa2826808f3dc06916228eea6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean.json)

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
| 1 | `lemma` | [LinearMap.isSymm_iff_basis](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/declarations/linearmap-issymm-iff-basis--fec4ab8baf00f1344e1acc2c.md) | 33 | `result-track:fec4ab8baf00f1344e1acc2c950fe929d2abe025c9a86578b4237c7d23619b5c` |
| 2 | `lemma` | [LinearMap.isSymm_iff_isHermitian_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/declarations/linearmap-issymm-iff-ishermitian-tomatrix--7f99a8f532089dadebf61c43.md) | 52 | `result-track:7f99a8f532089dadebf61c43dc044736dc93d8d4089ebe6c303be3099ba2b574` |
| 3 | `lemma` | [star_dotProduct_toMatrix₂_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/declarations/star-dotproduct-tomatrix-mulvec--203ca322849723dbdbe6bac3.md) | 56 | `result-track:203ca322849723dbdbe6bac36d8d1a095156cc1e0cdc510f42a71328c153d2f1` |
| 4 | `lemma` | [apply_eq_star_dotProduct_toMatrix₂_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/declarations/apply-eq-star-dotproduct-tomatrix-mulvec--27581c579fe5bb76b951d4b2.md) | 60 | `result-track:27581c579fe5bb76b951d4b27ac6fc894b1d26bacf462bbf187f8d7a3728625e` |
| 5 | `lemma` | [LinearMap.isPosSemidef_iff_posSemidef_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant25ea931f05d5afc93719fa11c49f7d6078e07d4bf1dd6ff762a71786c75648a1.lean/declarations/linearmap-ispossemidef-iff-possemidef-tomatrix--9674d12bb8329cb3985a24da.md) | 67 | `result-track:9674d12bb8329cb3985a24dac38acbe685352d4a3e7ab6aefeca555bb1f64725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
