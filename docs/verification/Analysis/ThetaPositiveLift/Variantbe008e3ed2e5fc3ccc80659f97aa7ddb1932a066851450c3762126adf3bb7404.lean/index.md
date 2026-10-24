# Verification target: GRWTSK.Analysis.ThetaPositiveLift.Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc224fb594014868358b33f4e79a0d3ef6989a21",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/index.md) · [Full source](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc224fb594014868358b33f4e79a0d3ef6989a21`.

Source path: `GRWTSK/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiInvolutionCompression` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotExistence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.PosDef` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiBaseMomentMagnitude_pos](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphibasemomentmagnitude-pos--8d239b7830b71bbab19a4255.md) | 43 | `result-track:8d239b7830b71bbab19a4255f4f470a2a6aa07ad9aa6652d1479775a57fcc605` |
| 2 | `theorem` | [thetaPhiBaseChristoffelMagnitude_pos](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphibasechristoffelmagnitude-pos--a8f69f419afe9ed99b95322e.md) | 60 | `result-track:a8f69f419afe9ed99b95322e39c23d062a1eb557d1c868c6af663c9e87547666` |
| 3 | `theorem` | [thetaPhiSignedMomentNode_injective](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentnode-injective--1555fe6f6d36fe9e9406267d.md) | 69 | `result-track:1555fe6f6d36fe9e9406267dcedc6b13e5ccb83d15cc900cdde469ba21af106e` |
| 4 | `theorem` | [thetaPhiSignedMomentKrylovPivot_submatrix_eq](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovpivot-submatrix-eq--766f8fca5de3206ea3e8a371.md) | 80 | `result-track:766f8fca5de3206ea3e8a3718b851090f80822171f0b2205fdaba5b7e350eeea` |
| 5 | `theorem` | [thetaPhiSignedMomentKrylovPivot_minor_ne_zero](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovpivot-minor-ne-zero--115cdc8ae5d6ec75a02824c9.md) | 103 | `result-track:115cdc8ae5d6ec75a02824c91d5607dda4fe26396e3d0359f321b1264e20d2d5` |
| 6 | `theorem` | [thetaPhiSignedMomentKrylovFrame_rank](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovframe-rank--08d7e723433c669b121ffc92.md) | 125 | `result-track:08d7e723433c669b121ffc921406d4f826c95fa2e7da52c3b2807f61da21890a` |
| 7 | `def` | [thetaPhiSignedMomentKrylovGram](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovgram--19bed70939293283e20ac9b0.md) | 137 | `declaration-track:19bed70939293283e20ac9b099d1744e0d5d34131003b12f424acb7fb0819696` |
| 8 | `theorem` | [thetaPhiSignedMomentKrylovGram_rank](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovgram-rank--ca8b0cba81b8edf18f900a9a.md) | 144 | `result-track:ca8b0cba81b8edf18f900a9a33151e334ad9cb63256a709efc87b35c54c25f62` |
| 9 | `theorem` | [thetaPhiSignedMomentKrylovGram_posSemidef](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovgram-possemidef--cfb9f0320d0ba0c17e18f3f8.md) | 154 | `result-track:cfb9f0320d0ba0c17e18f3f81a9c8874eb7c7921848a4db63d2286ace9ecf37d` |
| 10 | `theorem` | [thetaPhiSignedMomentKrylovGram_det_ne_zero](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovgram-det-ne-zero--b17c2b411e074cfad70e4bf9.md) | 163 | `result-track:b17c2b411e074cfad70e4bf9504b089ac8b443cd91dfecaedf4d6de8cc50b700` |
| 11 | `theorem` | [thetaPhiSignedMomentKrylovGram_posDef](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovgram-posdef--a4ef8417676e8e71b2fdcbde.md) | 186 | `result-track:a4ef8417676e8e71b2fdcbdebe0197d6079e26f37982e4e98806efc5d72f7e5c` |
| 12 | `theorem` | [thetaPhiSignedMomentKrylovGram_det_pos](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphisignedmomentkrylovgram-det-pos--6b24ca0b14632c7177ab5986.md) | 199 | `result-track:6b24ca0b14632c7177ab5986478c6576cb9b97e3716f609f709c98badd67e81c` |
| 13 | `theorem` | [thetaPhiNormalizedParityCompression_nonnegative_iff](../../../../mathematics/Analysis/ThetaPositiveLift/Variantbe008e3ed2e5fc3ccc80659f97aa7ddb1932a066851450c3762126adf3bb7404.lean/declarations/thetaphinormalizedparitycompression-nonnegative-iff--d214517862f4e7f4902a6ec8.md) | 209 | `result-track:d214517862f4e7f4902a6ec855e1247e08ecf7bc22e73de7ea4b10ae7abb9bd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
