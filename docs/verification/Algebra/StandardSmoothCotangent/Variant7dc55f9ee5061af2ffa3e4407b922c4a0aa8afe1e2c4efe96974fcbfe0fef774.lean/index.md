# Verification target: GRWTSK.Algebra.StandardSmoothCotangent.Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f9f30f25e73ad3865fa8950332f4424d469497b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/index.md) · [Full source](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f9f30f25e73ad3865fa8950332f4424d469497b`.

Source path: `GRWTSK/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.StandardSmooth` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Kaehler` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Etale.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cotangentComplexAux](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentcomplexaux--8850e0ba72ed0be52a3c1423.md) | 49 | `declaration-track:8850e0ba72ed0be52a3c14234e84621c8d7e4cd5497cd01caed83cc2b9bb76ce` |
| 2 | `lemma` | [cotangentComplexAux_apply](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentcomplexaux-apply--38e6ebfd216b5c4974d934c1.md) | 54 | `result-track:38e6ebfd216b5c4974d934c1759db6fa58708c1168ac7ca347b2af7fd142e2ef` |
| 3 | `lemma` | [cotangentComplexAux_zero_iff](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentcomplexaux-zero-iff--66380d76e12b11cffc478a70.md) | 62 | `result-track:66380d76e12b11cffc478a706288b9a7eb6ea62dac06256f8fa10b80ff2ac8b0` |
| 4 | `lemma` | [cotangentComplexAux_injective](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentcomplexaux-injective--d8139f4ff932dc434516b74f.md) | 74 | `result-track:d8139f4ff932dc434516b74f3f95c90980f406a8b69609fa861479d60c1e5fec` |
| 5 | `lemma` | [cotangentComplexAux_surjective](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentcomplexaux-surjective--e4e73583317c752d374a5c6f.md) | 111 | `result-track:e4e73583317c752d374a5c6f006c845a3d622e6b9477c14352187c5b6669dbed` |
| 6 | `def` | [cotangentEquiv](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentequiv--1155fdf6d9556bf8e83034d4.md) | 122 | `declaration-track:1155fdf6d9556bf8e83034d42f1a99b8c27bca561bee6aaadfa14417a132a770` |
| 7 | `lemma` | [cotangentComplex_injective](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/cotangentcomplex-injective--188d84c72ed458f13e0c315c.md) | 125 | `result-track:188d84c72ed458f13e0c315cc976e2e40eccbbcac69ff490bd136dad8a8f9c6f` |
| 8 | `instance` | [subsingleton_h1Cotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/subsingleton-h1cotangent--3a9b06d11744187cddc0ac59.md) | 132 | `declaration-track:3a9b06d11744187cddc0ac59c4dbbbc6062b1d5b8f915d9dbd002797d91e3be4` |
| 9 | `def` | [basisCotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/basiscotangent--ca3b508956c0996d701fba76.md) | 138 | `declaration-track:ca3b508956c0996d701fba764511c721c2368a7a151f4a030a0bf3945dfb802f` |
| 10 | `lemma` | [basisCotangent_apply](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/basiscotangent-apply--78195c1ff4cfa0db15b9848e.md) | 141 | `result-track:78195c1ff4cfa0db15b9848ebe53b1991e3ea4bcf3474bb19ee2ac7ac02fc804` |
| 11 | `instance` | [free_cotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/free-cotangent--5692b91fab9873c7a17f6419.md) | 150 | `declaration-track:5692b91fab9873c7a17f6419179cb499b2c54642433fbcdac04ea29090f7bee9` |
| 12 | `def` | [sectionCotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/sectioncotangent--cbffcbcce2e0fba830e9e0c2.md) | 160 | `declaration-track:cbffcbcce2e0fba830e9e0c2e1ad1d022d95c7f62c918356d54463bea222753f` |
| 13 | `lemma` | [sectionCotangent_eq_iff](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/sectioncotangent-eq-iff--3fa73c7098852f80d8aa6358.md) | 164 | `result-track:3fa73c7098852f80d8aa6358fff2b6eef10a1f491fcd414c3ec3cbe144ac53a0` |
| 14 | `lemma` | [sectionCotangent_comp](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/sectioncotangent-comp--c2cc61e1f0dbfcc8628b8ed2.md) | 171 | `result-track:c2cc61e1f0dbfcc8628b8ed270f2726a150b18cf70cce8b1905384468480b797` |
| 15 | `lemma` | [sectionCotangent_zero_of_notMem_range](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/sectioncotangent-zero-of-notmem-range--7548d4aa146064bd2e594ec4.md) | 179 | `result-track:7548d4aa146064bd2e594ec49f37ec28bb4c8e73f41b3a3df288bc67b2c947df` |
| 16 | `def` | [basisKaehlerOfIsCompl](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/basiskaehlerofiscompl--9dea9264792dfd6d60ff9c93.md) | 199 | `declaration-track:9dea9264792dfd6d60ff9c93b52330d0dbf226050efef6af73bdc414dc13264a` |
| 17 | `def` | [basisKaehler](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/basiskaehler--8e5e930901a8b295348e334b.md) | 220 | `declaration-track:8e5e930901a8b295348e334b5c92b95600e103608f13b62f55bc5c5e38581400` |
| 18 | `theorem` | [free_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/free-kaehlerdifferential--8c2d011b532cc170aaafbabb.md) | 228 | `result-track:8c2d011b532cc170aaafbabb10504c825c41b47e4ca52aac4545203bfd7c5af9` |
| 19 | `theorem` | [rank_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/rank-kaehlerdifferential--3dad98570c2e507397c186da.md) | 236 | `result-track:3dad98570c2e507397c186dad31d9e8e81968fa316f2f777da975cfd61d0f2b9` |
| 20 | `instance` | [IsStandardSmooth.free_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/isstandardsmooth-free-kaehlerdifferential--7666dda92e68541671195854.md) | 244 | `declaration-track:7666dda92e6854167119585444467146c6dbd02ab87f78301fe408637c68b333` |
| 21 | `instance` | [IsStandardSmooth.subsingleton_h1Cotangent](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/isstandardsmooth-subsingleton-h1cotangent--6f896da3e5266ec4372e03af.md) | 249 | `declaration-track:6f896da3e5266ec4372e03af46ae69de840a446c1a64c943c317140fa72e61c3` |
| 22 | `theorem` | [IsStandardSmoothOfRelativeDimension.rank_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/isstandardsmoothofrelativedimension-rank-kaehlerdifferential--79a5c427a790299ebbf719be.md) | 256 | `result-track:79a5c427a790299ebbf719bec3674884720231de41bb2b392345ef6f49a7d512` |
| 23 | `instance` | [IsStandardSmoothOfRelationDimension.subsingleton_kaehlerDifferential](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/isstandardsmoothofrelationdimension-subsingleton-kaehlerdifferential--ea50deb813669643c489d9b2.md) | 262 | `declaration-track:ea50deb813669643c489d9b2eb174e9c5d3e24d80e406de956dfcb73be1fa4ef` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/instance--c53b674192673a0ed6863e6a.md) | 274 | `declaration-track:c53b674192673a0ed6863e6ab9daa52ecbabbcf0a3eb542a82f70a97b23d12a0` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardSmoothCotangent/Variant7dc55f9ee5061af2ffa3e4407b922c4a0aa8afe1e2c4efe96974fcbfe0fef774.lean/declarations/instance--d32de0b291e1ab7758e17220.md) | 280 | `declaration-track:d32de0b291e1ab7758e172205d0de2f238b1845e8b448dcb45934895f1f01a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
