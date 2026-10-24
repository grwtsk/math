# Verification target: GRWTSK.Algebra.Integral.Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47006b07cbee8d38f05dfd040e1fbcdcccabf3f3",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47006b07cbee8d38f05dfd040e1fbcdcccabf3f3`.

Source path: `GRWTSK/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Algebraic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegral.isAlgebraic](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isintegral-isalgebraic--aa8cc2c85ed407c0889cb422.md) | 55 | `result-track:aa8cc2c85ed407c0889cb4220d0fc41c2d5df809beee4450d5f14919d63b63ec` |
| 2 | `instance` | [Algebra.IsIntegral.isAlgebraic](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isintegral-isalgebraic--a28e67cf0d2937b97a200ec2.md) | 58 | `declaration-track:a28e67cf0d2937b97a200ec2a513a03dd50228b0ba9f67a85ed0be601fdd3f44` |
| 3 | `theorem` | [isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-iff-isintegral--06d1bb36744480d7e12d22cd.md) | 68 | `result-track:06d1bb36744480d7e12d22cd06007bdf5433898e122eba6ffebce9c6adead7e1` |
| 4 | `theorem` | [Algebra.isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-iff-isintegral--83b95b5db948da506fdd9345.md) | 74 | `result-track:83b95b5db948da506fdd9345e412d815d9d342fb5b573460e4f512b8cfd1e749` |
| 5 | `instance` | [Algebra.IsAlgebraic.isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-isintegral--51a90c4e25e62af9cc2a9de9.md) | 83 | `declaration-track:51a90c4e25e62af9cc2a9de91b219496959d536a1a4545d6e90dbcd179a27fe3` |
| 6 | `theorem` | [Algebra.IsAlgebraic.of_isIntegralClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-of-isintegralclosure--6913d05e344a7417488feb60.md) | 86 | `result-track:6913d05e344a7417488feb60625f4b26dcb4b2767af285bd69178e96d11d4c13` |
| 7 | `theorem` | [IsAlgebraic.of_finite](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-of-finite--b407649ce60537af684b56f7.md) | 102 | `result-track:b407649ce60537af684b56f753f4cca9b8aec60849cef964a9f93f21fb8b06d7` |
| 8 | `instance` | [Algebra.IsAlgebraic.of_finite](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-of-finite--ef380b2452247105bc356121.md) | 109 | `declaration-track:ef380b2452247105bc356121967f31893272150a174e418f007a84a979ba1b46` |
| 9 | `theorem` | [transcendental_aeval_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/transcendental-aeval-iff--576a5fced4545f4f6901399e.md) | 122 | `result-track:576a5fced4545f4f6901399ea060693103ba8253737adce442945ae3f1e2205f` |
| 10 | `theorem` | [AlgHom.bijective](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/alghom-bijective--3d99365a47f55a49d181bf11.md) | 132 | `result-track:3d99365a47f55a49d181bf119e3255d9bb04729a3ad3ffa0913bc4b9ad83b497` |
| 11 | `abbrev` | [algEquivEquivAlgHom](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algequivequivalghom--a7a76b6cd5703077393496d7.md) | 137 | `declaration-track:a7a76b6cd5703077393496d78176f991af78c1a3f33e52bb4803e2f61305978b` |
| 12 | `theorem` | [exists_integral_multiple](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/exists-integral-multiple--9ef1a8eaf2448b81880ef628.md) | 151 | `result-track:9ef1a8eaf2448b81880ef628b888dac93121df6dc0efcf50dddc2a5349b14dad` |
| 13 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegralIsAlgebraic.Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.Algebra.IsAlgebraic.exists_integral_multiples](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/root-grwtsk-algebra-isintegralisalgebraic-variant2a31d9697b0d9ce56ffafba--512c358ce631a826a2edca89.md) | 168 | `result-track:512c358ce631a826a2edca895e37e31f79bc2991e23476317fbf0325c27be3dd` |
| 14 | `theorem` | [of_smul_isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/of-smul-isintegral--fa3d86ee2e616d08bd4075cd.md) | 177 | `result-track:fa3d86ee2e616d08bd4075cd00632df79119f4b317ee253c72c83aa6a6a328ed` |
| 15 | `theorem` | [of_smul](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/of-smul--b204147a5d5e7ede9f6f279a.md) | 188 | `result-track:b204147a5d5e7ede9f6f279a357c55ccdde9a6ac3646f2e2a3e46921f7c1fbd4` |
| 16 | `theorem` | [iff_exists_smul_integral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/iff-exists-smul-integral--d1d8c3e4f9fef4ed38f8dad9.md) | 193 | `result-track:d1d8c3e4f9fef4ed38f8dad99d732403c4ba1c30742598f7f8faf3752519f9e6` |
| 17 | `theorem` | [restrictScalars_of_isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/restrictscalars-of-isintegral--1d8040aa630322162a365f71.md) | 212 | `result-track:1d8040aa630322162a365f71cb2e74f5cccadd554a33273198fbd3db36b4a6e1` |
| 18 | `theorem` | [restrictScalars](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/restrictscalars--114f618be8d1c64be6e21a1e.md) | 228 | `result-track:114f618be8d1c64be6e21a1e4a9a274b45be80441113f788557ba115759f38bf` |
| 19 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegralIsAlgebraic.Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.IsIntegral.trans_isAlgebraic](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/root-grwtsk-algebra-isintegralisalgebraic-variant2a31d9697b0d9ce56ffafba--edaf4dc6cc38b9306599b8c0.md) | 250 | `result-track:edaf4dc6cc38b9306599b8c096b5cad0c6f8cd08ccc07e9077263c53a408f2f6` |
| 20 | `lemma` | [neg](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/neg--e7fb7e49055a815ae2406e1f.md) | 264 | `result-track:e7fb7e49055a815ae2406e1f18bddc5239989785e8e15e729f4f73017483ac10` |
| 21 | `lemma` | [smul](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/smul--5039faa4766c3837f2c0a4f6.md) | 268 | `result-track:5039faa4766c3837f2c0a4f60237fe46715c639972ae7a34338f3c678156a6d7` |
| 22 | `lemma` | [nsmul](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/nsmul--6541806c7f0f680fe3ced9f4.md) | 272 | `result-track:6541806c7f0f680fe3ced9f49448900adf5879b91f240b11fcaab54607502866` |
| 23 | `lemma` | [zsmul](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/zsmul--f3ec64282179e32ab82d8651.md) | 275 | `result-track:f3ec64282179e32ab82d8651211a6ebb3fc1c5d6daa8330ce073e0162232de91` |
| 24 | `lemma` | [mul](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/mul--0901b58ea8142d23c4339b36.md) | 280 | `result-track:0901b58ea8142d23c4339b36ad9d13d5a7c58cddaefd2b38fecf0e066269d532` |
| 25 | `lemma` | [add](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/add--1bc43bdf9336d0d64e90f6b2.md) | 287 | `result-track:1bc43bdf9336d0d64e90f6b25c909318a9dd3be2689cd50c60acabc3fff9ad49` |
| 26 | `lemma` | [sub](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/sub--a91ca4200f2c6d989738dace.md) | 294 | `result-track:a91ca4200f2c6d989738dace9d6313b67121948799b7f3e519a747c10d5852a8` |
| 27 | `lemma` | [pow](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/pow--f04c825f5b5f406c0a4f7dc8.md) | 298 | `result-track:f04c825f5b5f406c0a4f7dc8ee6c67b854848cfab935d6be29770516c67f6f7a` |
| 28 | `theorem` | [IsAlgebraic.trans](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-trans--42244c4264db363309cb2823.md) | 309 | `result-track:42244c4264db363309cb2823fdf6c6703f89cdf3fb2d7cac61904825a421ba81` |
| 29 | `theorem` | [IsIntegral.trans_isAlgebraic](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isintegral-trans-isalgebraic--05fa8bf0351bdc09e3857bc1.md) | 315 | `result-track:05fa8bf0351bdc09e3857bc126672144a2e461a192e769547c62fee849721647` |
| 30 | `theorem` | [IsAlgebraic.trans_isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-trans-isintegral--4c97c889cd8e3e0360ddba3d.md) | 319 | `result-track:4c97c889cd8e3e0360ddba3d389cbe46fa165ab99918a883cc1bbd747d18bfcd` |
| 31 | `theorem` | [IsIntegral.isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isintegral-isalgebraic-iff--4d24f51c3e5f31f34329718a.md) | 325 | `result-track:4d24f51c3e5f31f34329718affcea9ff7f10393907559a15e721fdb224567ddb` |
| 32 | `theorem` | [IsIntegral.isAlgebraic_iff_top](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isintegral-isalgebraic-iff-top--1ffe90e69a0f53f29ccdcb03.md) | 329 | `result-track:1ffe90e69a0f53f29ccdcb03bb5779ab35900d19915b20eafe5e83ad0b7a5d5c` |
| 33 | `theorem` | [IsAlgebraic.isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-isalgebraic-iff--eddf17ad1e49ed00588a626e.md) | 333 | `result-track:eddf17ad1e49ed00588a626efbccb32a04673a171b032182b243f9d5ff4fe04b` |
| 34 | `theorem` | [IsAlgebraic.isAlgebraic_iff_top](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-isalgebraic-iff-top--c0e9f4fc1a7b784b9c62e7bf.md) | 337 | `result-track:c0e9f4fc1a7b784b9c62e7bf9c03ea1d0317f13c1f574160d05d88b5c1383536` |
| 35 | `theorem` | [IsAlgebraic.isAlgebraic_iff_bot](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-isalgebraic-iff-bot--518e66f7accff0d134f3129a.md) | 341 | `result-track:518e66f7accff0d134f3129a8494d3f0117950e7d1f96a535589960e74ee0016` |
| 36 | `def` | [Subalgebra.algebraicClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/subalgebra-algebraicclosure--bf05ab6f1777934bf5a8210e.md) | 350 | `declaration-track:bf05ab6f1777934bf5a8210e95df73e28c3ae034bbcd36c38b2cd1a98909258f` |
| 37 | `theorem` | [Subalgebra.mem_algebraicClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/subalgebra-mem-algebraicclosure--c11e91edfb163734daa535f0.md) | 356 | `result-track:c11e91edfb163734daa535f0b95746217ba054db8fb6bbc21160d1bbf0bc63a2` |
| 38 | `theorem` | [integralClosure_le_algebraicClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/integralclosure-le-algebraicclosure--cb697fb73b09771377fafadb.md) | 359 | `result-track:cb697fb73b09771377fafadb7dffd2d7d6dd622e5b984adac78e790afc1a2357` |
| 39 | `theorem` | [Subalgebra.algebraicClosure_eq_integralClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/subalgebra-algebraicclosure-eq-integralclosure--fc33942b4ce49f8f742b9e3a.md) | 363 | `result-track:fc33942b4ce49f8f742b9e3aa636a2337b8720845a3e75540a2a27dfc7c4bd61` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/instance--452ba257f810fc363e4f1a86.md) | 367 | `declaration-track:452ba257f810fc363e4f1a8611ea106559c1500fc14b38a387d2239d2a09e8e0` |
| 41 | `theorem` | [Algebra.isAlgebraic_adjoin_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-adjoin-iff--402a19842d4a66ece8275bbb.md) | 372 | `result-track:402a19842d4a66ece8275bbba4fde47763cd85fb50737b647eda217b2c45202e` |
| 42 | `theorem` | [Algebra.isAlgebraic_adjoin_of_nonempty](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-adjoin-of-nonempty--dc6a872d7d8a730e8f1c7cb8.md) | 376 | `result-track:dc6a872d7d8a730e8f1c7cb806713be35ca502e71567d365f7f93509d9775ae4` |
| 43 | `theorem` | [Algebra.isAlgebraic_adjoin_singleton_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/algebra-isalgebraic-adjoin-singleton-iff--eff0f56822be16fa5c065517.md) | 386 | `result-track:eff0f56822be16fa5c0655175f2023e227a6a884f1586b37389c220e083b9084` |
| 44 | `theorem` | [IsAlgebraic.of_mul](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-of-mul--e0c87c00e830ab7b6d5b1d60.md) | 390 | `result-track:e0c87c00e830ab7b6d5b1d60f8e71ceadcdd01a7deb700a1d7e1ecc9815b1657` |
| 45 | `theorem` | [IsAlgebraic.adjoin_of_forall_isAlgebraic](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-adjoin-of-forall-isalgebraic--08c490dcf818fc68bb52f14e.md) | 399 | `result-track:08c490dcf818fc68bb52f14ece0a9456e6b1b42579ae2b7b62e9c1bbd09d0bdc` |
| 46 | `lemma` | [extendScalars_of_isIntegral](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/extendscalars-of-isintegral--9fe5a58eb049ed36a3469ac3.md) | 427 | `result-track:9fe5a58eb049ed36a3469ac39bf7221914c3c24a986959020d7507e33cc004bf` |
| 47 | `lemma` | [extendScalars](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/extendscalars--d3cb9cdb5debf766ae00cf25.md) | 433 | `result-track:d3cb9cdb5debf766ae00cf2576608eb22c0f2f9eab31e6c34c4c397d44630cf8` |
| 48 | `lemma` | [integralClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/integralclosure--e8d734403752ad2ceabea17e.md) | 443 | `result-track:e8d734403752ad2ceabea17e8eee0cd8f775ff60be07afeec59d63000ff7e499` |
| 49 | `lemma` | [subalgebraAlgebraicClosure](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/subalgebraalgebraicclosure--1d2b871debc67450b9d8e3b8.md) | 446 | `result-track:1d2b871debc67450b9d8e3b82b4a5765667ed8a44ee49358d22d99ff3b0f9823` |
| 50 | `theorem` | [IsIntegral.transcendental_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isintegral-transcendental-iff--375c695208287f991e6955ad.md) | 455 | `result-track:375c695208287f991e6955ad17d58a84e61223742c56db2d1139644e72d97820` |
| 51 | `theorem` | [IsAlgebraic.transcendental_iff](../../../../mathematics/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/declarations/isalgebraic-transcendental-iff--8a869807ca3c9a5b6321d824.md) | 459 | `result-track:8a869807ca3c9a5b6321d824b1e0c8452b9476b3952fb1b7f3d7090fbabf9b12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
