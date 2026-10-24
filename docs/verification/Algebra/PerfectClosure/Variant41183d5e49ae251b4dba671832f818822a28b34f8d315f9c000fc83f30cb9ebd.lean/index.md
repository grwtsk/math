# Verification target: GRWTSK.Algebra.PerfectClosure.Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62e8cede2da3b4735071dd87d11e2fa79366b17a",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/index.md) · [Full source](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62e8cede2da3b4735071dd87d11e2fa79366b17a`.

Source path: `GRWTSK/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PerfectClosure.R](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/perfectclosure-r--be816a72f2a39e884880aca6.md) | 61 | `declaration-track:be816a72f2a39e884880aca6ffd8c61eee724bbb2ff1f71532cf8e6efd0049ee` |
| 2 | `def` | [PerfectClosure](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/perfectclosure--27552af98e54be7ca1f16912.md) | 65 | `declaration-track:27552af98e54be7ca1f16912011698bc77b3c5b424f0cc613fdab623de115bb2` |
| 3 | `def` | [mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk--4a6a7bf45c8d5af89de76fb8.md) | 81 | `declaration-track:4a6a7bf45c8d5af89de76fb8362505576c5dab22c338f0e6058275a5ce055f74` |
| 4 | `theorem` | [mk_surjective](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-surjective--ef038863ec28f09f91d92c06.md) | 84 | `result-track:ef038863ec28f09f91d92c06daf8c949bcc41c8a9cfdf3fec96c0daea4bd43ba` |
| 5 | `theorem` | [mk_succ_pow](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-succ-pow--04999ea9b34a9316fdb69dab.md) | 86 | `result-track:04999ea9b34a9316fdb69dab545a1ad0a3c8a30d604a4c47b61940fd57b1af7b` |
| 6 | `theorem` | [quot_mk_eq_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/quot-mk-eq-mk--487a5c2dedea203168d9d092.md) | 90 | `result-track:487a5c2dedea203168d9d092326d738f12ae43e5f7d41ae62bd26e6d02cb583b` |
| 7 | `def` | [liftOn](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/lifton--0046ffe4f6ff70be150edf37.md) | 96 | `declaration-track:0046ffe4f6ff70be150edf3789b5e6f004d9f98228ebad5c3acfdfae1be31581` |
| 8 | `theorem` | [liftOn_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/lifton-mk--ff65eb1ed5319cfd5e14c33a.md) | 101 | `result-track:ff65eb1ed5319cfd5e14c33a011c8065079f804e46ebabcdedbd5ffe200c831d` |
| 9 | `theorem` | [induction_on](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/induction-on--5a75d0e156c87b0a8bac9a95.md) | 106 | `result-track:5a75d0e156c87b0a8bac9a95aeae326ad3ff107b8a062d7b792fd817414071db` |
| 10 | `theorem` | [mul_aux_left](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mul-aux-left--00840f4fc0b42163c1fb9cd2.md) | 112 | `result-track:00840f4fc0b42163c1fb9cd2960b5c497c2dfb8264ae937fe3b5c2cb6ce0483c` |
| 11 | `theorem` | [mul_aux_right](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mul-aux-right--693dc7b85231b83e117216c3.md) | 122 | `result-track:693dc7b85231b83e117216c3fcd0308ee2c15fd4073aac56a025476682f2507a` |
| 12 | `instance` | [instMul](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instmul--25ef6c8131c9c67aad52ed70.md) | 131 | `declaration-track:25ef6c8131c9c67aad52ed70e23e440244160a92586c90134651016c0a80f0e6` |
| 13 | `theorem` | [mk_mul_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-mul-mk--55f4408af7527a88986dfb90.md) | 142 | `result-track:55f4408af7527a88986dfb900d262f741ce0d3dcc09ea63b5aebf3aa1f24a116` |
| 14 | `instance` | [instCommMonoid](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instcommmonoid--544ae62201f9971136d76494.md) | 147 | `declaration-track:544ae62201f9971136d76494879a4c029b5cc5221d5ed48c3989d7f0e5a48f96` |
| 15 | `theorem` | [one_def](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/one-def--38c2834b301526031e11ce7f.md) | 171 | `result-track:38c2834b301526031e11ce7f3d2cf74da40214795d73727d6a83449dc29fa1b8` |
| 16 | `instance` | [instInhabited](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instinhabited--b164eb92ba287751d92f086c.md) | 174 | `declaration-track:b164eb92ba287751d92f086cf3170deed0c9e5ff4e8ab4fe0f9a662037d77998` |
| 17 | `theorem` | [add_aux_left](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/add-aux-left--9e19730fb186c1f583037309.md) | 177 | `result-track:9e19730fb186c1f583037309794790ba3b1cd7eca2c65fe76a4284a87441d426` |
| 18 | `theorem` | [add_aux_right](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/add-aux-right--c06dfaa9d85dbad3b6a600f7.md) | 187 | `result-track:c06dfaa9d85dbad3b6a600f7c7a1c3229653d41155120fcccae445877fecc68b` |
| 19 | `instance` | [instAdd](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instadd--60002fb720ba0603f582ce1d.md) | 196 | `declaration-track:60002fb720ba0603f582ce1da3e81bbb2110e18e25e0ba56dd819e0a24792c0f` |
| 20 | `theorem` | [mk_add_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-add-mk--907d6591cb554151602fc8af.md) | 207 | `result-track:907d6591cb554151602fc8af9e7aef05585e9bac04b31e785506df6ab47e70b1` |
| 21 | `instance` | [instNeg](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instneg--04428a7bbbeacec7221e154b.md) | 212 | `declaration-track:04428a7bbbeacec7221e154b35056160d23a2f00210187dfb74001775593c79a` |
| 22 | `theorem` | [neg_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/neg-mk--bddea4f535a01f09b092b71c.md) | 218 | `result-track:bddea4f535a01f09b092b71c8293a092c05ba0227e583aadd6dd173c6ce37015` |
| 23 | `instance` | [instZero](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instzero--48db318282dd8a53b3ce90f0.md) | 221 | `declaration-track:48db318282dd8a53b3ce90f055f6a0b88c388b37d44551978c2ce1f3979dba96` |
| 24 | `theorem` | [zero_def](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/zero-def--776f7639d67c940d1fc95877.md) | 224 | `result-track:776f7639d67c940d1fc95877290dad9b4ccada7c9f69cd05340603d4329b0004` |
| 25 | `theorem` | [mk_zero](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-zero--0c2596cd16564369f88dcc84.md) | 230 | `result-track:0c2596cd16564369f88dcc842da65344dd12cff89a04c124b2310dc2665065e1` |
| 26 | `theorem` | [mk_zero_right](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-zero-right--2236e4151b25679551985ffa.md) | 234 | `result-track:2236e4151b25679551985ffa5ee95baaca2a744fb9cb513778dace0215959e54` |
| 27 | `theorem` | [R.sound](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/r-sound--2f96b2303c40a07515b27a35.md) | 243 | `result-track:2f96b2303c40a07515b27a358eb3c56d873552ff117b8511c6cbda23e23dfb43` |
| 28 | `instance` | [instAddCommGroup](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instaddcommgroup--b26c8198acc9f199ecf15a53.md) | 252 | `declaration-track:b26c8198acc9f199ecf15a53b0824d364f757de79c805cf14ecfd6627117ebe9` |
| 29 | `instance` | [instCommRing](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instcommring--c895a81b08bc5d63cfb14cc7.md) | 281 | `declaration-track:c895a81b08bc5d63cfb14cc78212245dad6a171826b16e9a3d747331e96d72d6` |
| 30 | `theorem` | [mk_eq_iff](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-eq-iff--8996fe9854bdf0d8cc530979.md) | 312 | `result-track:8996fe9854bdf0d8cc5309792b502216c6b836794437a3e4711751495a2ffef9` |
| 31 | `theorem` | [mk_pow](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-pow--9a45995db53a82e205c7e395.md) | 337 | `result-track:9a45995db53a82e205c7e395ed29a6ea0e52b86ee02bee7c134e6ebf948d4ea1` |
| 32 | `theorem` | [natCast](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/natcast--fb5773be2dda5caeac58f9b9.md) | 347 | `result-track:fb5773be2dda5caeac58f9b95011d2b6f008a6da4038969989dc95a649082fbd` |
| 33 | `theorem` | [intCast](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/intcast--8f1c998e9c4bf4602e79fbb9.md) | 358 | `result-track:8f1c998e9c4bf4602e79fbb90f5c67cadf89b53b64c2f36459aa58e0fc4b29e9` |
| 34 | `theorem` | [natCast_eq_iff](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/natcast-eq-iff--68f65419726169f0d04c9df6.md) | 361 | `result-track:68f65419726169f0d04c9df6a96b9589828294726347bd99145c806064dbeaea` |
| 35 | `instance` | [instCharP](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instcharp--8eeb339037b2fcb2dd0c6930.md) | 368 | `declaration-track:8eeb339037b2fcb2dd0c6930f4037b663969413aa444e89c6d78a546dd571979` |
| 36 | `theorem` | [frobenius_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/frobenius-mk--db18c3ad2d3820ec2b0f3aa6.md) | 372 | `result-track:db18c3ad2d3820ec2b0f3aa666628bd64cd3ef15ed627f84c9d368c8f1a2d695` |
| 37 | `def` | [of](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/of--348d31186ebd42e55a0a5956.md) | 379 | `declaration-track:348d31186ebd42e55a0a5956eb690fff248ececb217c7796398e4565feb34f91` |
| 38 | `theorem` | [of_apply](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/of-apply--d8b4b975bf2d62e534fc4c57.md) | 386 | `result-track:d8b4b975bf2d62e534fc4c578dd395d638670e372dcb4fba73ff189da9fc56d5` |
| 39 | `instance` | [instReduced](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instreduced--411262628029295eca215516.md) | 389 | `declaration-track:411262628029295eca2155163f1035753158554b3c86bb66433e038e1e2c3033` |
| 40 | `instance` | [instPerfectRing](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instperfectring--eb12321718e244d58262412c.md) | 398 | `declaration-track:eb12321718e244d58262412ca59e94d5bafdb6c448d5c17d6a03dc6d6c44d022` |
| 41 | `theorem` | [iterate_frobenius_mk](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/iterate-frobenius-mk--0d2878856d0d88a90682653d.md) | 409 | `result-track:0d2878856d0d88a90682653d73763c2d252f1541078a2db4d349eee5bcde3cac` |
| 42 | `def` | [lift](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/lift--bc1de0ed993aa33ff311ebe9.md) | 417 | `declaration-track:bc1de0ed993aa33ff311ebe95d0e045f154cbdc8005ac3050c5bdebb67fe1615` |
| 43 | `theorem` | [eq_iff](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/eq-iff--1dce5a4a46da3d2fbb7f9085.md) | 450 | `result-track:1dce5a4a46da3d2fbb7f9085dd2df8d5303c73044462a1dc81491a479bab7a2e` |
| 44 | `instance` | [instInv](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instinv--16f2f9b3171446be80708070.md) | 460 | `declaration-track:16f2f9b3171446be80708070eba6544e178b86517a8c1a9f5b98a7b67200fee1` |
| 45 | `theorem` | [mk_inv](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/mk-inv--e874c372fc8ecd5623b7f900.md) | 470 | `result-track:e874c372fc8ecd5623b7f900079b20d3ff2defc7e9b476e31bd7521c8946159a` |
| 46 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instdivisionring--ffba5efce3d16f7a8c180470.md) | 473 | `declaration-track:ffba5efce3d16f7a8c180470a4f7dbe7bde9b14c797204a5ae3a8847232ea465` |
| 47 | `instance` | [instField](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instfield--4a70e73ca3540cd2fa5d9c70.md) | 487 | `declaration-track:4a70e73ca3540cd2fa5d9c707db55316bae3c387918b1bd953ef175cfd37fea9` |
| 48 | `instance` | [instPerfectField](../../../../mathematics/Algebra/PerfectClosure/Variant41183d5e49ae251b4dba671832f818822a28b34f8d315f9c000fc83f30cb9ebd.lean/declarations/instperfectfield--093a94307d05a251b9aeb90f.md) | 491 | `declaration-track:093a94307d05a251b9aeb90fd2fb4ebf8bc2a717ed4acf3728797b866d2cfa83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
