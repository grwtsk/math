# Verification target: GRWTSK.Geometry.AlgebraicGeometry.QuasiCompact.Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0089e9863bc5f1bbe575d893ef51e48d00cd625",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0089e9863bc5f1bbe575d893ef51e48d00cd625`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact--4af036e9d0f67acae96a521d.md) | 47 | `declaration-track:4af036e9d0f67acae96a521d06165d4cd80cf2b5ab6f92873df60160878d965a` |
| 2 | `theorem` | [quasiCompact_iff_spectral](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-iff-spectral--cc346303875ce58209bede93.md) | 51 | `result-track:cc346303875ce58209bede9342c972b6ca8772fa603f5c3b32a49a1e428171ba` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/instance--ddee7b76a933991b6d5278f3.md) | 54 | `declaration-track:ddee7b76a933991b6d5278f3cf25abe9683e68f15bb7f6466c2110824605faa6` |
| 4 | `instance` | [quasiCompact_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-comp--dd4de756a167a4d63ac24b5b.md) | 64 | `declaration-track:dd4de756a167a4d63ac24b5b1679186700c1f6cfa5a1fea62480e1327f0305d2` |
| 5 | `theorem` | [isCompactOpen_iff_eq_finset_affine_union](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/iscompactopen-iff-eq-finset-affine-union--83703c89ca445a4a42871920.md) | 73 | `result-track:83703c89ca445a4a42871920c9c8f3062764e68c2c7b27e751b9eaf0d908a789` |
| 6 | `theorem` | [isCompactOpen_iff_eq_basicOpen_union](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/iscompactopen-iff-eq-basicopen-union--0113a805d9e947502079d862.md) | 80 | `result-track:0113a805d9e947502079d8620c97cfd963845fc8b923e561c02f87b981c1e13c` |
| 7 | `theorem` | [quasiCompact_iff_forall_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-iff-forall-affine--2acccf8a1b5ffdd4b67cdaaa.md) | 86 | `result-track:2acccf8a1b5ffdd4b67cdaaae04d45642474ebf0b6d32ee92873ff30f1c37c42` |
| 8 | `theorem` | [isCompact_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/iscompact-basicopen--d61675e51693a25f8afe36ef.md) | 96 | `result-track:d61675e51693a25f8afe36ef84e08ea356d9ac7d11d41895bae9b41f1065c7a3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/instance--74c9fa6a185d21650ad002af.md) | 127 | `declaration-track:74c9fa6a185d21650ad002af7a667c17241c336ff40a7c0cde69fbbfd5268586` |
| 10 | `theorem` | [quasiCompact_over_affine_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-over-affine-iff--0bbdf424746e487f23449f5f.md) | 154 | `result-track:0bbdf424746e487f23449f5f43a6745fd38971c773fbc34b45eabb5f2449215a` |
| 11 | `theorem` | [compactSpace_iff_quasiCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/compactspace-iff-quasicompact--41bf3e899e8482748273ce4b.md) | 158 | `result-track:41bf3e899e8482748273ce4bf1186a76261c7c6ef87ca35182ee1f4c4c8f2a9b` |
| 12 | `lemma` | [QuasiCompact.compactSpace_of_compactSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-compactspace-of-compactspace--821357c5313fdf617f05da85.md) | 162 | `result-track:821357c5313fdf617f05da85dc40f57ae1a6b80234448804f6b4fce0f23b3998` |
| 13 | `instance` | [quasiCompact_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-isstableundercomposition--7eeb5c1c7c29803d05f1d2af.md) | 168 | `declaration-track:7eeb5c1c7c29803d05f1d2afd32865d7f1bd4674739fa783c942dade0fbe67e7` |
| 14 | `instance` | [quasiCompact_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/quasicompact-isstableunderbasechange--a3b758dfc243ddfacffbae7c.md) | 172 | `declaration-track:a3b758dfc243ddfacffbae7c1debaa971afa82a4d5433451fe13467a97d23fed` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/instance--f03c7a17aa8c49403c092e46.md) | 185 | `declaration-track:f03c7a17aa8c49403c092e46c5e9dfd4d94c4b9ca3b5bc02ac1d6c9c35a564f5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/instance--9d529e461b74bfaa4f32d792.md) | 188 | `declaration-track:9d529e461b74bfaa4f32d792fd733dcdb3d9997ee1318d85834316bd6b9c0519` |
| 17 | `lemma` | [compactSpace_iff_exists](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/compactspace-iff-exists--5cfd5678167d20691b372ee6.md) | 191 | `result-track:5cfd5678167d20691b372ee60bb24eca5dbc5df6ab987680677fad0bd693514b` |
| 18 | `lemma` | [isCompact_iff_exists](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/iscompact-iff-exists--55ddc90003775d64249076d3.md) | 202 | `result-track:55ddc90003775d64249076d38971c5a28f507cccf4e89317dbba03378975e429` |
| 19 | `lemma` | [isClosedMap_iff_specializingMap](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/isclosedmap-iff-specializingmap--40320b5ffc9bafbf767530f0.md) | 213 | `result-track:40320b5ffc9bafbf767530f0934bf2c43e2a7efa6f0d32250091a24d897b0c5f` |
| 20 | `theorem` | [compact_open_induction_on](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/compact-open-induction-on--90c4f566033eb2968b8bbe48.md) | 242 | `result-track:90c4f566033eb2968b8bbe48890ef6f1ef8029315d963f1e9e1d768c00d11170` |
| 21 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-isaffineopen--5290ecb9747c1c07b4c7d360.md) | 260 | `result-track:5290ecb9747c1c07b4c7d3608ce7b5bce0677c4f53205531f4eab4a63bb6420d` |
| 22 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact--fe7cbd9086d6cf9b50607e35.md) | 277 | `result-track:fe7cbd9086d6cf9b50607e355f3a293eba53e1e9ee838ab40aab4b54d3a32641` |
| 23 | `lemma` | [Scheme.isNilpotent_iff_basicOpen_eq_bot_of_isCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/scheme-isnilpotent-iff-basicopen-eq-bot-of-iscompact--21dcd18925c925a48424941a.md) | 323 | `result-track:21dcd18925c925a48424941af7e17433fae929c1152986d1d53857792b4cf476` |
| 24 | `lemma` | [Scheme.isNilpotent_iff_basicOpen_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/scheme-isnilpotent-iff-basicopen-eq-bot--c5cbe167fc31fe15b34b9c78.md) | 341 | `result-track:c5cbe167fc31fe15b34b9c78858263ab424334a9380ada7931b26fd386324149` |
| 25 | `lemma` | [Scheme.zeroLocus_eq_univ_iff_subset_nilradical_of_isCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/scheme-zerolocus-eq-univ-iff-subset-nilradical-of-iscompact--70b50c3abeb25e346044d845.md) | 348 | `result-track:70b50c3abeb25e346044d84582139340a9eba4d9c6052410318d18939bde292a` |
| 26 | `lemma` | [Scheme.zeroLocus_eq_univ_iff_subset_nilradical](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variant4123a032bafec846abd7f4d993e50de3d0db60c8303adf95ead91de5eb077732.lean/declarations/scheme-zerolocus-eq-univ-iff-subset-nilradical--3172959f193ead470e05adc9.md) | 356 | `result-track:3172959f193ead470e05adc9fb5730899463eb719eb2d7e2e073d9c86e9b8c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
