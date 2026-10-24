# Verification target: GRWTSK.Algebra.UniversalAlgebra.Transcendental.Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9397c5555a168ef248c757c9211b9ab111d5301b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9397c5555a168ef248c757c9211b9ab111d5301b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofRealEndpoints](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/ofrealendpoints--9f07a5f4bfad5d1ee68322c7.md) | 48 | `declaration-track:9f07a5f4bfad5d1ee68322c722ca4010b1085e7df0af0bf5d685ffd3c94ab4c2` |
| 2 | `theorem` | [mem_ofRealEndpoints](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-ofrealendpoints--51e2363394eb5898bf25f312.md) | 58 | `result-track:51e2363394eb5898bf25f312fb9468f637c0e7042e1ac4fb1c19f75aec7a6f5c` |
| 3 | `def` | [expInterval](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/expinterval--dd545757ad19f0c76a93167f.md) | 72 | `declaration-track:dd545757ad19f0c76a93167f6137861ea592ad2386ff563b77bcba4389b00aa8` |
| 4 | `theorem` | [mem_expInterval](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-expinterval--af532e09cb63d09d5d81e294.md) | 77 | `result-track:af532e09cb63d09d5d81e294b223cff6c14071b00c9a0f2117569174b8881b8f` |
| 5 | `def` | [isPositive](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/ispositive--d23c1ac6aa40540025b0d232.md) | 89 | `declaration-track:d23c1ac6aa40540025b0d232000f24b185f6bb4865aab3336440187fbdee3e0d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/instance--a22d7b79ab0eec4aa73b490c.md) | 92 | `declaration-track:a22d7b79ab0eec4aa73b490c0a3d29da40b03a55757e94cd0c45b5cccd6053c4` |
| 7 | `structure` | [IntervalRatPos](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/intervalratpos--16a5e24f8365cd50de35e595.md) | 96 | `declaration-track:16a5e24f8365cd50de35e595557dd0d83112acd9458de6264dd03f761b1e6798` |
| 8 | `def` | [logInterval](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/loginterval--06f1aa54f2dc798b70077471.md) | 104 | `declaration-track:06f1aa54f2dc798b70077471ba2e4907face44282050f1e23c6d4c87ff0a9a0f` |
| 9 | `theorem` | [mem_logInterval](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-loginterval--e23001f2465d7b66bb8dee30.md) | 109 | `result-track:e23001f2465d7b66bb8dee30361e683aeb873d0c99aca7701b69517fb4f426e7` |
| 10 | `structure` | [IntervalRatInUnitBall](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/intervalratinunitball--435a8b62430a7e3f9419547c.md) | 123 | `declaration-track:435a8b62430a7e3f9419547cf8c6264931ef8486e65a5257c2eb64ec530589ea` |
| 11 | `def` | [IntervalRatInUnitBall.toIntervalRat](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/intervalratinunitball-tointervalrat--5421733afbbac95c25a761d6.md) | 131 | `declaration-track:5421733afbbac95c25a761d63400d182f7054ab3ccf01c093e34126834651743` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/instance--8823cfb11fbb42e834a150c8.md) | 135 | `declaration-track:8823cfb11fbb42e834a150c836f5068527454963c3ffb7e707f177f0d383aec7` |
| 13 | `theorem` | [IntervalRatInUnitBall.mem_def](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/intervalratinunitball-mem-def--c966770df81785be94c0a14c.md) | 138 | `result-track:c966770df81785be94c0a14ce7a89f539e8a16ca8655eec6d8eb48cae91a74c0` |
| 14 | `def` | [atanhIntervalComputed](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/atanhintervalcomputed--a51c0bda461c58c79c5df00c.md) | 143 | `declaration-track:a51c0bda461c58c79c5df00cf98eaf9647781d5ca8e49ceecd58b974ff0d2c70` |
| 15 | `theorem` | [mem_atanhIntervalComputed](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-atanhintervalcomputed--99855222d420d1f9283f1644.md) | 154 | `result-track:99855222d420d1f9283f16446801bb19bcc58c6caa0031b4671ff21eba59a2d4` |
| 16 | `def` | [intSqrtNat](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/intsqrtnat--99e8d1f58ea95beacb5f81f0.md) | 174 | `declaration-track:99e8d1f58ea95beacb5f81f0b6f1017002858006745cc4f8e5e2da504704d667` |
| 17 | `theorem` | [nat_sqrt_sq_le](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/nat-sqrt-sq-le--2840f6efe827186b926c9685.md) | 177 | `result-track:2840f6efe827186b926c9685061b27413f1fecda96ef1474947f25608ede17c3` |
| 18 | `theorem` | [nat_lt_succ_sqrt_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/nat-lt-succ-sqrt-sq--cc732b23c317b9f68a07d4bc.md) | 180 | `result-track:cc732b23c317b9f68a07d4bcc6f43e990f25f179f331bf7021998f6b11d69b61` |
| 19 | `def` | [sqrtRatLower](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtratlower--5b87bea725b2387548f3c1f1.md) | 191 | `declaration-track:5b87bea725b2387548f3c1f1189b851b0368494ac61d302af48f56a5c652ac34` |
| 20 | `def` | [sqrtRatUpper](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtratupper--9d6ac26bc53e14e83078e74d.md) | 203 | `declaration-track:9d6ac26bc53e14e83078e74ddd35c35cf24679c2ff8cc57daed46530a537eeca` |
| 21 | `def` | [sqrtScaleBits](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtscalebits--55c36ee69db9d918580f1a99.md) | 215 | `declaration-track:55c36ee69db9d918580f1a99fbcbb17386744fcb3507ecf592580887c2969807` |
| 22 | `def` | [sqrtRatLowerPrec](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtratlowerprec--e7ad7bdb711929239714adc4.md) | 220 | `declaration-track:e7ad7bdb711929239714adc49f5aad51867b5ac9a8f971a01800603ea43f8dd8` |
| 23 | `def` | [sqrtRatUpperPrec](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtratupperprec--a64693719735cf3498801a7b.md) | 235 | `declaration-track:a64693719735cf3498801a7b07de4a39b5806d0a8a2ea55232c6b5f52f6c0ef0` |
| 24 | `theorem` | [rat_num_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/rat-num-of-nonneg--a5dac8746e9fceee8c4f0791.md) | 248 | `result-track:a5dac8746e9fceee8c4f0791fbe1945096b8106e8b112e919bf9de88c9b24f86` |
| 25 | `theorem` | [rat_num_natAbs_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/rat-num-natabs-pos--ac87a1fe08b875694a4cf895.md) | 252 | `result-track:ac87a1fe08b875694a4cf895d8990812f7ad9c89c93717b759483e1ba343254e` |
| 26 | `theorem` | [sqrtRatLower_le_sqrt](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtratlower-le-sqrt--0b4517d155883c2b41091acc.md) | 257 | `result-track:0b4517d155883c2b41091acc354d4991fb5bf3e992fa6331b5bca1120358cc78` |
| 27 | `theorem` | [sqrt_le_sqrtRatUpper](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrt-le-sqrtratupper--312340730a036fafb26bdba0.md) | 301 | `result-track:312340730a036fafb26bdba0134f300eb6e5ed72bb8c2f90d5ba0b415f1f7601` |
| 28 | `def` | [sqrtInterval](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtinterval--7f3d97a0db203b5bb45dafc1.md) | 374 | `declaration-track:7f3d97a0db203b5bb45dafc1911db0d8e047b6229a8bb99f5b07e17d8d449ae5` |
| 29 | `def` | [sqrtIntervalTight](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtintervaltight--61d12f37c4ea9f0559a59361.md) | 383 | `declaration-track:61d12f37c4ea9f0559a59361a94c72692b5965ae3763c2607b8c93b858d9a529` |
| 30 | `theorem` | [sqrtRatLowerPrec_le_sqrt](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtratlowerprec-le-sqrt--ab392c25af3402f0be70df18.md) | 400 | `result-track:ab392c25af3402f0be70df18308cb4a43dbb6810379954e8e922fb339a7b2282` |
| 31 | `theorem` | [sqrt_le_sqrtRatUpperPrec](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrt-le-sqrtratupperprec--c4ea0af5b074c7351dd1f684.md) | 470 | `result-track:c4ea0af5b074c7351dd1f684d409e6bdedf3789c3bf19f5e937ff5820caf0832` |
| 32 | `def` | [sqrtIntervalTightPrec](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrtintervaltightprec--042eab1afdb2f71c3be3efc7.md) | 562 | `declaration-track:042eab1afdb2f71c3be3efc77353bf5c975d1963f4cff15ad04555b52aa47b04` |
| 33 | `theorem` | [mem_sqrtIntervalTightPrec'](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-sqrtintervaltightprec--675de76061130f1d607b453a.md) | 579 | `result-track:675de76061130f1d607b453af76f849144b602b4eb3ce19c6392460283ed63f7` |
| 34 | `theorem` | [sqrt_le_max_one](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrt-le-max-one--887a3cb44d8adf772ac0abaa.md) | 609 | `result-track:887a3cb44d8adf772ac0abaa72bb1e2846f9b8e4ba38836fac96c459b7317004` |
| 35 | `theorem` | [mem_sqrtInterval](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-sqrtinterval--7e129385230b8411341fa3cb.md) | 631 | `result-track:7e129385230b8411341fa3cbc1fad02a7b7e89810de2a423e3d490b73e7e9a5f` |
| 36 | `theorem` | [mem_sqrtInterval'](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-sqrtinterval--e5982c64802f78645b8de087.md) | 641 | `result-track:e5982c64802f78645b8de087184f2c7ff94e7603b6eb1632a66e5453d50243c1` |
| 37 | `theorem` | [sqrt_le_sqrtRatUpper_max](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/sqrt-le-sqrtratupper-max--0ea562c652cc94369cc0237d.md) | 656 | `result-track:0ea562c652cc94369cc0237d2f634c394cf7b0c8475979d06839f65c1cc900dc` |
| 38 | `theorem` | [mem_sqrtIntervalTight](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-sqrtintervaltight--05e5a3e12877ed91bdedff53.md) | 670 | `result-track:05e5a3e12877ed91bdedff53e3f4c03aa1c9433176e283df0b350abc5eadea42` |
| 39 | `theorem` | [mem_sqrtIntervalTight'](../../../../../mathematics/Algebra/UniversalAlgebra/Transcendental/Variant5939f89edf49611c44b71ba1c65179da923fb2f12dfa08b55a77db2d04c0d0e9.lean/declarations/mem-sqrtintervaltight--a964a24cb2553d958692df43.md) | 691 | `result-track:a964a24cb2553d958692df4383ba6a19abd53c1a754fc3257548b6ff03259bc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
