# Verification target: GRWTSK.Algebra.Basic.Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d9a064408c2efa9f5858dc20e54455dc1c3e63",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d9a064408c2efa9f5858dc20e54455dc1c3e63`.

Source path: `GRWTSK/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_int_int_abs_mul_sub_le](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/exists-int-int-abs-mul-sub-le--e52999ec3b4519457fc1bbdf.md) | 91 | `result-track:e52999ec3b4519457fc1bbdf8a65d6ca7a93522c36b6e089dd5e6813c53bcf2e` |
| 2 | `theorem` | [exists_nat_abs_mul_sub_round_le](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/exists-nat-abs-mul-sub-round-le--32e729bc28adda6194b60dc4.md) | 132 | `result-track:32e729bc28adda6194b60dc47fae3a5b24682af415271689cf0c4f2cb2cdc974` |
| 3 | `theorem` | [exists_rat_abs_sub_le_and_den_le](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/exists-rat-abs-sub-le-and-den-le--2712da138e3d2d141c39f106.md) | 144 | `result-track:2712da138e3d2d141c39f106ba4d08644b1cb59914f74333f36e31ef421e9c7b` |
| 4 | `theorem` | [exists_rat_abs_sub_lt_and_lt_of_irrational](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/exists-rat-abs-sub-lt-and-lt-of-irrational--9c794da3afcc8cafb32e385d.md) | 173 | `result-track:9c794da3afcc8cafb32e385dd9c01d7bcdf5e11837ce0a95bc3cdc7cd935da8b` |
| 5 | `theorem` | [infinite_rat_abs_sub_lt_one_div_den_sq_of_irrational](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/infinite-rat-abs-sub-lt-one-div-den-sq-of-irrational--28a7f8dca93b243e7881c795.md) | 194 | `result-track:28a7f8dca93b243e7881c79568902a9cd6f4e449f23a3ab7d5e9b1910711b1bb` |
| 6 | `theorem` | [den_le_and_le_num_le_of_sub_lt_one_div_den_sq](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/den-le-and-le-num-le-of-sub-lt-one-div-den-sq--7e8fd19863792b143338ff07.md) | 221 | `result-track:7e8fd19863792b143338ff0746ac199b0900b9b3c8dd7afc1c030eb12f1e60dc` |
| 7 | `theorem` | [finite_rat_abs_sub_lt_one_div_den_sq](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/finite-rat-abs-sub-lt-one-div-den-sq--e0c5a1a46c70bbb319f6bfc9.md) | 250 | `result-track:e0c5a1a46c70bbb319f6bfc90ecaf2915fb5a5525cb8b38703452f36922d7c34` |
| 8 | `theorem` | [Real.infinite_rat_abs_sub_lt_one_div_den_sq_iff_irrational](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/real-infinite-rat-abs-sub-lt-one-div-den-sq-iff-irrational--dcd1e561ac8614c4a65f8305.md) | 274 | `result-track:dcd1e561ac8614c4a65f8305604000eaa3c4559a80554f301cb6837aea921c13` |
| 9 | `def` | [convergent](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/convergent--1d167e8fc1bf6cf0172192bb.md) | 319 | `declaration-track:1d167e8fc1bf6cf0172192bb75b6088a30fa4c15fcb3045d52c320dedc5fc136` |
| 10 | `theorem` | [convergent_zero](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/convergent-zero--4e9f11fcb062083e769ee72c.md) | 325 | `result-track:4e9f11fcb062083e769ee72cf9db72771f8503bc9390c40d9f906b2c0e4da8a3` |
| 11 | `theorem` | [convergent_succ](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/convergent-succ--1ee72be9fbc5b6c45bb0293d.md) | 330 | `result-track:1ee72be9fbc5b6c45bb0293d41c5344a3430b50a1440b835dedefd4b48d851c5` |
| 12 | `theorem` | [convergent_of_zero](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/convergent-of-zero--6882a54dd09d7e189a048e38.md) | 336 | `result-track:6882a54dd09d7e189a048e3861a5dea33721c9d73872ee29146a6a7b8e893ad7` |
| 13 | `theorem` | [convergent_of_int](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/convergent-of-int--12d58da7c969270574253c16.md) | 344 | `result-track:12d58da7c969270574253c16a9541da261ad129ce381e2e0bd4329ced4c110fa` |
| 14 | `def` | [ContfracLegendre.Ass](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/contfraclegendre-ass--0c762eeeffe26376d89c9bf4.md) | 365 | `declaration-track:0c762eeeffe26376d89c9bf488588cc174d312450ea0b84d01945ac30f33ad0f` |
| 15 | `theorem` | [aux₀](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/aux--0e8d65aa115c8c428ca6cbfa.md) | 371 | `result-track:0e8d65aa115c8c428ca6cbfa3be54f1ac890c5a1c491c6217a3123afe60e05b5` |
| 16 | `theorem` | [aux₁](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/aux--69f28eeeb762c105d465b673.md) | 382 | `result-track:69f28eeeb762c105d465b67373ce0f71836e237d27527351ddf294b2c7119432` |
| 17 | `theorem` | [aux₂](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/aux--b8482ce68f51937b61a58657.md) | 400 | `result-track:b8482ce68f51937b61a5865794d718ec9babe44f1159febc48f90c7f3b987902` |
| 18 | `theorem` | [aux₃](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/aux--26613e5614b197996b4d8cc0.md) | 435 | `result-track:26613e5614b197996b4d8cc09e6d81a6779c5c41d0d7f5e6705169267715d453` |
| 19 | `theorem` | [invariant](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/invariant--50cbcfcf735391ce8ab6a8ee.md) | 474 | `result-track:50cbcfcf735391ce8ab6a8eef5ab0e8c47c6842efa5722e49c87a5c9181b2458` |
| 20 | `theorem` | [exists_rat_eq_convergent'](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/exists-rat-eq-convergent--12503f848947486e2b2d27b1.md) | 496 | `result-track:12503f848947486e2b2d27b1692ce0ed76bfb341a59be6ec443dd16d2290f0e2` |
| 21 | `theorem` | [exists_rat_eq_convergent](../../../../mathematics/Algebra/Basic/Variant383caf6c053b152f9d817c4960a23ff735b1a7472f8caa7c5b6e4e22cca3b0c3.lean/declarations/exists-rat-eq-convergent--27f49824650467d404b987f9.md) | 542 | `result-track:27f49824650467d404b987f9b58ff5bb3c082820ec5058cc52b20ef46c8f620e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
