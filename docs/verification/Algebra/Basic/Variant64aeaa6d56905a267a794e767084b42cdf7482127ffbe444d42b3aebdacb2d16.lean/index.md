# Verification target: GRWTSK.Algebra.Basic.Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "076cd7506f3991fcbc5b42c7dd21d290705b027f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `076cd7506f3991fcbc5b42c7dd21d290705b027f`.

Source path: `GRWTSK/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Expand` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Subalgebra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RingHom.isIntegralElem_map](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/ringhom-isintegralelem-map--630a1f566305df55173fca87.md) | 34 | `result-track:630a1f566305df55173fca87075017dace98f9453e36a97aed2ec9d6250f1c8a` |
| 2 | `theorem` | [isIntegral_algebraMap](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-algebramap--dfaf0b7f4a410e79168f78dd.md) | 37 | `result-track:dfaf0b7f4a410e79168f78ddfef11b19bb2a04dca9076d6d8bcf15cfce9480c3` |
| 3 | `theorem` | [IsIntegral.map](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-map--4a4e992faba66215361de357.md) | 48 | `result-track:4a4e992faba66215361de357a4884be77a44b246e36a26734a65674113881059` |
| 4 | `theorem` | [isIntegral_algHom_iff](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-alghom-iff--08adf9b6ba468294018e297b.md) | 61 | `result-track:08adf9b6ba468294018e297b2965e3d664bd1f1b06d1835d646d5f408e488e95` |
| 5 | `theorem` | [Submodule.span_range_natDegree_eq_adjoin](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/submodule-span-range-natdegree-eq-adjoin--6ed78734cb1a9a03c01c799d.md) | 70 | `result-track:6ed78734cb1a9a03c01c799dab658a97cd78283b41cec7f0360756538a9bb339` |
| 6 | `theorem` | [IsIntegral.fg_adjoin_singleton](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-fg-adjoin-singleton--7ba36e2c8039cd2a5ad10da2.md) | 88 | `result-track:7ba36e2c8039cd2a5ad10da26a0c25dee59f2dc10b92d7df595d3690018fa855` |
| 7 | `theorem` | [RingHom.isIntegralElem_zero](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/ringhom-isintegralelem-zero--30bcdcdc7a5fdf696444c4f7.md) | 97 | `result-track:30bcdcdc7a5fdf696444c4f7ccf15b783ab33df00eb699ddc7f007af0baa51c3` |
| 8 | `theorem` | [isIntegral_zero](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-zero--d1e7f6c0567406535b6c20b6.md) | 100 | `result-track:d1e7f6c0567406535b6c20b696775a23ddfb19801633314fd54adf00b0e45abf` |
| 9 | `theorem` | [RingHom.isIntegralElem_one](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/ringhom-isintegralelem-one--c61f2609140ac9ca09f29f11.md) | 103 | `result-track:c61f2609140ac9ca09f29f112f80cb32ccef15cd9bb115b3508a070e0cb79fc4` |
| 10 | `theorem` | [isIntegral_one](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-one--e192d3718533a1641bbc774e.md) | 106 | `result-track:e192d3718533a1641bbc774e7d7a496eedc6632e8dc39f1b8022f3d85cde8795` |
| 11 | `theorem` | [IsIntegral.of_pow](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-of-pow--948e11b5f1b511dcb84e46ab.md) | 111 | `result-track:948e11b5f1b511dcb84e46ab354c218a3c10947e04d831ed4790a2bc564d4f29` |
| 12 | `theorem` | [IsIntegral.of_aeval_monic](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-of-aeval-monic--e04854c4068ec300219a7955.md) | 116 | `result-track:e04854c4068ec300219a79558a9390321142ef66b761c2121dceb923ecd09e0a` |
| 13 | `theorem` | [IsIntegral.map_of_comp_eq](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-map-of-comp-eq--a6a08b0e89fed6e9dce81450.md) | 129 | `result-track:a6a08b0e89fed6e9dce81450668afa78ca5b9b67c5debe080eb37c18c1235eae` |
| 14 | `theorem` | [isIntegral_algEquiv](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-algequiv--127d70b1248375e9ee56de9d.md) | 138 | `result-track:127d70b1248375e9ee56de9d62177e1e2f7e68e2a525dd2999d67936f80f83f7` |
| 15 | `theorem` | [IsIntegral.tower_top](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-tower-top--8b685595ef0f68197d44db29.md) | 144 | `result-track:8b685595ef0f68197d44db29d2b60a45f418054ccf09fda3d91e1bbc057141cd` |
| 16 | `theorem` | [RingEquiv.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/ringequiv-isintegral-iff--8f40b84b471c6ad8e762fdce.md) | 152 | `result-track:8f40b84b471c6ad8e762fdce5637be6afbab76b2752af7627f5c43bea2344f0a` |
| 17 | `theorem` | [map_isIntegral_int](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/map-isintegral-int--adc348636e171929a66b57ed.md) | 169 | `result-track:adc348636e171929a66b57ed9d800417aebc8417375c023e5b909104526b5082` |
| 18 | `theorem` | [IsIntegral.of_subring](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-of-subring--24c515dfc4a492e79169e4ab.md) | 174 | `result-track:24c515dfc4a492e79169e4abd810a0893a1d0f02fe9f0a7de3dcfd7c397646fc` |
| 19 | `theorem` | [IsIntegral.algebraMap](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-algebramap--17048b5a50e58b52c8e23d15.md) | 177 | `result-track:17048b5a50e58b52c8e23d15511152cb7c19c366334c26d65279dd94349fd35b` |
| 20 | `theorem` | [isIntegral_algebraMap_iff](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-algebramap-iff--a1f3753af04ee29a7d2f08c4.md) | 183 | `result-track:a1f3753af04ee29a7d2f08c46d9ef915643ddfbd2d15236f505b3eaed25185c3` |
| 21 | `theorem` | [isIntegral_iff_isIntegral_closure_finite](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-iff-isintegral-closure-finite--a6357e5ffc6155da7ec493cc.md) | 188 | `result-track:a6357e5ffc6155da7ec493cc926520814744f2ecfbee55defc9e199bacc983bf` |
| 22 | `theorem` | [fg_adjoin_of_finite](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/fg-adjoin-of-finite--8081c15c18073d524ee9ed06.md) | 198 | `result-track:8081c15c18073d524ee9ed06de3d221c2df8e1f88742f8e3daa0d0af3a71a027` |
| 23 | `theorem` | [Algebra.finite_adjoin_of_finite_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/algebra-finite-adjoin-of-finite-of-isintegral--d7ae248b97fcc8b65bb98654.md) | 210 | `result-track:d7ae248b97fcc8b65bb9865413eb38ab374257efb2732829c2d71e4089f9fb10` |
| 24 | `theorem` | [Algebra.finite_adjoin_simple_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/algebra-finite-adjoin-simple-of-isintegral--9ce56cdfc1347a559de0a25e.md) | 214 | `result-track:9ce56cdfc1347a559de0a25ea545875f69ac55432cf14b018a3c4b54b50e7f41` |
| 25 | `theorem` | [isNoetherian_adjoin_finset](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isnoetherian-adjoin-finset--a9a0397aad04cff1f9a4b39c.md) | 218 | `result-track:a9a0397aad04cff1f9a4b39c91a73981ab6f6085ebab31b95f9c377637046682` |
| 26 | `theorem` | [IsIntegral.pair](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-pair--b2637031cb645e47521a79f9.md) | 230 | `result-track:b2637031cb645e47521a79f9a10bf1698d6f76f9fcc6346a43ed85a7125ef882` |
| 27 | `theorem` | [IsIntegral.pair_iff](../../../../mathematics/Algebra/Basic/Variant64aeaa6d56905a267a794e767084b42cdf7482127ffbe444d42b3aebdacb2d16.lean/declarations/isintegral-pair-iff--6d01dfd4df4230af70a836e0.md) | 240 | `result-track:6d01dfd4df4230af70a836e0b7a142c6e04c728cef0eb5906e596ec85b8a5b27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
