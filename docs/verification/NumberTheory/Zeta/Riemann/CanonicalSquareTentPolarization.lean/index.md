# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fced6fc958031623daec748c60b17295d92b552",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fced6fc958031623daec748c60b17295d92b552`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Combination](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/combination--ca148c9c1a7c774d1d725308.md) | 48 | `declaration-track:ca148c9c1a7c774d1d7253081d6c12f842bfcf722069f6ec8e106a61284abecf` |
| 2 | `def` | [polarizedSourceBinding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/polarizedsourcebinding--990506d7dd28b68d12043578.md) | 51 | `declaration-track:990506d7dd28b68d120435782e4d5cb88e30b0afbb1f868f4124c0bbe34d6824` |
| 3 | `def` | [basisTest](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/basistest--d6269386b52d04a2c2cafb78.md) | 55 | `declaration-track:d6269386b52d04a2c2cafb78e6c50e5b4f78090f9f93a1804e84a9b1b84c2e92` |
| 4 | `theorem` | [squareWeight_mul_eq_zero_of_ne](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/squareweight-mul-eq-zero-of-ne--f73a4abd2c1b96d8fb65fa12.md) | 61 | `result-track:f73a4abd2c1b96d8fb65fa12796cac545c66a526ac900cad5842758719d94bec` |
| 5 | `theorem` | [squareRootWeight_mul_eq_zero_of_ne](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/squarerootweight-mul-eq-zero-of-ne--deb46dff9b3602305ec4199b.md) | 86 | `result-track:deb46dff9b3602305ec4199b380020ada64f6dba3d1f4446b27538a2c9de01d4` |
| 6 | `def` | [sourceCrossTermAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcecrosstermat--ccaa7edd8fcfbd65035d7f73.md) | 95 | `declaration-track:ccaa7edd8fcfbd65035d7f73e7bbee43ce243351cde09131b3fc464dadbb997b` |
| 7 | `theorem` | [sourceCrossTermAt_diag](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcecrosstermat-diag--f4f66bfbbd544bf443b5c49d.md) | 101 | `result-track:f4f66bfbbd544bf443b5c49df70907c3996fd11132a9af93ce9da30841a66108` |
| 8 | `theorem` | [sourceCrossTermAt_offdiag](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcecrosstermat-offdiag--8df6272a0bcdb1e76df3cbe3.md) | 108 | `result-track:8df6272a0bcdb1e76df3cbe3f56d3a7ef7c40d9d8942cd93f1d7a3797d6202ae` |
| 9 | `def` | [sourceCrossSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcecrosssum--1234f08c7226dbee33ef0db4.md) | 117 | `declaration-track:1234f08c7226dbee33ef0db48712432ab377d98c91cba8793b04d5cc95d3c7c7` |
| 10 | `def` | [arithmeticCrossCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/arithmeticcrosscoefficient--ecfc58eb3dbf7085c76c5a2c.md) | 127 | `declaration-track:ecfc58eb3dbf7085c76c5a2c66da9ded239927cb3cbbd84e521e24cdbaf4eb38` |
| 11 | `theorem` | [arithmeticCrossCoefficient_diag](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/arithmeticcrosscoefficient-diag--fafecc7f965aec4b99172eba.md) | 134 | `result-track:fafecc7f965aec4b99172eba6d57d87e79d4f0cf9038d0be2c8d67026a20cf1e` |
| 12 | `theorem` | [arithmeticCrossCoefficient_offdiag](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/arithmeticcrosscoefficient-offdiag--0ac01b98bf0cdd3ef8127308.md) | 141 | `result-track:0ac01b98bf0cdd3ef8127308ff54be3af300c49d92a7c8140339f4ae446c1ee4` |
| 13 | `theorem` | [arithmeticCrossCoefficient_diag_eq_mangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/arithmeticcrosscoefficient-diag-eq-mangoldt--d43c5695050ed3e33735f54e.md) | 147 | `result-track:d43c5695050ed3e33735f54eb0004136cde92f5b1e3e34a6f0aa4fd3ae506dff` |
| 14 | `theorem` | [sourceCrossSum_eq_arithmeticCrossCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcecrosssum-eq-arithmeticcrosscoefficient--64d1202e56b1ce5067dfc043.md) | 156 | `result-track:64d1202e56b1ce5067dfc0437ba7cd1fffda612c005044936867fc61d219c890` |
| 15 | `theorem` | [arithmeticCrossCoefficient_diag_eq_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/arithmeticcrosscoefficient-diag-eq-correction--c4a7dbdf3c06d384a90d2418.md) | 175 | `result-track:c4a7dbdf3c06d384a90d24181e8d7c2938950c03446585fe3e007efee6231fcb` |
| 16 | `theorem` | [arithmeticCrossCoefficient_diag_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/arithmeticcrosscoefficient-diag-nonnegative--6e13faaa3575793730cbb6a4.md) | 181 | `result-track:6e13faaa3575793730cbb6a456a17343502a4dfda0b61ac78d94ebc7797cbf37` |
| 17 | `def` | [finiteCrossCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitecrosscoefficient--9e31f7baebdb0e54fb196e1d.md) | 189 | `declaration-track:9e31f7baebdb0e54fb196e1d8a1e0ce7229e2acb41ea98a3d65620a6bb221ad6` |
| 18 | `def` | [rawFiniteCrossCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/rawfinitecrosscoefficient--8697311b096ecbe0c6d81bca.md) | 194 | `declaration-track:8697311b096ecbe0c6d81bcaa1af7dc1ce1b79f4c4337ca21a0658c065456430` |
| 19 | `def` | [rawCrossResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/rawcrossresidual--733213abce8307be3be63ed7.md) | 200 | `declaration-track:733213abce8307be3be63ed75b96136a003f4fe1741a84854ec9988678081cf1` |
| 20 | `def` | [hermitianCrossResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/hermitiancrossresidual--53379f596dc81319610789dd.md) | 205 | `declaration-track:53379f596dc81319610789dd963c9c1c02bf24e6239772cebf733e3c67ab7c0f` |
| 21 | `def` | [crossError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/crosserror--89b91eeef35fb01956729c2d.md) | 210 | `declaration-track:89b91eeef35fb01956729c2d4cc2df48f9dcf8ab1b528ed9e6dc8bd8ceb117f3` |
| 22 | `theorem` | [rawCrossResidual_diag](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/rawcrossresidual-diag--f6437bdcf3ce63f643c03f9d.md) | 215 | `result-track:f6437bdcf3ce63f643c03f9d78d65c93e5a7ba0c6c1206fe24e6e4b06559e4eb` |
| 23 | `theorem` | [rawCrossResidual_offdiag](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/rawcrossresidual-offdiag--a436b64e58efef57568b95ed.md) | 232 | `result-track:a436b64e58efef57568b95eda50a6cb1a025478de7b593960a9adcdd476368e3` |
| 24 | `theorem` | [hermitianCrossResidual_eq_raw_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/hermitiancrossresidual-eq-raw-re--e877085a55181f419168c28a.md) | 240 | `result-track:e877085a55181f419168c28a85d9aec8b8fd53462e7d5a62e555bfbf0a890aaa` |
| 25 | `theorem` | [abs_hermitianCrossResidual_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/abs-hermitiancrossresidual-le--a262bbb99280ff6b486c2c2a.md) | 252 | `result-track:a262bbb99280ff6b486c2c2acbed03744bf7122ee6579d11650d4386edc6e894` |
| 26 | `def` | [sourcePolarizedForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform--513ffe3be12fd03fa74f9811.md) | 271 | `declaration-track:513ffe3be12fd03fa74f9811ae8e3bdcf30237c45eb7b2662fb56f953708b969` |
| 27 | `def` | [rawFinitePolarizedForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/rawfinitepolarizedform--ca0ec9ed0a3511f503d407c8.md) | 278 | `declaration-track:ca0ec9ed0a3511f503d407c851e89dfb24e8d337e71f4f68bbc26ad0716fd272` |
| 28 | `def` | [finitePolarizedForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform--06d72029d1906c8bcb6893ef.md) | 285 | `declaration-track:06d72029d1906c8bcb6893ef42cc62da899027ca1c5ddddd612fdecba53e32a6` |
| 29 | `def` | [rawResidualForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/rawresidualform--4bdb229166aeeb908d8a44af.md) | 291 | `declaration-track:4bdb229166aeeb908d8a44af6b2bdc85e5237c6184e78f9ffedfdfe67ea7a0dd` |
| 30 | `def` | [hermitianResidualForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/hermitianresidualform--1913acfec5aabc029f376411.md) | 297 | `declaration-track:1913acfec5aabc029f3764113cf64eeb146dce885834cd61e0f36d927bc64fd9` |
| 31 | `theorem` | [sourcePolarizedForm_eq_diagonal_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-eq-diagonal-sum--ab39cbaf5b48abc373374a3d.md) | 303 | `result-track:ab39cbaf5b48abc373374a3d1d5f2b2ba9ced1c8e5248dba530d05611615f82d` |
| 32 | `theorem` | [finitePolarizedForm_eq_diagonal_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform-eq-diagonal-sum--9da9d65a9581235fd1349907.md) | 319 | `result-track:9da9d65a9581235fd1349907c2b4eaf9a022c17b78326328043ebbce2e354eac` |
| 33 | `theorem` | [source_sub_rawFinite_eq_rawResidualForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/source-sub-rawfinite-eq-rawresidualform--98e91c935988dde0c7a3495c.md) | 335 | `result-track:98e91c935988dde0c7a3495cd80397e5c8d33f31bc6d7e24d46571f639cb2226` |
| 34 | `theorem` | [source_sub_finite_eq_hermitianResidualForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/source-sub-finite-eq-hermitianresidualform--bf7b0413a99d01bda0446ee0.md) | 351 | `result-track:bf7b0413a99d01bda0446ee04568f47836fb058c3f769b8c5e45c892ccae8f4c` |
| 35 | `theorem` | [hermitianResidualForm_eq_diagonal_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/hermitianresidualform-eq-diagonal-sum--a63c10d97a4dc790fe09480b.md) | 368 | `result-track:a63c10d97a4dc790fe09480bb5e1565f245104f5055309c36a0bef8c995f4698` |
| 36 | `theorem` | [sourcePolarizedForm_add_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-add-left--7463fb603aabbead8c56c656.md) | 386 | `result-track:7463fb603aabbead8c56c656b285809882ca71d6f6f8ff57ee453b8652de2725` |
| 37 | `theorem` | [sourcePolarizedForm_add_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-add-right--be329580a4a0cdf405fcbab4.md) | 394 | `result-track:be329580a4a0cdf405fcbab4dfcfc0206bdcedae4c7104b011a306660f497392` |
| 38 | `theorem` | [sourcePolarizedForm_smul_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-smul-left--70e3cc9b39cd677836e637f4.md) | 402 | `result-track:70e3cc9b39cd677836e637f43f6c3dadb172e6a4742c4cf17733d5304fe0a66a` |
| 39 | `theorem` | [sourcePolarizedForm_smul_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-smul-right--9e620ea2c98f9a957669efb1.md) | 410 | `result-track:9e620ea2c98f9a957669efb1d97fcc61225cdf98a4a90004d778808bde84f640` |
| 40 | `theorem` | [sourcePolarizedForm_hermitian](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-hermitian--7ef3b8b06281d9ca02447771.md) | 418 | `result-track:7ef3b8b06281d9ca02447771efd71420ed6036f2fac70c1f194a90ce77090e94` |
| 41 | `theorem` | [finitePolarizedForm_add_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform-add-left--d4659cf1a39947e1e3dd83d7.md) | 430 | `result-track:d4659cf1a39947e1e3dd83d742cfa44878307ce6a82351759494e06f4c89c354` |
| 42 | `theorem` | [finitePolarizedForm_add_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform-add-right--a8492c2137f4c690960642ea.md) | 438 | `result-track:a8492c2137f4c690960642ead06ef37b05edb1ecdf5c6abdc46efc4934906dd8` |
| 43 | `theorem` | [finitePolarizedForm_smul_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform-smul-left--e4714d8cca6e3b320f863945.md) | 446 | `result-track:e4714d8cca6e3b320f863945cf1e08ac7e557e8b9c5cdb45093c0be5867af005` |
| 44 | `theorem` | [finitePolarizedForm_smul_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform-smul-right--b95e1de811ef36bbe741ff73.md) | 454 | `result-track:b95e1de811ef36bbe741ff73c99bda2c3b72ffc0b1999326ff0c5f919e010e34` |
| 45 | `theorem` | [finitePolarizedForm_hermitian](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/finitepolarizedform-hermitian--08da71ece64af4a1d891d82b.md) | 462 | `result-track:08da71ece64af4a1d891d82b8413bd5b0b4200a71116004f54667f129f5b2e6e` |
| 46 | `def` | [sourceDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcediagonal--4cbe5bdebf061ccc29ecaddf.md) | 474 | `declaration-track:4cbe5bdebf061ccc29ecaddf60e049c2aebbded10b5c61782972a6f6df608063` |
| 47 | `theorem` | [sourcePolarizedForm_self_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-self-re--8b1402ded5dd37d231e0b5d0.md) | 478 | `result-track:8b1402ded5dd37d231e0b5d047630ed59b7d1a318c06f09199c776b5e083c283` |
| 48 | `theorem` | [sourcePolarizedForm_self_im_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-self-im-zero--6656416dbbdf1a1f5f680268.md) | 487 | `result-track:6656416dbbdf1a1f5f68026846e5c8fd716fd67abfaad865ba5831fb4249a5f8` |
| 49 | `theorem` | [sourceDiagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcediagonal-nonnegative--65fe48cb95198d48c08be9b2.md) | 497 | `result-track:65fe48cb95198d48c08be9b2383d2583f29d5c134e972d912ae7753b5ec5e49a` |
| 50 | `theorem` | [sourcePolarizedForm_self_re_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourcepolarizedform-self-re-nonnegative--eaf2e3c0addf41389de38bfa.md) | 505 | `result-track:eaf2e3c0addf41389de38bfa1a004965b06f8f9737b5553398ccd8aead6695c7` |
| 51 | `def` | [pairError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/pairerror--f3d818463efd87a72d3a2241.md) | 512 | `declaration-track:f3d818463efd87a72d3a22419e87ad2ec6c1ec109aff27126c92d29371f28703` |
| 52 | `theorem` | [pairError_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/pairerror-nonnegative--1ae93180deaa4767d81abcdf.md) | 517 | `result-track:1ae93180deaa4767d81abcdf86515e15ef4e0e1311815e622cd51cee7367011f` |
| 53 | `theorem` | [norm_source_sub_finite_le_pairError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/norm-source-sub-finite-le-pairerror--bcabcad11fb35833921e16df.md) | 528 | `result-track:bcabcad11fb35833921e16dfd1c5268ad16c625f5d5e73e9cab9812f5e7fd310` |
| 54 | `theorem` | [vanishesAtInfinity_const_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/vanishesatinfinity-const-mul--25058b86d31e5aece90f6dac.md) | 562 | `result-track:25058b86d31e5aece90f6dac9e04367768eb4b92efb8228187aaa65912089d41` |
| 55 | `theorem` | [vanishesAtInfinity_finset_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/vanishesatinfinity-finset-sum--981744305d7960a3f8b134fc.md) | 581 | `result-track:981744305d7960a3f8b134fc2f1a37e198345f4997b99e0c86884fbc50ff1a6b` |
| 56 | `theorem` | [pairError_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/pairerror-vanishes--01a1858245cde0d142dc1166.md) | 598 | `result-track:01a1858245cde0d142dc11660aab1e42fac372902348106da1050aabaaa50fbd` |
| 57 | `def` | [realTargetForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/realtargetform--6bbdc58413f9bc00217535bf.md) | 610 | `declaration-track:6bbdc58413f9bc00217535bf53c52570c95c3851257640defb99f0f771c702b0` |
| 58 | `def` | [realFiniteForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/realfiniteform--12c5ea13892a67b8bd8dd5d2.md) | 615 | `declaration-track:12c5ea13892a67b8bd8dd5d24f8eaa2c44b4765747a2e7ac89a3bcd7bcd16f87` |
| 59 | `def` | [combinationLowerDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/combinationlowerdefect--7d187f53a7b529bb52e21332.md) | 620 | `declaration-track:7d187f53a7b529bb52e213321f119d4ae2d6e5234b916f21bfb3161552775fc4` |
| 60 | `theorem` | [abs_realComparison_le_pairError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/abs-realcomparison-le-pairerror--aeaead945b01733a1a7eb1fb.md) | 626 | `result-track:aeaead945b01733a1a7eb1fb1009cd0e51950cbe463f0bbda92250d802a25053` |
| 61 | `theorem` | [realTargetForm_diagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/realtargetform-diagonal-nonnegative--fe52d63f77ce869cfba25a63.md) | 639 | `result-track:fe52d63f77ce869cfba25a6313f4afe70ac58f5bb90c2969c83e87a27743fb00` |
| 62 | `theorem` | [realFiniteForm_diagonal_lower_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/realfiniteform-diagonal-lower-bound--fedbc043613b04e840b85702.md) | 646 | `result-track:fedbc043613b04e840b85702d35d22b9a5f3a762604a7f65c99c0228261ebb5e` |
| 63 | `theorem` | [combinationLowerDefect_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/combinationlowerdefect-nonnegative--7ebd1c6a88521708f6872c01.md) | 657 | `result-track:7ebd1c6a88521708f6872c0169ef05764c11f09b6c9dd468f82997c08bbd45a4` |
| 64 | `theorem` | [combinationLowerDefect_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/combinationlowerdefect-vanishes--2e39c0bcabce1feba5c7ca46.md) | 662 | `result-track:2e39c0bcabce1feba5c7ca46f320d7d8ca99e74afb333f117456aee102cae86f` |
| 65 | `theorem` | [realComparison_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/realcomparison-vanishes--b33dc5a846b3c5b745c930b4.md) | 667 | `result-track:b33dc5a846b3c5b745c930b4630bc494c14c983c7621015828c74b9914b9f7a4` |
| 66 | `def` | [approximatePositiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/approximatepositiveapproximation--524243fe4f9b88fcfe955d5f.md) | 678 | `declaration-track:524243fe4f9b88fcfe955d5fa8fd56779ae789895af3490a41e233f15c7342be` |
| 67 | `structure` | [SourceBoundPolarizedPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourceboundpolarizedpacket--e6c62e919693bec20d61819f.md) | 691 | `declaration-track:e6c62e919693bec20d61819f95e4ca5a01a420d460aeb94b55dd89e0c46a890f` |
| 68 | `def` | [sourceBoundPolarizedPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/sourceboundpolarizedpacket--f5ed9350d186ff8f99239c48.md) | 703 | `declaration-track:f5ed9350d186ff8f99239c4864334b7d7209d8abb3a2df142cc6dec15410789a` |
| 69 | `theorem` | [offDiagonal_arithmetic_and_residual_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/declarations/offdiagonal-arithmetic-and-residual-zero--1feeac4b83ed42dd890adb00.md) | 720 | `result-track:1feeac4b83ed42dd890adb0025751fa388df78479263879b4532195173896a49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
