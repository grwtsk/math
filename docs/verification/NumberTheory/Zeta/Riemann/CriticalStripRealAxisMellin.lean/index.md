# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.MellinTransform` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realFractionalKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/realfractionalkernel--84c5a73b2f192b105d42acd9.md) | 39 | `declaration-track:84c5a73b2f192b105d42acd9d6a07bd8c9ca92ac7d1b1edd6e04bf28b480d6de` |
| 2 | `def` | [fractionalKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalkernel--f2f8b169ce1d96f07ad7656f.md) | 43 | `declaration-track:f2f8b169ce1d96f07ad7656f271bfd8a94c2ed2cc11cc8889b7f9c26a87dda06` |
| 3 | `lemma` | [realFractionalKernel_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/realfractionalkernel-nonneg--523afc8193e301fec046aa68.md) | 45 | `result-track:523afc8193e301fec046aa68be882b4069952837dec8ff28e7525ac585522c7b` |
| 4 | `lemma` | [realFractionalKernel_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/realfractionalkernel-le-one--45f7af4203cd67957e35c0d7.md) | 51 | `result-track:45f7af4203cd67957e35c0d7de9cbc2454a0031a8670fa446e4cf9a7396f1a44` |
| 5 | `lemma` | [fractionalKernel_norm_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalkernel-norm-le-one--164b7a1ecc9f932794a9b6f4.md) | 58 | `result-track:164b7a1ecc9f932794a9b6f469aa4359fa31b6e0733622d779fc7a25a8b3591b` |
| 6 | `lemma` | [realFractionalKernel_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/realfractionalkernel-measurable--8a2f232ecb0bd59aaaf3329f.md) | 62 | `result-track:8a2f232ecb0bd59aaaf3329f2280845cbc4790499dbbc85616510e449821efcb` |
| 7 | `lemma` | [fractionalKernel_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalkernel-measurable--1b374ac5dcbedc5289830a3d.md) | 67 | `result-track:1b374ac5dcbedc5289830a3dd9f3a7c190e08e7aef86444c79028fd82d878e92` |
| 8 | `lemma` | [fractionalKernel_locallyIntegrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalkernel-locallyintegrable--38f3c5e3eb167db0a7139d2b.md) | 70 | `result-track:38f3c5e3eb167db0a7139d2b3ae4ecd808bc32dc47431931805184746f1f81d9` |
| 9 | `lemma` | [fractionalKernel_isBigO_top](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalkernel-isbigo-top--3f85e14391806685a8904058.md) | 77 | `result-track:3f85e14391806685a8904058acda580d15766d6aa43ddf2f4988243da9c4e113` |
| 10 | `lemma` | [fractionalKernel_isBigO_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalkernel-isbigo-zero--bd64ac408774ed6d643197cf.md) | 83 | `result-track:bd64ac408774ed6d643197cf27a5de4a6dc2317c02319593e8886b4786ec4b9b` |
| 11 | `def` | [fractionalMellin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalmellin--6cd050db6ba6827ebe3f57f3.md) | 91 | `declaration-track:6cd050db6ba6827ebe3f57f30b7891dfa2c726909b94c87dc40af3cd35a7375a` |
| 12 | `lemma` | [fractionalMellin_convergent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalmellin-convergent--d95345ed8cc6f73632fc4c05.md) | 93 | `result-track:d95345ed8cc6f73632fc4c05544438f9b8d2871994381af65bb02814ec54240a` |
| 13 | `lemma` | [fractionalMellin_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalmellin-differentiableat--54b11d447c3df506e4f29c8d.md) | 101 | `result-track:54b11d447c3df506e4f29c8d5db27dc94a7ae0d426272867a772e34fc26691e1` |
| 14 | `lemma` | [fractionalMellin_eq_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalmellin-eq-integral--1ab9423759ea7c947c9571e5.md) | 112 | `result-track:1ab9423759ea7c947c9571e52f4b3a2d3f39251283a0015c1a35de58b9d869dd` |
| 15 | `lemma` | [fractionalMellin_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalmellin-integrable--4e8174794c6800c005e543da.md) | 130 | `result-track:4e8174794c6800c005e543da34c259a1efd5f65a97a49108455140f4d7298eb5` |
| 16 | `lemma` | [complex_one_sum_Icc](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/complex-one-sum-icc--83a8a616e71834c408ff216c.md) | 144 | `result-track:83a8a616e71834c408ff216cf71c0ecbdc1943a5801e249aef3b82873251b18b` |
| 17 | `lemma` | [zeta_eq_floor_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/zeta-eq-floor-integral--30d219c3967ed8cd1c9d3c29.md) | 148 | `result-track:30d219c3967ed8cd1c9d3c299f29ff21805070ee5a572dcc999dbe357762f8fb` |
| 18 | `lemma` | [real_mul_cpow_sub_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/real-mul-cpow-sub-one--1071b639437923a790d917cd.md) | 161 | `result-track:1071b639437923a790d917cd370b888024decc7f3aab466a55c334323261c222` |
| 19 | `lemma` | [floor_integral_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/floor-integral-eq--a8a770457df07202827f9e85.md) | 170 | `result-track:a8a770457df07202827f9e850aca06515cbe954996f628b915a99370ccd60bbd` |
| 20 | `def` | [fractionalPoleModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalpolemodel--2817dc4589b2af6d196c124e.md) | 193 | `declaration-track:2817dc4589b2af6d196c124ef557a67187810a42dccfdd9ae757401ec05b82fa` |
| 21 | `lemma` | [fractionalPoleModel_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalpolemodel-differentiableat--a34de77b6fb734c437cfca13.md) | 195 | `result-track:a34de77b6fb734c437cfca13a1f577180df1cb0d405085e7c87bcbdd4ad25be4` |
| 22 | `lemma` | [poleNormalized_eq_fractional_of_one_lt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/polenormalized-eq-fractional-of-one-lt--3a663575dcc583ea792eca6e.md) | 200 | `result-track:3a663575dcc583ea792eca6edaaafa4580a666a7127b71ff6c86d7a8c1667cff` |
| 23 | `theorem` | [poleNormalized_eq_fractional](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/polenormalized-eq-fractional--492008814ee2adf61a7af006.md) | 209 | `result-track:492008814ee2adf61a7af0060ccb4df81983e794658fb445ada15f61bd99ff24` |
| 24 | `lemma` | [fractionalMellin_re_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/fractionalmellin-re-nonneg--983e724149aa588baec6c548.md) | 228 | `result-track:983e724149aa588baec6c5487a2d33a7d2c3aaa576db3b98b7ae8c6ffee54bc0` |
| 25 | `theorem` | [real_le_poleNormalized_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/real-le-polenormalized-re--613c29f9409c1fe21411e553.md) | 249 | `result-track:613c29f9409c1fe21411e553fc0a937a63846319648625e4e948af2c2a7af146` |
| 26 | `theorem` | [riemannZeta_re_neg_on_real_critical_interval](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/riemannzeta-re-neg-on-real-critical-interval--e8261e96835a4ebea2d2c575.md) | 262 | `result-track:e8261e96835a4ebea2d2c575909028c8977d406924a87a9270cde508d91a5a7a` |
| 27 | `theorem` | [nontrivialZetaZero_im_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/nontrivialzetazero-im-ne-zero--ba871ceadd1fdbc4464edba1.md) | 281 | `result-track:ba871ceadd1fdbc4464edba136f342e8cc161c8641e46b89415188cd28046a67` |
| 28 | `theorem` | [windowRH_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/windowrh-zero--b57218bc947b02fb911bebc0.md) | 293 | `result-track:b57218bc947b02fb911bebc04e444559fb1640e55f034851eb5442931a412ddd` |
| 29 | `theorem` | [rh_of_all_source_patch_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/declarations/rh-of-all-source-patch-covers--6fff50255820187ba84c0085.md) | 302 | `result-track:6fff50255820187ba84c0085bc37cd3a2a3154502131f78c784ea7994ced0eaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
