# Verification target: GRWTSK.Algebra.LinearAlgebra.Vandermonde.Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a62ae70c9359ee5c4653fbc3f1818de59817cfaf",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a62ae70c9359ee5c4653fbc3f1818de59817cfaf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/rectvandermonde--d625754fec0142c7354a82cc.md) | 84 | `declaration-track:d625754fec0142c7354a82ccbab60580a53d58a9b14ab2c2f6ec8a25fa60a047` |
| 2 | `def` | [projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/projvandermonde--82340a8dbe159e230d97c6c3.md) | 88 | `declaration-track:82340a8dbe159e230d97c6c3891a2db12982ea02b86952e9323675dd15f0c4e1` |
| 3 | `def` | [vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde--a445d6bbd6dea60f89d2ca3a.md) | 92 | `declaration-track:a445d6bbd6dea60f89d2ca3ae03d514e5357d35f1904e37dfda728a8387e6f82` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde-eq-projvandermonde--95603d183da2a04ab4cbc058.md) | 94 | `result-track:95603d183da2a04ab4cbc0584034081b8ac4d8e407b2ce4675823527053ca1a2` |
| 5 | `theorem` | [projVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/projvandermonde-apply--283f5586f9a8d95554f9f806.md) | 99 | `result-track:283f5586f9a8d95554f9f80682c260d4e5ba47e6e5464fd769a4b581e897c09a` |
| 6 | `theorem` | [rectVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/rectvandermonde-apply--48cc2eb4fb1c379775d084d7.md) | 102 | `result-track:48cc2eb4fb1c379775d084d7dcb1984dda4cc48f3d16f5fdac82e871087a1249` |
| 7 | `theorem` | [vandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde-apply--26e985351839d2cec8bb3e2f.md) | 106 | `result-track:26e985351839d2cec8bb3e2fc57bc6735d31a33fddc2d3f321c238bace60d10b` |
| 8 | `theorem` | [vandermonde_cons](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde-cons--572bbe843803dcd73c2914b7.md) | 109 | `result-track:572bbe843803dcd73c2914b7bd1e8372dfdd184139759fd396590bbc20b3b46e` |
| 9 | `theorem` | [vandermonde_succ](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde-succ--841185d18cb396664cc60887.md) | 118 | `result-track:841185d18cb396664cc60887962823357347004586f8592e44ee7a4c953c1e47` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde-mul-vandermonde-transpose--4c063a0dcddca374d2818a50.md) | 125 | `result-track:4c063a0dcddca374d2818a5044c5e85050ee7d0b323017d4a4bb05da613bde72` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/vandermonde-transpose-mul-vandermonde--0653cf5e46f1593947a966d8.md) | 129 | `result-track:0653cf5e46f1593947a966d8ba9e971fe650d5334763d47a309e372ff43be9e9` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/rectvandermonde-apply-zero-right--17e1a4631799946e3a664c78.md) | 133 | `result-track:17e1a4631799946e3a664c785ae1570105b233a1adb75c12f7419df5024dbce8` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/projvandermonde-apply-of-ne-zero--b9e5d9352e494a7fa2d05334.md) | 141 | `result-track:b9e5d9352e494a7fa2d05334222a90634a8cdeae3fdd067a89414a681571a126` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/projvandermonde-apply-zero-right--1c1d7a491f9024aa67b22769.md) | 146 | `result-track:1c1d7a491f9024aa67b22769566182553bc29da057084f60b6a0fb1d8d64936b` |
| 15 | `theorem` | [projVandermonde_comp](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/projvandermonde-comp--32f94a70133dda631b664a40.md) | 154 | `result-track:32f94a70133dda631b664a40c67b6b2702ad224309ddf10fe9d9eafc44a4b507` |
| 16 | `theorem` | [projVandermonde_map](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/projvandermonde-map--cb09e8097f0ecf39be1c93a9.md) | 157 | `result-track:cb09e8097f0ecf39be1c93a91fdb5f613024660b733af3356718833277f0fb5e` |
| 17 | `theorem` | [det_projVandermonde_of_field](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-projvandermonde-of-field--df4e7862a43831ec69f75718.md) | 162 | `result-track:df4e7862a43831ec69f75718989019fcb971d1647c3dbd1cb0265c03a5d1b70d` |
| 18 | `theorem` | [det_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-projvandermonde--8cddece4c80ad7dfe2f9f397.md) | 213 | `result-track:8cddece4c80ad7dfe2f9f3974012472dcbbac35e15dd5a3c14d3d7556c179d95` |
| 19 | `theorem` | [det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-vandermonde--7b2c05c2ccf47e3459a467cb.md) | 227 | `result-track:7b2c05c2ccf47e3459a467cb10182d82d51e414e26358be34da46715db823482` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-vandermonde-eq-zero-iff--267081874ab97c7e6d74826f.md) | 231 | `result-track:267081874ab97c7e6d74826fc35304db789ebe0fe2ad4b700eabb63e5ed90a91` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-vandermonde-ne-zero-iff--8525de804afeadddc8f01f53.md) | 241 | `result-track:8525de804afeadddc8f01f5354682d64bba21b051d62d071612498894b7eb8ba` |
| 22 | `theorem` | [det_vandermonde_add](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-vandermonde-add--1edbb674b05c945d3019a46b.md) | 247 | `result-track:1edbb674b05c945d3019a46bade67679f6b739a47f8b897d07f45697d5238951` |
| 23 | `theorem` | [det_vandermonde_sub](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-vandermonde-sub--707f1be8ed06e26b2c0207b2.md) | 252 | `result-track:707f1be8ed06e26b2c0207b2e49dcad9644269649bf96ec1b1ce0b7b11fd972e` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero--3ccccbacb6ff31756c097346.md) | 257 | `result-track:3ccccbacb6ff31756c0973461df45f12f83bb77a1aa4edb3f39d31c445e02680` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero--4a8d3a559cb562618e84426a.md) | 261 | `result-track:4a8d3a559cb562618e84426a7682c07ec9fdf72d99bfd316223660e210be5e9a` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero--b8dacfcc7ee0fc5eaeaf87e9.md) | 267 | `result-track:b8dacfcc7ee0fc5eaeaf87e9b4d41991090c20dd39acedae7cf05e67083b6ab0` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials--2352506e1bc4a25d5b90f471.md) | 274 | `result-track:2352506e1bc4a25d5b90f471f6baa3a593a721f89662b7dfb57ee5bbb8332273` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-eval-matrixofpolynomials-eq-det-vandermonde--3d415af5e88ac8b655f53320.md) | 288 | `result-track:3d415af5e88ac8b655f533204aead671bd3d0653b45ca92a7acfcf376addaca9` |
| 29 | `lemma` | [det_vandermonde_id_eq_superFactorial](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/det-vandermonde-id-eq-superfactorial--5bf877c90db8f83ca7bd18c6.md) | 295 | `result-track:5bf877c90db8f83ca7bd18c6626b0c2be82b8df2f05d447236c3425082656f1b` |
| 30 | `lemma` | [of_eval_descPochhammer_eq_mul_of_choose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/of-eval-descpochhammer-eq-mul-of-choose--37787ea00ebfe1b7fb7c197b.md) | 309 | `result-track:37787ea00ebfe1b7fb7c197bd68d5fff405ab882ef0e5ef5443f89be83ec66fd` |
| 31 | `lemma` | [superFactorial_dvd_vandermonde_det](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc874d530aabf564a44dcb51f98014341342a4535466a94a1a4453c6149fcef0c.lean/declarations/superfactorial-dvd-vandermonde-det--b94f86d113bcac8b37d12882.md) | 319 | `result-track:b94f86d113bcac8b37d12882ff39f62d08afab631ff42331357cf5ce2d011bb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
