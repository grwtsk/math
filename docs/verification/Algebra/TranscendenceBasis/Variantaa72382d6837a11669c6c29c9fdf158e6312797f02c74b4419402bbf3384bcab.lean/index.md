# Verification target: GRWTSK.Algebra.TranscendenceBasis.Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8a521893a6cb8b186c4b879222c1e453b3645c3",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/index.md) · [Full source](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8a521893a6cb8b186c4b879222c1e453b3645c3`.

Source path: `GRWTSK/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.IndepAxioms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matroid.Rank.Cardinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Transcendental` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isTranscendenceBasis_superset](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/exists-istranscendencebasis-superset--eec6fb3c1003388c9e07b1ee.md) | 57 | `result-track:eec6fb3c1003388c9e07b1eeee90d934b56712d973f8aed899fc1fd64b8ca0d3` |
| 2 | `theorem` | [exists_isTranscendenceBasis](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/exists-istranscendencebasis--7955c880c4914b51c5b877b7.md) | 64 | `result-track:7955c880c4914b51c5b877b75a5b813287d5da44beff9c79e24a2486bd5ee782` |
| 3 | `theorem` | [exists_isTranscendenceBasis'](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/exists-istranscendencebasis--c2002ce26c92eeba24cc7dae.md) | 70 | `result-track:c2002ce26c92eeba24cc7dae17521d8482a972ff9e128c4b303ece75544c3d9a` |
| 4 | `theorem` | [trdeg_eq_iSup_cardinalMk_isTranscendenceBasis](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/trdeg-eq-isup-cardinalmk-istranscendencebasis--a1837d09c7e52b78043740a2.md) | 78 | `result-track:a1837d09c7e52b78043740a2282cf9f5b001f0951ee5147037528b469d4b10b7` |
| 5 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/algebraicindependent-istranscendencebasis-iff--51bfd160f8d0712170d6032a.md) | 87 | `result-track:51bfd160f8d0712170d6032a4e1ecf5b961d27d84510c0fe36518b0963149575` |
| 6 | `theorem` | [IsTranscendenceBasis.isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-isalgebraic--030c2ab704cdbd54fa490734.md) | 106 | `result-track:030c2ab704cdbd54fa4907345a573e709a61820ed3a42f62da6381ce4d2e3723` |
| 7 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff_isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/algebraicindependent-istranscendencebasis-iff-isalgebraic--f6c66216c89473bb8d255ff9.md) | 126 | `result-track:f6c66216c89473bb8d255ff951de3f205b357be0928703309e3460708dc2cb5e` |
| 8 | `theorem` | [isTranscendenceBasis_iff_algebraicIndependent_isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-iff-algebraicindependent-isalgebraic--aaf04ad4017bec83938747c0.md) | 137 | `result-track:aaf04ad4017bec83938747c0372209ab83fdda84746f696dcb288ff9670c3349` |
| 9 | `lemma` | [IsTranscendenceBasis.algebraMap_comp](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-algebramap-comp--6bf8be63285dc33ba2767de8.md) | 143 | `result-track:6bf8be63285dc33ba2767de870526ff3d01c17a8f593ae41aed05e28f602a1b7` |
| 10 | `lemma` | [IsTranscendenceBasis.isAlgebraic_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-isalgebraic-iff--0534cced48b0ac95fe3d9e0b.md) | 158 | `result-track:0534cced48b0ac95fe3d9e0b8d027e3f5f320fee9b183c4d2e7e68e391f333f3` |
| 11 | `theorem` | [IsTranscendenceBasis.mvPolynomial](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-mvpolynomial--44f20860c5a4a9b347ce83a6.md) | 177 | `result-track:44f20860c5a4a9b347ce83a638b11fd2b06328eb9a45c608bff641f8b89614a4` |
| 12 | `theorem` | [IsTranscendenceBasis.mvPolynomial'](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-mvpolynomial--20a9afe6e73774fe5e737a09.md) | 185 | `result-track:20a9afe6e73774fe5e737a09e0a7510f81a9902b8796ba68f1784a3e553a078a` |
| 13 | `theorem` | [IsTranscendenceBasis.polynomial](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-polynomial--e530792ba2d52d56eefd4300.md) | 188 | `result-track:e530792ba2d52d56eefd4300192630b7bf841854c43d58a5853e0db04ef7c79f` |
| 14 | `theorem` | [IsTranscendenceBasis.sumElim_comp](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-sumelim-comp--b327b7c9731fd3e983935b3a.md) | 199 | `result-track:b327b7c9731fd3e983935b3aff2cfd400c29925814680b8d6b4a053933fe146e` |
| 15 | `theorem` | [IsTranscendenceBasis.isEmpty_iff_isAlgebraic](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-isempty-iff-isalgebraic--0acc71b7d2715299efd1fdf4.md) | 229 | `result-track:0acc71b7d2715299efd1fdf49cbfb67d1dc2ab4f12a7d858dd5ee414003803eb` |
| 16 | `theorem` | [IsTranscendenceBasis.nonempty_iff_transcendental](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-nonempty-iff-transcendental--10b7ad356670537d9628d606.md) | 239 | `result-track:10b7ad356670537d9628d606ce8547fcd5b50770f504cf7013ad8637a9ee9686` |
| 17 | `theorem` | [IsTranscendenceBasis.isAlgebraic_field](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-isalgebraic-field--04554c7b9be6a81d56025738.md) | 244 | `result-track:04554c7b9be6a81d560257381c613034b51318c70a19765e5e6007cc6a76b430` |
| 18 | `def` | [indepMatroid](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/indepmatroid--2b9dae9f9bed938992bbfa1e.md) | 263 | `declaration-track:2b9dae9f9bed938992bbfa1ef603c8a269aae1d6df7c29feff7197e6b715f17b` |
| 19 | `def` | [matroid](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid--78e9c6c3510235b7bc49f6e1.md) | 288 | `declaration-track:78e9c6c3510235b7bc49f6e180e191bd1d379376475c408034da5bfe97e64544` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/instance--cb477bf71b8335d4fcf8a023.md) | 292 | `declaration-track:cb477bf71b8335d4fcf8a023181703036334c66bf53a63e7215df5307cb2159a` |
| 21 | `theorem` | [matroid_e](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-e--d5ff48f03efeb238115c830d.md) | 295 | `result-track:d5ff48f03efeb238115c830d42932aaf30acf24073245098ef6fbed9a91e6bdc` |
| 22 | `theorem` | [matroid_cRank_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-crank-eq--65b7a3a0cb50c49e5395a593.md) | 297 | `result-track:65b7a3a0cb50c49e5395a593fabf9862412bf878d17d0d7cf17abd4eab9c716b` |
| 23 | `theorem` | [matroid_indep_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-indep-iff--6eb4a4191d525b27667ffc8e.md) | 302 | `result-track:6eb4a4191d525b27667ffc8e63e6b4527b3a1d7d559b14d5e421c72d150d734a` |
| 24 | `theorem` | [matroid_isBase_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-isbase-iff--12f0df1ee38fe454e5782eb9.md) | 305 | `result-track:12f0df1ee38fe454e5782eb9eb5b2ce4d48f67d0b70edfbfb6e1bbe20c1fc49e` |
| 25 | `theorem` | [matroid_isBasis_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-isbasis-iff--296145dfbadd87c87f9bad03.md) | 312 | `result-track:296145dfbadd87c87f9bad0319803842397f4aa87060462a7ff6c9329d3e9e9f` |
| 26 | `theorem` | [matroid_isBasis_iff_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-isbasis-iff-of-subsingleton--d73253f404669278b9ed20eb.md) | 322 | `result-track:d73253f404669278b9ed20eb773f21550900544011202c95fad5cdc2efe57047` |
| 27 | `theorem` | [isAlgebraic_adjoin_iff_of_matroid_isBasis](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/isalgebraic-adjoin-iff-of-matroid-isbasis--bde975376c7978202e4cdb99.md) | 328 | `result-track:bde975376c7978202e4cdb99e34bc9b7ce35ba64a3806e33468353628ee151dd` |
| 28 | `theorem` | [matroid_closure_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-closure-eq--906ecb7da6f018a4805ba429.md) | 336 | `result-track:906ecb7da6f018a4805ba429d9a03750f35c0ff67109902f172292f4255bc869` |
| 29 | `theorem` | [matroid_isFlat_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-isflat-iff--2717f2749ebc9e7a0718b14b.md) | 345 | `result-track:2717f2749ebc9e7a0718b14b4a21a02504160be0249529ee830845d2be033eab` |
| 30 | `theorem` | [matroid_spanning_iff](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-spanning-iff--c6c83682b5afacf1f842c8b4.md) | 355 | `result-track:c6c83682b5afacf1f842c8b4cdfa5fa5174713c2f1d6f680a2b58a7bdfe5fd20` |
| 31 | `theorem` | [matroid_isFlat_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-isflat-of-subsingleton--91d17f2dd0fac0108e59c209.md) | 360 | `result-track:91d17f2dd0fac0108e59c2097815721290bb068defd354be2cc7baf6683e09c8` |
| 32 | `theorem` | [matroid_closure_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-closure-of-subsingleton--4245592ecab2557907ecdfb6.md) | 365 | `result-track:4245592ecab2557907ecdfb68045227c11c0c7b35503d9d0ec5958d149e4cc61` |
| 33 | `theorem` | [matroid_spanning_iff_of_subsingleton](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/matroid-spanning-iff-of-subsingleton--b40aa6d27ae58765feb1c597.md) | 370 | `result-track:b40aa6d27ae58765feb1c597abe6120639ddc96b4164a7c9652ad7b3a2daec55` |
| 34 | `theorem` | [exists_isTranscendenceBasis_between](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/exists-istranscendencebasis-between--6cdf916ebe38af6ed14b761c.md) | 385 | `result-track:6cdf916ebe38af6ed14b761c10ebebc851a2a7683e9a548d0a1c1db7636cce40` |
| 35 | `theorem` | [exists_isTranscendenceBasis_subset](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/exists-istranscendencebasis-subset--7dbc19ad0a68123d4dfdfda0.md) | 397 | `result-track:7dbc19ad0a68123d4dfdfda0f82e1ad7c00c88041901136b43320ade4e8aadcb` |
| 36 | `theorem` | [isAlgebraic_iff_exists_isTranscendenceBasis_subset](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/isalgebraic-iff-exists-istranscendencebasis-subset--3c332ca76840417ea1298774.md) | 404 | `result-track:3c332ca76840417ea129877467891eb5426f30a5afabb5781cb0f1219c056980` |
| 37 | `theorem` | [lift_cardinalMk_eq_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/lift-cardinalmk-eq-trdeg--ae78ee643427fc49140e5ab7.md) | 416 | `result-track:ae78ee643427fc49140e5ab72959a4915556d29950e815e5733beaabcb2d3e25` |
| 38 | `theorem` | [cardinalMk_eq_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/cardinalmk-eq-trdeg--ea4f19f866665d484afcb1ef.md) | 422 | `result-track:ea4f19f866665d484afcb1efe33c1c518862b1f0e441e70704847a4be5e216f4` |
| 39 | `theorem` | [lift_cardinalMk_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/lift-cardinalmk-eq--d2b49d18c3fbc8dd3e4079dc.md) | 429 | `result-track:d2b49d18c3fbc8dd3e4079dcd4392dc3e2dc3f7e6e703d8e74133c58d04feb04` |
| 40 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/cardinalmk-eq--0780551f27b2e9a0150c1b84.md) | 434 | `result-track:0780551f27b2e9a0150c1b84f707d4ef13856d6a61f9a9d71dc8f1054a404f43` |
| 41 | `theorem` | [MvPolynomial.trdeg_of_isDomain](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/mvpolynomial-trdeg-of-isdomain--c08bf9851b9c08f4c54b8f6a.md) | 443 | `result-track:c08bf9851b9c08f4c54b8f6a951ad99c409ff9b863002411434772a2ca47df80` |
| 42 | `theorem` | [Polynomial.trdeg_of_isDomain](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/polynomial-trdeg-of-isdomain--b216b6313d3d655cf7ec0978.md) | 449 | `result-track:b216b6313d3d655cf7ec09784c0d9e18298d47e4b1d4479e7e0b04f327b599bf` |
| 43 | `theorem` | [trdeg_lt_aleph0](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/trdeg-lt-aleph0--6fa17b95348de96d9ab8c5d3.md) | 453 | `result-track:6fa17b95348de96d9ab8c5d3484fb4b8ad50bd7a6e9a47aafc77030adab40e5b` |
| 44 | `lemma` | [isDomain_of_adjoin_range](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/isdomain-of-adjoin-range--00236c6c08c8e8bc104a200a.md) | 464 | `result-track:00236c6c08c8e8bc104a200ac30bd3ae5e1df9cae402eb96e29a409519e342a2` |
| 45 | `theorem` | [trdeg_le_cardinalMk](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/trdeg-le-cardinalmk--4c9feb13f05b37ff3b5ee483.md) | 469 | `result-track:4c9feb13f05b37ff3b5ee483d32299fddbc93357b572f4071fdb83f941e8ad4e` |
| 46 | `theorem` | [isTranscendenceBasis_of_lift_le_trdeg_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-lift-le-trdeg-of-finite--26ba6b27ed562e35b057064f.md) | 479 | `result-track:26ba6b27ed562e35b057064f1d7dfc7ab210374a5c90c5e97d11eb253d27620f` |
| 47 | `theorem` | [isTranscendenceBasis_of_le_trdeg_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-le-trdeg-of-finite--08b67e6771c5a8c86d18f68f.md) | 489 | `result-track:08b67e6771c5a8c86d18f68fe387963fda009275db9ce5178a823f5b0b23a291` |
| 48 | `theorem` | [isTranscendenceBasis_of_lift_le_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-lift-le-trdeg--2ad75aa6ca5678cfe562b3a6.md) | 494 | `result-track:2ad75aa6ca5678cfe562b3a6b2d2d3017a071292d50caba56f004ab9fb6cce81` |
| 49 | `theorem` | [isTranscendenceBasis_of_le_trdeg](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-le-trdeg--56e2a7ec2b90e5513552588d.md) | 500 | `result-track:56e2a7ec2b90e5513552588df79aa79d85839a1d31239f65c8145ad2b2282959` |
| 50 | `theorem` | [isTranscendenceBasis_of_lift_trdeg_le](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-lift-trdeg-le--2d3b6e8c5d2fb4a5b480e7e1.md) | 511 | `result-track:2d3b6e8c5d2fb4a5b480e7e1cc2105e2ea35ff66127f0bddb23dadfec1961c90` |
| 51 | `theorem` | [isTranscendenceBasis_of_trdeg_le](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-trdeg-le--8a4933290607874bd2a42a84.md) | 520 | `result-track:8a4933290607874bd2a42a844f1e38103fb5820094a9577a10e472cee4c8520f` |
| 52 | `theorem` | [isTranscendenceBasis_of_lift_trdeg_le_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-lift-trdeg-le-of-finite--b62f3ed0780f1a395717833c.md) | 524 | `result-track:b62f3ed0780f1a395717833cfea90eb9338daf62f76d90a21e11782dd76e3442` |
| 53 | `theorem` | [isTranscendenceBasis_of_trdeg_le_of_finite](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/istranscendencebasis-of-trdeg-le-of-finite--f38216dbd2d2b3513312eb55.md) | 529 | `result-track:f38216dbd2d2b3513312eb557be17ad5aa32d00dbe597bbb6d5618d79029ec0e` |
| 54 | `theorem` | [lift_trdeg_add_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/lift-trdeg-add-eq--32b0cbf39c98158160c22eee.md) | 537 | `result-track:32b0cbf39c98158160c22eee105d1f0555ac6ab1c21af8bdadfeceba87c8c9da` |
| 55 | `theorem` | [trdeg_add_eq](../../../../mathematics/Algebra/TranscendenceBasis/Variantaa72382d6837a11669c6c29c9fdf158e6312797f02c74b4419402bbf3384bcab.lean/declarations/trdeg-add-eq--5acdc8a62baec3c0eb01b397.md) | 546 | `result-track:5acdc8a62baec3c0eb01b397f589d8f712a7fc6ae27d0ed84f45561fc2430c17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
