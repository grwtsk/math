# Verification target: GRWTSK.NumberTheory.Basic.Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9`.

Source path: `GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSum](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum--d814374860ad4471f7454db3.md) | 55 | `declaration-track:d814374860ad4471f7454db30b149e0a37e623fef85f56409118f3fc9085f071` |
| 2 | `lemma` | [jacobiSum_comm](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-comm--6d0ce0499e226ac624913140.md) | 58 | `result-track:6d0ce0499e226ac624913140f88813c4a5ff255c61d32990b3e6be21788078be` |
| 3 | `lemma` | [jacobiSum_ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-ringhomcomp--5291639e0d67c64740961ede.md) | 64 | `result-track:5291639e0d67c64740961edebcfcc7766cdca5ef880b3a5f109c6d3d49e3eac2` |
| 4 | `lemma` | [jacobiSum_eq_sum_sdiff](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-eq-sum-sdiff--8173972538f216fb2f009e44.md) | 81 | `result-track:8173972538f216fb2f009e44502b79c840d5685b859a2e45718f911b3d70f52e` |
| 5 | `lemma` | [jacobiSum_eq_aux](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-eq-aux--0a32fac4b8902b21a695937e.md) | 89 | `result-track:0a32fac4b8902b21a695937e6f528052804336594516512b0e35097edf648207` |
| 6 | `theorem` | [jacobiSum_trivial_trivial](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-trivial-trivial--e926fb34f134f7085fca372c.md) | 111 | `result-track:e926fb34f134f7085fca372cd517c2968935e53bf985475ddeaed8b9b37ae70d` |
| 7 | `theorem` | [jacobiSum_one_one](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-one-one--7af1375ac410b67730bd399c.md) | 128 | `result-track:7af1375ac410b67730bd399cd3dfb2acb2475cf2e1318835602fe62cf8b184e6` |
| 8 | `theorem` | [jacobiSum_one_nontrivial](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-one-nontrivial--b812e915a2a00034313aa152.md) | 134 | `result-track:b812e915a2a00034313aa15271ea4f0266e8cdac4ad4c91bd20f1516819dcbb1` |
| 9 | `theorem` | [jacobiSum_nontrivial_inv](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-nontrivial-inv--1c993b29b8c2749e35b3d860.md) | 147 | `result-track:1c993b29b8c2749e35b3d86050371905deb38dccb3431ca5b645a500545b554c` |
| 10 | `theorem` | [jacobiSum_mul_nontrivial](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-mul-nontrivial--1ea73d30d6bf6eaf9a61b151.md) | 173 | `result-track:1ea73d30d6bf6eaf9a61b151349b0b9ba4b3bff5422d8dfc9649dfe0913fc29a` |
| 11 | `theorem` | [jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-eq-gausssum-mul-gausssum-div-gausssum--5008512271af389071da033a.md) | 201 | `result-track:5008512271af389071da033a4f44cde6a56c888d6a9c752459b448c28a3b1499` |
| 12 | `lemma` | [jacobiSum_mul_jacobiSum_inv](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-mul-jacobisum-inv--d5fa4c056020e96f1d9f6f5d.md) | 211 | `result-track:d5fa4c056020e96f1d9f6f5d29758680aed82d990a1df7e8e5db8f69a4f821e5` |
| 13 | `lemma` | [MulChar.exists_apply_sub_one_eq_mul_sub_one](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/mulchar-exists-apply-sub-one-eq-mul-sub-one--a0ca72ae39393c365028dad0.md) | 258 | `result-track:a0ca72ae39393c365028dad08767d7ebd15c5c6217f620fb97146c862a47c210` |
| 14 | `lemma` | [MulChar.exists_apply_sub_one_mul_apply_sub_one](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/mulchar-exists-apply-sub-one-mul-apply-sub-one--8bcb3c867378b7afc148dbaa.md) | 266 | `result-track:8bcb3c867378b7afc148dbaa1e527c114526533e0f21cee14fc843e89c28416a` |
| 15 | `lemma` | [jacobiSum_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/jacobisum-mem-algebraadjoin-of-pow-eq-one--d9b4b90b1ba1a9b7c4d4f07b.md) | 286 | `result-track:d9b4b90b1ba1a9b7c4d4f07b56a8211e4b461b5fcab5f3d1848edc49b6a29108` |
| 16 | `lemma` | [exists_jacobiSum_eq_neg_one_add](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/exists-jacobisum-eq-neg-one-add--a140c092e85c726cc75b4315.md) | 297 | `result-track:a140c092e85c726cc75b43151c9a5d0f13d1b2775ccd4d52e01b5328051412da` |
| 17 | `lemma` | [gaussSum_pow_eq_prod_jacobiSum_aux](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/gausssum-pow-eq-prod-jacobisum-aux--ede54faf80bcdecd0919b1db.md) | 332 | `result-track:ede54faf80bcdecd0919b1db7bb3d0abbd3472ac99a2768ef419464cf056a90a` |
| 18 | `theorem` | [gaussSum_pow_eq_prod_jacobiSum](../../../../mathematics/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/declarations/gausssum-pow-eq-prod-jacobisum--1957841069a679b9d7961b65.md) | 350 | `result-track:1957841069a679b9d7961b65d2236b4baa958a474b5ba46298aa5f98b55969e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
