# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5db52add84b23e8474d2eb41be2bd66d7cd7a8a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5db52add84b23e8474d2eb41be2bd66d7cd7a8a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Eisenstein.Criterion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeaklyEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/isweaklyeisensteinat--29d110244d4c3f01bfd5828c.md) | 43 | `declaration-track:29d110244d4c3f01bfd5828c690fe526a8edb609c554ee611b96074e472660de` |
| 2 | `structure` | [IsEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/iseisensteinat--6850481fbf322d79c1ece77f.md) | 50 | `declaration-track:6850481fbf322d79c1ece77fbc927d7599f12702fd495967ed648fb71917ff7e` |
| 3 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/map--e4f67baae737b2290382dc12.md) | 61 | `result-track:e4f67baae737b2290382dc12bbc68143561e88212a0200652d5a4d794020b2fc` |
| 4 | `theorem` | [exists_mem_adjoin_mul_eq_pow_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/exists-mem-adjoin-mul-eq-pow-natdegree--c6b26c36829e5cde94221754.md) | 78 | `result-track:c6b26c36829e5cde942217544769560e705b43cc7e69dcf22f83d287b40833a3` |
| 5 | `theorem` | [exists_mem_adjoin_mul_eq_pow_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/exists-mem-adjoin-mul-eq-pow-natdegree-le--51c81d620445f01b55a78b6e.md) | 105 | `result-track:51c81d620445f01b55a78b6e66606a3cae8313b3b2952285ea513ad7803017ff` |
| 6 | `theorem` | [pow_natDegree_le_of_root_of_monic_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/pow-natdegree-le-of-root-of-monic-mem--d74e339b3607d2c3d361c195.md) | 121 | `result-track:d74e339b3607d2c3d361c19533b4b256788e7ab152a3aac095fe45f6818ade41` |
| 7 | `theorem` | [pow_natDegree_le_of_aeval_zero_of_monic_mem_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/pow-natdegree-le-of-aeval-zero-of-monic-mem-map--cb37fb85b96b0257f02809c1.md) | 134 | `result-track:cb37fb85b96b0257f02809c1dcefdecc234dde61b504828afff35daf502ed706` |
| 8 | `theorem` | [scaleRoots.isWeaklyEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/scaleroots-isweaklyeisensteinat--1af5a9ad11583c35b0b1c2b3.md) | 153 | `result-track:1af5a9ad11583c35b0b1c2b36de064a42049924c5687715551b815d4b41c099a` |
| 9 | `theorem` | [dvd_pow_natDegree_of_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/dvd-pow-natdegree-of-eval-eq-zero--e24931732573eed5a6d47901.md) | 160 | `result-track:e24931732573eed5a6d479011534d7bb728578ddb10699b8b6625edbcfdeb858` |
| 10 | `theorem` | [dvd_pow_natDegree_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/dvd-pow-natdegree-of-aeval-eq-zero--8d7f109df3b5c3c2c06b2e6b.md) | 172 | `result-track:8d7f109df3b5c3c2c06b2e6b2336917e6d04975dff106585219c93a10261edcc` |
| 11 | `theorem` | [_root_.Polynomial.Monic.leadingCoeff_notMem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/root-polynomial-monic-leadingcoeff-notmem--c1c0b0af892094081f57a17e.md) | 188 | `result-track:c1c0b0af892094081f57a17e8ccae7deffe756d34cc526e94220d8f6309f38e8` |
| 12 | `theorem` | [_root_.Polynomial.Monic.isEisensteinAt_of_mem_of_notMem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/root-polynomial-monic-iseisensteinat-of-mem-of-notmem--563d6f2839ea30e2bf30fec5.md) | 194 | `result-track:563d6f2839ea30e2bf30fec5ab5673c258af7abfdcd79d4723f541637ad6076a` |
| 13 | `theorem` | [isWeaklyEisensteinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/isweaklyeisensteinat--2da0f1180b5784c2d8f08238.md) | 205 | `result-track:2da0f1180b5784c2d8f08238247fa56c30acbc77486ac5bf9d1ea9bcc9937b5e` |
| 14 | `theorem` | [coeff_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/coeff-mem--3e77ee40b8d19e28fea4a9f2.md) | 208 | `result-track:3e77ee40b8d19e28fea4a9f2a4212cb95bc8db7ca51ee8f003af835a9bf85f7d` |
| 15 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/declarations/irreducible--c05bb8d246ccef89789cde7c.md) | 222 | `result-track:c05bb8d246ccef89789cde7c3dff6b6da9d86eee9de3564b2dde55b996558faa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
