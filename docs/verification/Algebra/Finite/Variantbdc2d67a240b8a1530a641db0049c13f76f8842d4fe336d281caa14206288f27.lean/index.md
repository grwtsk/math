# Verification target: GRWTSK.Algebra.Finite.Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e`.

Source path: `GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.AbsoluteValue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ClassGroup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/normbound--73ba7e81d5b83785c8cf8fb6.md) | 67 | `declaration-track:73ba7e81d5b83785c8cf8fb6cf919ac8ea0eaabffa6feb9702a201795a5dc4ce` |
| 2 | `theorem` | [normBound_pos](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/normbound-pos--c4f20d0a1e8149c9e2461e55.md) | 78 | `result-track:c4f20d0a1e8149c9e2461e55709297e66b9b57e250d64a87abb805234549f6a6` |
| 3 | `theorem` | [norm_le](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/norm-le--b486665154ec154e2424d1ce.md) | 96 | `result-track:b486665154ec154e2424d1ce2f92bdf801916d083df84aa15331d1808852c773` |
| 4 | `theorem` | [norm_lt](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/norm-lt--a90ecb5a712c04deea4feff1.md) | 119 | `result-track:a90ecb5a712c04deea4feff13f016db28c131c700d1ab7515258774e756ee48c` |
| 5 | `theorem` | [exists_min](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/exists-min--1b31f0f5db3deb66af54a929.md) | 148 | `result-track:1b31f0f5db3deb66af54a929c8b9a5b5db6c74ac88f03b28c96f466bdc3fc4af` |
| 6 | `def` | [cardM](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/cardm--96338e2ec342d0dc1243bf04.md) | 179 | `declaration-track:96338e2ec342d0dc1243bf04af9ccf2f8ac4147ae7139f54b4d06d0ac8808b23` |
| 7 | `def` | [distinctElems](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/distinctelems--44264fd6cbad2a1997292720.md) | 187 | `declaration-track:44264fd6cbad2a19972927201feaf39ae5ffec44d5f7e2c7e7513f261b88e84d` |
| 8 | `def` | [finsetApprox](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/finsetapprox--985cbd3eb21939021b6c2f8c.md) | 195 | `declaration-track:985cbd3eb21939021b6c2f8c000cc0f5ca7babe537ffc68cfb68dbf94e2e937f` |
| 9 | `theorem` | [finsetApprox.zero_not_mem](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/finsetapprox-zero-not-mem--53a24e3244ceafdea90a4232.md) | 200 | `result-track:53a24e3244ceafdea90a4232b290dabb946151b08498bcb18cfa41c6fc8aa92d` |
| 10 | `theorem` | [mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/mem-finsetapprox--1d3a0c8ab1a1702ed44faf60.md) | 205 | `result-track:1d3a0c8ab1a1702ed44faf608297042d285698b0a698dac0b65fdcc46cf88b81` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/exists-mem-finsetapprox--9762948dad0dca45ccd4432d.md) | 228 | `result-track:9762948dad0dca45ccd4432d09021241fce206a0ef72673807968a401ab61762` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/exists-mem-finset-approx--45b1ab58d6e99e02200782b1.md) | 282 | `result-track:45b1ab58d6e99e02200782b10a823c200046a69b18aaa777bcc03658d8b86056` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/prod-finsetapprox-ne-zero--c85b61ae64f97b7aae9de5f2.md) | 304 | `result-track:c85b61ae64f97b7aae9de5f2d59ffa87bcf9466e15490df479c009206317af99` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/ne-bot-of-prod-finsetapprox-mem--94d31e93714d8c7076f0bd2e.md) | 311 | `result-track:94d31e93714d8c7076f0bd2e362102b0f45760524a51339db53451661a1faa61` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/exists-mk0-eq-mk0--817eb763f01fb2061f0ecec9.md) | 318 | `result-track:817eb763f01fb2061f0ecec9b255404e52692136a5ee16b08b2de85812a71cca` |
| 16 | `def` | [mkMMem](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/mkmmem--c20c1203f981f70c38dc8559.md) | 356 | `declaration-track:c20c1203f981f70c38dc855982c33d27a9c67f8dd9656dc0d593dae192c29ddd` |
| 17 | `theorem` | [mkMMem_surjective](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/mkmmem-surjective--83be501644dd3d8552e438af.md) | 363 | `result-track:83be501644dd3d8552e438af26108ffcfb6d4e641901d02cf99744c4b8240026` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/fintypeofadmissibleofalgebraic--784ce6b04a2e599a44916983.md) | 380 | `declaration-track:784ce6b04a2e599a44916983cac43cb89d02a4fbadb7444def187a66c697ef57` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../mathematics/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/declarations/fintypeofadmissibleoffinite--d4a2db17a6a440bbd9ddefac.md) | 402 | `declaration-track:d4a2db17a6a440bbd9ddefac520d4256009bafdaff42f24cb8ce1b2337649f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
