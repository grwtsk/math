# Verification target: GRWTSK.Algebra.Basic.Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99043c8970fb9bdb9126ed4e3981262362417b74",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99043c8970fb9bdb9126ed4e3981262362417b74`.

Source path: `GRWTSK/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Nilpotent.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.GCDMonoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Squarefree](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree--bdade563c8619f0836a9d89a.md) | 44 | `declaration-track:bdade563c8619f0836a9d89a5c30a2462b64ac88d9b942c059c68ac969086811` |
| 2 | `theorem` | [IsRelPrime.of_squarefree_mul](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/isrelprime-of-squarefree-mul--b90b7900568aafb0edce7848.md) | 47 | `result-track:b90b7900568aafb0edce78482ca6c555303c7f1adb0db87194f33586fd4912c3` |
| 3 | `theorem` | [IsUnit.squarefree](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/isunit-squarefree--a18dc1b55046d92413052651.md) | 51 | `result-track:a18dc1b55046d924130526516a42bf2db3a70d7a0c2383b6e143641cc2ef70be` |
| 4 | `theorem` | [squarefree_one](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-one--470041e512a417915b665875.md) | 54 | `result-track:470041e512a417915b6658754f4e3fa1b98713f4882c8fcf08f8b267ecbec6c7` |
| 5 | `theorem` | [not_squarefree_zero](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/not-squarefree-zero--901f7a8c871419a9631b655f.md) | 58 | `result-track:901f7a8c871419a9631b655fe107cbf418a2bcc35f8c40eacc16aaea66f580b6` |
| 6 | `theorem` | [Squarefree.ne_zero](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-ne-zero--8424d73b64f76add2eca5aaf.md) | 62 | `result-track:8424d73b64f76add2eca5aaf91de6c9d548e6d84a2d6535d871a7564e2bb5a7a` |
| 7 | `theorem` | [Irreducible.squarefree](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/irreducible-squarefree--d9e71cc5a4ca5ae7a03a95f8.md) | 68 | `result-track:d9e71cc5a4ca5ae7a03a95f86f8ae330462771260e3ba0dbed929896183cdb21` |
| 8 | `theorem` | [Prime.squarefree](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/prime-squarefree--1fe128aa3a94f83065c116f4.md) | 76 | `result-track:1fe128aa3a94f83065c116f429466d47ddb2cf84f0e74d1bed49f6d3de283306` |
| 9 | `theorem` | [Squarefree.of_mul_left](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-of-mul-left--918960f6ceb55928aa64ada9.md) | 79 | `result-track:918960f6ceb55928aa64ada9bc7d4ea2f7a990f1d62e6d832358b123a88ac652` |
| 10 | `theorem` | [Squarefree.of_mul_right](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-of-mul-right--addcadde7e0e1236ba119fcd.md) | 82 | `result-track:addcadde7e0e1236ba119fcda5f78150ce2b55fc3f65fac88a3e9d0a63c61d54` |
| 11 | `theorem` | [Squarefree.squarefree_of_dvd](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-squarefree-of-dvd--fd761f1feec5961b5de73a96.md) | 85 | `result-track:fd761f1feec5961b5de73a96851e86b92a6f4cd3dc301638bbfb39842c7ec853` |
| 12 | `theorem` | [Squarefree.eq_zero_or_one_of_pow_of_not_isUnit](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-eq-zero-or-one-of-pow-of-not-isunit--d154d72e50e04c78445688ee.md) | 88 | `result-track:d154d72e50e04c78445688ee587f152483a275dbb74681c9880c1b7f6175817a` |
| 13 | `theorem` | [Squarefree.pow_dvd_of_pow_dvd](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-pow-dvd-of-pow-dvd--817efbcf000c17158126a827.md) | 96 | `result-track:817efbcf000c17158126a827624e40070ec914db4641a73bdc2be28f7ab6a07e` |
| 14 | `theorem` | [Squarefree.gcd_right](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-gcd-right--7e8995bbb5317f093c9912b0.md) | 106 | `result-track:7e8995bbb5317f093c9912b005b71f42df10cf42daea2eade0681e28587e4bfe` |
| 15 | `theorem` | [Squarefree.gcd_left](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-gcd-left--8a15f52fcb36d8487cd9084c.md) | 109 | `result-track:8a15f52fcb36d8487cd9084c74956c4a45074afd54554073f43481b58a82c641` |
| 16 | `theorem` | [squarefree_iff_emultiplicity_le_one](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-iff-emultiplicity-le-one--d3b072b9f7dcea6aadc55fde.md) | 114 | `result-track:d3b072b9f7dcea6aadc55fdea79b55557e2b141c0098ea7c30ee5d533d5ab554` |
| 17 | `theorem` | [squarefree_iff_no_irreducibles](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-iff-no-irreducibles--01a9daa463d947ba9e593478.md) | 129 | `result-track:01a9daa463d947ba9e593478366cf67e60a577714f774e69f8cc81186caa6e7a` |
| 18 | `theorem` | [irreducible_sq_not_dvd_iff_eq_zero_and_no_irreducibles_or_squarefree](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/irreducible-sq-not-dvd-iff-eq-zero-and-no-irreducibles-or-squarefree--b6398b0caab10b22afc5e810.md) | 136 | `result-track:b6398b0caab10b22afc5e810ebeb9b6763d698cbef3f59417ead126574cd14bc` |
| 19 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_ne_zero](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-ne-zero--a3dd29a162764a44466c09d9.md) | 147 | `result-track:a3dd29a162764a44466c09d99ddc0924a72d565dbfe3e97cc79deeead1f8800c` |
| 20 | `theorem` | [squarefree_iff_irreducible_sq_not_dvd_of_exists_irreducible](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-iff-irreducible-sq-not-dvd-of-exists-irreducible--c3615df2989c540936ab9cc7.md) | 151 | `result-track:c3615df2989c540936ab9cc7e74a852a7d4d460c77350ca01b1c748e89fa41d1` |
| 21 | `theorem` | [Squarefree.isRadical](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-isradical--25e2a024a0c893ff33603875.md) | 163 | `result-track:25e2a024a0c893ff3360387593c0ed120bd6901d20390905c26ae2354b0fe160` |
| 22 | `theorem` | [Squarefree.dvd_pow_iff_dvd](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-dvd-pow-iff-dvd--ca90087153f9c7f95e3e28b6.md) | 168 | `result-track:ca90087153f9c7f95e3e28b65cc1e6b779978b3a7a25c89b6a9d5658780b8bee` |
| 23 | `theorem` | [IsRadical.squarefree](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/isradical-squarefree--935ad7bea1f049c3b75600f4.md) | 175 | `result-track:935ad7bea1f049c3b75600f4ab75e0f01dbd87144ed03da30a5c69c7c396156b` |
| 24 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-right--8c4a39a9ba79672af298cab8.md) | 183 | `result-track:8c4a39a9ba79672af298cab84d3ad4e209a877c8be6421d29078a868a7d55f79` |
| 25 | `theorem` | [pow_dvd_of_squarefree_of_pow_succ_dvd_mul_left](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/pow-dvd-of-squarefree-of-pow-succ-dvd-mul-left--2be9d24b763754b87d7dc16f.md) | 195 | `result-track:2be9d24b763754b87d7dc16f1176125eb556d06d91621c12357a91f703f2bae3` |
| 26 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_right](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-right--183b2157e9f8ac03817e43b3.md) | 203 | `result-track:183b2157e9f8ac03817e43b3b34938ee0e10f146cf7dcb2968b5b06c351cc912` |
| 27 | `theorem` | [dvd_of_squarefree_of_mul_dvd_mul_left](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/dvd-of-squarefree-of-mul-dvd-mul-left--97908415606993fbbbdf7323.md) | 211 | `result-track:97908415606993fbbbdf73238e6a519513689b64d07219acbf1a158a8902605d` |
| 28 | `theorem` | [squarefree_mul_iff](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-mul-iff--a9a05ae5555aa852b459094e.md) | 219 | `result-track:a9a05ae5555aa852b459094ebf15e908ec1fae10fb60e2b87c15a0f274f440d6` |
| 29 | `theorem` | [isRadical_iff_squarefree_or_zero](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/isradical-iff-squarefree-or-zero--846f682eaf262f78900bac30.md) | 224 | `result-track:846f682eaf262f78900bac30c262f588cd069502afa46d59f9b9d42ea6bab19c` |
| 30 | `theorem` | [isRadical_iff_squarefree_of_ne_zero](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/isradical-iff-squarefree-of-ne-zero--c35fe021c047530db55c9421.md) | 231 | `result-track:c35fe021c047530db55c9421071b0d55ec40eb6f3e96e19acb48629c1ec30dfe` |
| 31 | `lemma` | [_root_.GRWTSK.Algebra.Squarefree.Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.exists_squarefree_dvd_pow_of_ne_zero](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/root-grwtsk-algebra-squarefree-varianteb2bc1f8a37eb6ae6912d7634c0b950ffa--0a1e42ba3414b6800e4f3275.md) | 240 | `result-track:0a1e42ba3414b6800e4f32758fb6fb14a5a9ca7e6aa503d32c4d8e1c615ef648` |
| 32 | `theorem` | [squarefree_iff_nodup_normalizedFactors](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-iff-nodup-normalizedfactors--81f54fa19366482bd70d4a6e.md) | 256 | `result-track:81f54fa19366482bd70d4a6e05eddd1fd153191a8997d82b8b0f73bb9cd258dd` |
| 33 | `theorem` | [squarefree_natAbs](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-natabs--0c1768cf0bf69b59b4bda78e.md) | 285 | `result-track:0c1768cf0bf69b59b4bda78ef081512b359d2796f45f8bcf179e9b1ebdd52d6d` |
| 34 | `theorem` | [squarefree_natCast](../../../../mathematics/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/declarations/squarefree-natcast--c3d50d94642681eda3c69369.md) | 290 | `result-track:c3d50d94642681eda3c69369609e35f0875dc38675891bfc0e0f4b6939953323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
