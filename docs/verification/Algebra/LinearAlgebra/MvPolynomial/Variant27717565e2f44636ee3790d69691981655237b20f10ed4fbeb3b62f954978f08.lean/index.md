# Verification target: GRWTSK.Algebra.LinearAlgebra.MvPolynomial.Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4c6633540a85bbb06d595aad635368fd68ebccb",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4c6633540a85bbb06d595aad635368fd68ebccb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.IsNonarchimedean` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Height.iSup_fun_eq_max](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/height-isup-fun-eq-max--66440d699b9d5fa0d6419bc4.md) | 29 | `result-track:66440d699b9d5fa0d6419bc4ce032d3bd0cf582088da5539e5e8d8b51c53eac3` |
| 2 | `lemma` | [apply_sum_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/apply-sum-le--7f8c1f209094003da2aa2b25.md) | 42 | `result-track:7f8c1f209094003da2aa2b258b3167c6c42551d6be20ed829ed7e3c49d74909c` |
| 3 | `lemma` | [apply_sum_univ_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/apply-sum-univ-le--71a515925a1a5b9af8224145.md) | 57 | `result-track:71a515925a1a5b9af822414578fbc3feb5b656fd40c668f359a259c0ddd7a2e3` |
| 4 | `lemma` | [AbsoluteValue.iSup_abv_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/absolutevalue-isup-abv-linearmap-apply-le--6e95bb5cdd7689368959abda.md) | 73 | `result-track:6e95bb5cdd7689368959abda0c3e95a70e61c1ac954db61635e12357ec63e365` |
| 5 | `lemma` | [IsNonarchimedean.iSup_abv_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/isnonarchimedean-isup-abv-linearmap-apply-le--3d63b5a8e9d6275113d7e120.md) | 90 | `result-track:3d63b5a8e9d6275113d7e120f6bd45b9a08769ae078959271115e348a6f81f5a` |
| 6 | `theorem` | [mulHeight_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-linearmap-apply-le--ad3c8fdef41085597c1efeba.md) | 121 | `result-track:ad3c8fdef41085597c1efeba40cb034ea2fd7baba1baa9a3610ad8ac2a1bcb44` |
| 7 | `theorem` | [logHeight_linearMap_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-linearmap-apply-le--88bf3ef27e2e17ce361a60cf.md) | 162 | `result-track:88bf3ef27e2e17ce361a60cf037ab7e3c9026e9111ee6bf3494462b78946e07a` |
| 8 | `lemma` | [AbsoluteValue.eval_mvPolynomial_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/absolutevalue-eval-mvpolynomial-le--0483a5b5e221abd6d66d2c0f.md) | 189 | `result-track:0483a5b5e221abd6d66d2c0f46f385341b3b444e5d035d25f3cfa171a9ee2495` |
| 9 | `lemma` | [IsNonarchimedean.eval_mvPolynomial_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/isnonarchimedean-eval-mvpolynomial-le--5f5b9b01e730be35c85c8bf1.md) | 202 | `result-track:5f5b9b01e730be35c85c8bf1ee7c263f6f4e58001ca8c64cdad9a7b38ef0587f` |
| 10 | `def` | [mulHeightBound](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheightbound--072f1744ed098abdc2f12bd5.md) | 230 | `declaration-track:072f1744ed098abdc2f12bd58478163d9db6e514a7486a978a9aff782209f39d` |
| 11 | `lemma` | [mulHeightBound_eq](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheightbound-eq--95654f1ad13902720639b19e.md) | 234 | `result-track:95654f1ad13902720639b19e75b1c78d286353e18454b2a9776eeef217088fa9` |
| 12 | `lemma` | [max_mulHeightBound_zero_one_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/max-mulheightbound-zero-one-eq-one--68664812ce38c8fcebd33b5d.md) | 241 | `result-track:68664812ce38c8fcebd33b5d702207ecf113b0ac079332de8521a3df0a70df26` |
| 13 | `lemma` | [hasFiniteMulSupport_iSup_max_iSup_one](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/hasfinitemulsupport-isup-max-isup-one--f4afad8d05b66a5184bab249.md) | 258 | `result-track:f4afad8d05b66a5184bab249fb5d4a6f80ba9194f7af9237f21747152341c48b` |
| 14 | `lemma` | [mulHeight_constantCoeff_le_mulHeightBound](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-constantcoeff-le-mulheightbound--94969d88750b3bc642723c94.md) | 268 | `result-track:94969d88750b3bc642723c94de96ea5d9a7aab38f0496a53e4721c7e2840a63c` |
| 15 | `theorem` | [mulHeight_eval_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-eval-le--d1525d0cb209e485b1341245.md) | 298 | `result-track:d1525d0cb209e485b134124587f21e050876fb8e7a887e03eb2074c28d37c87e` |
| 16 | `theorem` | [mulHeight_eval_le'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-eval-le--a5a5c9d016ff1f457ca89c4a.md) | 357 | `result-track:a5a5c9d016ff1f457ca89c4a4528ebe79d08635e27355c27c4106e4f1fede805` |
| 17 | `theorem` | [logHeight_eval_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-eval-le--ebd63b48989271cb21242cb0.md) | 368 | `result-track:ebd63b48989271cb21242cb069d2c1df67f79a837627374972ab59c8e0ae7e70` |
| 18 | `theorem` | [logHeight_eval_le'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-eval-le--8c7b6041d832923fb3f3d272.md) | 383 | `result-track:8c7b6041d832923fb3f3d2725156f24ddd89ff772f163945f7c4f1a6e62a249a` |
| 19 | `lemma` | [mulHeight_eval_ge_aux](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-eval-ge-aux--6012217a22f40c16a8136837.md) | 417 | `result-track:6012217a22f40c16a8136837a15f6defc063266b07fcad097cc57900087d1b11` |
| 20 | `theorem` | [mulHeight_eval_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-eval-ge--2c0da1a6c2a437f2f96b3a47.md) | 438 | `result-track:2c0da1a6c2a437f2f96b3a47bd65e967ac2eb98b171d755e504e5dcd8a5e9d3e` |
| 21 | `theorem` | [mulHeight_eval_ge'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-eval-ge--f16ea346164fe7701962cd65.md) | 471 | `result-track:f16ea346164fe7701962cd65adbec5986119b743f97bc08ce913edc812061bc7` |
| 22 | `theorem` | [logHeight_eval_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-eval-ge--235bdc2a414016cb6a1d83df.md) | 491 | `result-track:235bdc2a414016cb6a1d83dfe7e44dbbc2d587c63e30d802137e0ad9c826b91e` |
| 23 | `theorem` | [logHeight_eval_ge'](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-eval-ge--c2f1f7b0775b7c36ba73e08e.md) | 515 | `result-track:c2f1f7b0775b7c36ba73e08eb2a8552a77d40567ca4cea435ad2000f20f467e6` |
| 24 | `lemma` | [mulHeight_mul_mulHeight](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-mul-mulheight--6ccd6cbddb77828c3b867b83.md) | 541 | `result-track:6ccd6cbddb77828c3b867b836ea92ae7e9d449ee247891ca3d669606d3cbc57f` |
| 25 | `lemma` | [mulHeight_sym2_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-sym2-le--8c174f2a9c1a15b550e3e29c.md) | 551 | `result-track:8c174f2a9c1a15b550e3e29cc1ad16fa750ae6c320accb4016cb30e9517ad845` |
| 26 | `lemma` | [mulHeight_sym2_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/mulheight-sym2-ge--c0193fe476e7d05b6dc95a84.md) | 577 | `result-track:c0193fe476e7d05b6dc95a8494a9d1620b8bac5295c45115846f60f577c4b4b0` |
| 27 | `lemma` | [logHeight_sym2_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-sym2-le--abfe6a5157ed2b4762d2a0e8.md) | 594 | `result-track:abfe6a5157ed2b4762d2a0e8e662d243177a5a7ff0d9b707764248a42e028ba2` |
| 28 | `lemma` | [logHeight_sym2_ge](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/logheight-sym2-ge--d796a32cef8bc88e80bc66c5.md) | 604 | `result-track:d796a32cef8bc88e80bc66c552d6cb481266158d89bc42502d27791c7be6b7fa` |
| 29 | `lemma` | [abs_logHeight_sym2_sub_le](../../../../../mathematics/Algebra/LinearAlgebra/MvPolynomial/Variant27717565e2f44636ee3790d69691981655237b20f10ed4fbeb3b62f954978f08.lean/declarations/abs-logheight-sym2-sub-le--34d56a7ac016e2fd56d8ba81.md) | 615 | `result-track:34d56a7ac016e2fd56d8ba8197cfbf8e2fc6a1ecf943ad2ccb442ff7a79552cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
