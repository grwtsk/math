# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3afc1d1509810b20e7cd587748561850c79d12",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3afc1d1509810b20e7cd587748561850c79d12`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Synonym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instmulzeroclass--a3b9510664c2478fc1bb653a.md) | 25 | `declaration-track:a3b9510664c2478fc1bb653a44705eb761783b82e124f929d0e12e37500854b6` |
| 2 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/coe-mul--cea4d0f87b63a9b72e1c8e07.md) | 39 | `result-track:cea4d0f87b63a9b72e1c8e0701cd50a8f62f10ccfa6a61db11a501a7cbdd778d` |
| 3 | `lemma` | [mul_top'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-top--82d382fe53b599aed283c3dd.md) | 41 | `result-track:82d382fe53b599aed283c3dd481f03f0b7ba73f37a981eba3d5e3407f8532f8d` |
| 4 | `lemma` | [mul_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-top--ec3026ce4f917ba317fecfd8.md) | 45 | `result-track:ec3026ce4f917ba317fecfd87b55eef98b22ec641cf5166028f3888e4caa81f7` |
| 5 | `lemma` | [top_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/top-mul--6f6566d6a849d7b4829ff235.md) | 47 | `result-track:6f6566d6a849d7b4829ff235f2c4f1ea5a2960c647703507005ad002f49eb713` |
| 6 | `lemma` | [top_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/top-mul--91b811e580a911e721f2c2c5.md) | 51 | `result-track:91b811e580a911e721f2c2c515ce274e07c577e0deb1008c6280a903505d4c34` |
| 7 | `lemma` | [top_mul_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/top-mul-top--06a5a7ae99c67aa9ceb467be.md) | 53 | `result-track:06a5a7ae99c67aa9ceb467be34bfc9d24582019779cec88dad4f4e3cfc35aceb` |
| 8 | `lemma` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-def--00644bc7742f185f37555fa2.md) | 55 | `result-track:00644bc7742f185f37555fa20bbfd46bf39421b772a6ed6bb0d2068bc287b340` |
| 9 | `lemma` | [mul_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-eq-top-iff--6983c58fa8662553a7103cba.md) | 59 | `result-track:6983c58fa8662553a7103cba21cbf5418616241cea030ada0ff448d04100f7f2` |
| 10 | `lemma` | [mul_coe_eq_bind](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-coe-eq-bind--96b94a5ef31a509d5db2616e.md) | 61 | `result-track:96b94a5ef31a509d5db2616eb946b315acef58831d77d4ef45d0e400f2ff2f36` |
| 11 | `lemma` | [coe_mul_eq_bind](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/coe-mul-eq-bind--3124d880007e8c065c6e5e2f.md) | 65 | `result-track:3124d880007e8c065c6e5e2f56cfd6f09b6f0823beedc458d933907d74dc6104` |
| 12 | `lemma` | [untopD_zero_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/untopd-zero-mul--1985878dc477d258de5bc1ac.md) | 70 | `result-track:1985878dc477d258de5bc1ac78f62231b53a08710af405b6b79287356989fd71` |
| 13 | `theorem` | [mul_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-ne-top--e34d4dee3c15cd606098b92b.md) | 80 | `result-track:e34d4dee3c15cd606098b92ba5d0c63b93cc8def03aaa4403540cb660317f0b1` |
| 14 | `theorem` | [mul_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-lt-top--cfc7eb9d8f451f959bb7dc79.md) | 83 | `result-track:cfc7eb9d8f451f959bb7dc79544be568b1489be081028560fe6b342dd2fd2aed` |
| 15 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instnozerodivisors--7461a294259071b87f7d5344.md) | 87 | `declaration-track:7461a294259071b87f7d5344312f777f2e4fb9066a86494153eaf13905fe0b7b` |
| 16 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instmulzerooneclass--2b31168fbaf43621052def11.md) | 96 | `declaration-track:2b31168fbaf43621052def11d34ac51d312a495b24e889b81d04cecc9541d094` |
| 17 | `def` | [_root_.MonoidWithZeroHom.withTopMap](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/root-monoidwithzerohom-withtopmap--48c0a2cfc6f62b628d1d48e0.md) | 107 | `declaration-track:48c0a2cfc6f62b628d1d48e09a7acc221b272c9791b3633a60e6965e98e42a5c` |
| 18 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instsemigroupwithzero--b90e4a0006c715e9de423b82.md) | 126 | `declaration-track:b90e4a0006c715e9de423b826930fdd569b93e04c7c04dfc5b8c8a6f10f3a6fd` |
| 19 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instmonoidwithzero--ca957eb10d1c8d3020361c90.md) | 144 | `declaration-track:ca957eb10d1c8d3020361c9068c35f7f21a90dc9eb4cc53ce92eab1aad41c0d4` |
| 20 | `lemma` | [coe_pow](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/coe-pow--0303b9162857b993db05f114.md) | 154 | `result-track:0303b9162857b993db05f11474e6245fd1b20168bd55e0d1f38a15b1b291b461` |
| 21 | `lemma` | [top_pow](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/top-pow--c5af1ee6a28577e77be32651.md) | 156 | `result-track:c5af1ee6a28577e77be3265175d840e40ba63d7249b5c4d11d4d19368911b6ce` |
| 22 | `lemma` | [pow_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-eq-top-iff--48420831929d45755e3937f0.md) | 158 | `result-track:48420831929d45755e3937f05a725caf20c7fc3aa1e16a13d782089dc00c9dbd` |
| 23 | `lemma` | [pow_ne_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-ne-top-iff--321a19ef7ff865e24858d8a4.md) | 161 | `result-track:321a19ef7ff865e24858d8a45b9254060cf4e2cb1dd39cde4337b5efc30fce1d` |
| 24 | `lemma` | [pow_lt_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-lt-top-iff--ddb029cdd547eb86dc55d381.md) | 163 | `result-track:ddb029cdd547eb86dc55d381de286ca7782a9c677522adc628d948cc5c0d05d3` |
| 25 | `lemma` | [eq_top_of_pow](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/eq-top-of-pow--71704cf21ac98fd6a2c987ae.md) | 166 | `result-track:71704cf21ac98fd6a2c987aed0b154528e89d4b06bf86d5f899ec9973c6b6b35` |
| 26 | `lemma` | [pow_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-ne-top--b9ce69b5b6065a6c373c6358.md) | 167 | `result-track:b9ce69b5b6065a6c373c63587eb19ff43c0783a879adb57a3507baf5757f0f65` |
| 27 | `lemma` | [pow_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-lt-top--b6dc46705e4a8def572deac4.md) | 168 | `result-track:b6dc46705e4a8def572deac47069cb834edbc8a71fc08e257ea6c08cb4b799fd` |
| 28 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instcommmonoidwithzero--db854224236b3c66b56edbd5.md) | 172 | `declaration-track:db854224236b3c66b56edbd5e587469453bdf707537b64f630065754d6bf265c` |
| 29 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instnonunitalnonassocsemiring--280f30155a719cffcb553e17.md) | 177 | `declaration-track:280f30155a719cffcb553e175b817f8711a126be11464e731e4ea892eba4e056` |
| 30 | `instance` | [instNonAssocSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instnonassocsemiring--65d68c35a4019de8452e1865.md) | 196 | `declaration-track:65d68c35a4019de8452e1865046f84f430a67e524b40030d73f956a6b0a3398f` |
| 31 | `instance` | [instNonUnitalSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instnonunitalsemiring--b75a5985ef913b217cfedff7.md) | 202 | `declaration-track:b75a5985ef913b217cfedff78b18d8e300cc4503d799e7fe3c12f39171e69588` |
| 32 | `instance` | [instSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instsemiring--0e04e71d234b6b052422de6c.md) | 207 | `declaration-track:0e04e71d234b6b052422de6c3a8ef51604a5ec66fc7d31b22a9d53747a33ff8c` |
| 33 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instcommsemiring--ce40d2723561d9f86b10ab66.md) | 213 | `declaration-track:ce40d2723561d9f86b10ab66a85a7b5371cbcc94111591a737bb546239c294a5` |
| 34 | `instance` | [instIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instisorderedring--8ef82e9a81b84d09ebcdc366.md) | 218 | `declaration-track:8ef82e9a81b84d09ebcdc366333a666ea7a69aa06d148c217afe6eb552c2a54f` |
| 35 | `def` | [_root_.RingHom.withTopMap](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/root-ringhom-withtopmap--70cc1bb146965c45e429809c.md) | 224 | `declaration-track:70cc1bb146965c45e429809c72fba5150bd1017cc61b1e7fff7b6cc2553108d7` |
| 36 | `lemma` | [mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-lt-mul--66c5775bb32cb503e2adecd7.md) | 237 | `result-track:66c5775bb32cb503e2adecd731e65f5e586b2be857ca9f09828541088604f069` |
| 37 | `lemma` | [pow_right_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-right-strictmono--53184828b38f3155880f54dc.md) | 257 | `result-track:53184828b38f3155880f54dcfd6ceba3299dc5dbf2fc79ac253f35b2d90f1b62` |
| 38 | `lemma` | [pow_lt_pow_left](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/pow-lt-pow-left--a2f7ef8fadb99ac017ed11b1.md) | 264 | `result-track:a2f7ef8fadb99ac017ed11b118f6f12e54ed2819440ae52b73f73c6875cd7cdf` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--64b5c059758f84c0cfd5f21c.md) | 276 | `declaration-track:64b5c059758f84c0cfd5f21c1883642247338cc8fe353a9d16d07b065aa39f21` |
| 40 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/coe-mul--013ec45073609e1392243fa3.md) | 278 | `result-track:013ec45073609e1392243fa3b9081095624ea7f204cd0073b49a13fb17bec215` |
| 41 | `lemma` | [mul_bot'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-bot--ee1d763229cf09cf2422f624.md) | 280 | `result-track:ee1d763229cf09cf2422f624ec6e51434a62dfec066756b88e8e7832d4f5cc18` |
| 42 | `lemma` | [mul_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-bot--d01665d508db5a3b3feace03.md) | 284 | `result-track:d01665d508db5a3b3feace03027c35d85ec6a171c6a6485597e4478a5d00a3e4` |
| 43 | `lemma` | [bot_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/bot-mul--82b313bf3a787c3858a78b5e.md) | 286 | `result-track:82b313bf3a787c3858a78b5e466e4496f0bb8569810cc985e406c475da82b023` |
| 44 | `lemma` | [bot_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/bot-mul--f3316d3a3c67d9c0821702cf.md) | 290 | `result-track:f3316d3a3c67d9c0821702cf7cccbf954d5108fdd0e1f7468e7631280daa47e5` |
| 45 | `lemma` | [bot_mul_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/bot-mul-bot--f07162ea8126998faebad664.md) | 292 | `result-track:f07162ea8126998faebad6648a2157b2d5f3313941eb896020e88e6b6b7f27a2` |
| 46 | `lemma` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-def--4a5fae7898cae86e1eeda99b.md) | 294 | `result-track:4a5fae7898cae86e1eeda99be0e79c0a06c515bf615c54471c65d6fdbb6443ff` |
| 47 | `lemma` | [mul_eq_bot_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-eq-bot-iff--1ed000ba49cb11735850fd30.md) | 298 | `result-track:1ed000ba49cb11735850fd30dbc157cd8af509154ee644b2e31bd8c0466c634b` |
| 48 | `lemma` | [mul_coe_eq_bind](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-coe-eq-bind--6c3323b9ddb6c1df2d3020ae.md) | 300 | `result-track:6c3323b9ddb6c1df2d3020ae4be2d3021640cb0671c0d0982752f8756d1e402e` |
| 49 | `lemma` | [coe_mul_eq_bind](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/coe-mul-eq-bind--d98a4ae03f8ae11d51b87a2a.md) | 304 | `result-track:d98a4ae03f8ae11d51b87a2a71eb12808b8b0a057356002b3b734fd08563085c` |
| 50 | `lemma` | [unbotD_zero_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/unbotd-zero-mul--feefd8454e92ff9c265380e9.md) | 309 | `result-track:feefd8454e92ff9c265380e9a3fecee4dd707128d9cbc3e5774c51d8cda3f83a` |
| 51 | `theorem` | [mul_ne_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/mul-ne-bot--fe119e8607bbec0b52794f0e.md) | 319 | `result-track:fe119e8607bbec0b52794f0e51cce2cbcbfe118c89a9b35b3504199d577731e0` |
| 52 | `theorem` | [bot_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/bot-lt-mul--7551b8a193a9b95678cbcbae.md) | 322 | `result-track:7551b8a193a9b95678cbcbaef4cae5a99a000d083cbea4112a9b95c571d739cd` |
| 53 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instnozerodivisors--9e1e4e1dc16d8dc22138abeb.md) | 325 | `declaration-track:9e1e4e1dc16d8dc22138abebc3f9c25b537ee2d7d5fbb830f10d2b2657f8fd7c` |
| 54 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instmulzerooneclass--4a2ff3d1617c4a4cab8f4b9b.md) | 331 | `declaration-track:4a2ff3d1617c4a4cab8f4b9b85b066482ac3c97a63fc084f297bff3982d624f3` |
| 55 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instsemigroupwithzero--b65f77d1734e81fafbd19cb7.md) | 334 | `declaration-track:b65f77d1734e81fafbd19cb7693ba7c77d70840d9432b81198f4725d7a69b168` |
| 56 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instmonoidwithzero--16908688eb1bf5e12ac07f9b.md) | 340 | `declaration-track:16908688eb1bf5e12ac07f9b9cd17b3bd881f5a16bd26d03ed756bf8a45eee4a` |
| 57 | `lemma` | [coe_pow](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/coe-pow--dadb0d3ac7bc0859eb62feef.md) | 342 | `result-track:dadb0d3ac7bc0859eb62feef6997e7af5e6c54a5a5463c1c06af37625dcc4f49` |
| 58 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instcommmonoidwithzero--1940c8b0e303c20302431f7c.md) | 346 | `declaration-track:1940c8b0e303c20302431f7c6dacc314159ede74380461c42d2007ea519fefaf` |
| 59 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instcommsemiring--f65bb43c4a59e374ff696473.md) | 350 | `declaration-track:f65bb43c4a59e374ff696473d7f6bc812e9e8f36da7b4882bfc806a6dae22fd6` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--7dae45a4b16421371b7f1909.md) | 355 | `declaration-track:7dae45a4b16421371b7f19094d03e944c88bef85a2287f08f4a9a97aeb19eb4b` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--2674fa6a1ae15976d4fe0911.md) | 372 | `declaration-track:2674fa6a1ae15976d4fe0911a45a7ba122c5647936e29f8e89c98ab2aa0b99aa` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--070c0fbdf478c3bb7824a0f9.md) | 389 | `declaration-track:070c0fbdf478c3bb7824a0f9c82dba3067a2391286c0a48ac23798a2aca7e4cc` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--f55ad707dfc835db73059bf0.md) | 402 | `declaration-track:f55ad707dfc835db73059bf0f6a4705b1996c20c40cd83815977a52ff02b9351` |
| 64 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--cb47032267f5106049f8804c.md) | 415 | `declaration-track:cb47032267f5106049f8804ce5c3fddea90ecdfa342b48077a642aa04d1fcd33` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--db6029c7d7eab5b746355e17.md) | 433 | `declaration-track:db6029c7d7eab5b746355e174e76533d0cc707eaea7abf95a3fc8a0211725658` |
| 66 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--41cce37e7a7eaff4e5f5296e.md) | 451 | `declaration-track:41cce37e7a7eaff4e5f5296ef1fae9b1de41631afb7fff851ee08e441a3fc219` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instance--79c9a454b82b68cf43eb428a.md) | 465 | `declaration-track:79c9a454b82b68cf43eb428ab7eb1f67a548382c8f90cad2af003c5a036fe121` |
| 68 | `instance` | [instIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/declarations/instisorderedring--0d7a0bd68f29ce0f42ef546c.md) | 479 | `declaration-track:0d7a0bd68f29ce0f42ef546c60ed5344f7809bbfa98fe523a62b3d52db0834e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
