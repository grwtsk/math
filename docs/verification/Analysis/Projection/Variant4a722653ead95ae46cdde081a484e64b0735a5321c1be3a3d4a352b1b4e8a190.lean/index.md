# Verification target: GRWTSK.Analysis.Projection.Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da150fb874877b119b2d55bfe253efa53d31afa4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/index.md) · [Full source](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da150fb874877b119b2d55bfe253efa53d31afa4`.

Source path: `GRWTSK/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Projection` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isStarProjection_iff_quasispectrum_subset_and_isSelfAdjoint](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/isstarprojection-iff-quasispectrum-subset-and-isselfadjoint--bcf3a4edc220d5887db203c1.md) | 38 | `result-track:bcf3a4edc220d5887db203c182722eab19dcf702e9409a0c1f3dddde2a09b78b` |
| 2 | `theorem` | [IsIdempotentElem.isSelfAdjoint_iff_isStarNormal](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/isidempotentelem-isselfadjoint-iff-isstarnormal--16de33cd85f59f6eac2f58e2.md) | 49 | `result-track:16de33cd85f59f6eac2f58e201330bb96fb8487a6718f750cc27e7abb20e0b08` |
| 3 | `theorem` | [isStarProjection_iff_isIdempotentElem_and_isStarNormal](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/isstarprojection-iff-isidempotentelem-and-isstarnormal--26618ac25bc9d228e9a4487e.md) | 58 | `result-track:26618ac25bc9d228e9a4487e6ac4c62d5e982aed78ae5001754789772d519a85` |
| 4 | `theorem` | [isStarProjection_iff_quasispectrum_subset_and_isStarNormal](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/isstarprojection-iff-quasispectrum-subset-and-isstarnormal--7501abdf08f621b760817f5f.md) | 62 | `result-track:7501abdf08f621b760817f5f13f39f08bcfc56e3a9a70a31dcf7e5dab18fd96f` |
| 5 | `lemma` | [isStarProjection_iff_spectrum_subset_and_isSelfAdjoint](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/isstarprojection-iff-spectrum-subset-and-isselfadjoint--260ba3f963ebb2f22779a6c6.md) | 73 | `result-track:260ba3f963ebb2f22779a6c67cc6d798ef07b5418baebabc567519ad587342c0` |
| 6 | `theorem` | [isStarProjection_iff_spectrum_subset_and_isStarNormal](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/isstarprojection-iff-spectrum-subset-and-isstarnormal--1661bf7241f6f98f137d25b5.md) | 79 | `result-track:1661bf7241f6f98f137d25b54875dc3621262e0f573db9e823696c25c9591d04` |
| 7 | `lemma` | [le_tfae](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/le-tfae--63d66ed3463561a380a4904a.md) | 92 | `result-track:63d66ed3463561a380a4904aa4413d84574ed6a93a04b19ee6ab40197255f650` |
| 8 | `lemma` | [le_iff_mul_eq_right](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/le-iff-mul-eq-right--e8ce597b9f86e9a7d03d86ee.md) | 107 | `result-track:e8ce597b9f86e9a7d03d86eef1ee4856e2dda572fd93f0ed410a5d7563d9f106` |
| 9 | `lemma` | [le_iff_mul_eq_left](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/le-iff-mul-eq-left--3f96ac75cb15a897d4ce63cf.md) | 111 | `result-track:3f96ac75cb15a897d4ce63cfd6892c5d8075d6dfe14ccc954e7420b1986b01b8` |
| 10 | `lemma` | [le_iff_sub](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/le-iff-sub--3cd313787214285491be25ee.md) | 115 | `result-track:3cd313787214285491be25ee90e28aab68819a11575dc0674d04fffd44245d57` |
| 11 | `lemma` | [le_iff_idempotent_sub](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/le-iff-idempotent-sub--26b03fc60903db08b09aa39f.md) | 119 | `result-track:26b03fc60903db08b09aa39f1db22000daed767796dfc53fbc1105f346bd0dbf` |
| 12 | `lemma` | [commute_of_le](../../../../mathematics/Analysis/Projection/Variant4a722653ead95ae46cdde081a484e64b0735a5321c1be3a3d4a352b1b4e8a190.lean/declarations/commute-of-le--e492462f40ca99ddabb49ca5.md) | 123 | `result-track:e492462f40ca99ddabb49ca5c19693c3219354209963db77474441e6691a29c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
