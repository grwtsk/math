# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ExpLog.Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1e41e733f1a16cd97715254de4b056b1744911a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1e41e733f1a16cd97715254de4b056b1744911a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expTaylorPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/exptaylorpoly--c023cea9c7d684daeeefcf9b.md) | 43 | `declaration-track:c023cea9c7d684daeeefcf9b596701eecfe2da92f699a403463343f9411670dd` |
| 2 | `def` | [expRemainderBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/expremainderbound--5c89eabaecac1398dca6f65f.md) | 50 | `declaration-track:5c89eabaecac1398dca6f65f56474b97d13c8cecd5acc87f99dcebea9e52a0d5` |
| 3 | `theorem` | [expRemainderBound_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/expremainderbound-nonneg--4a1750bfb479461f879abec7.md) | 58 | `result-track:4a1750bfb479461f879abec72ea7a543a397158225d63c8ea133963dea2ac387` |
| 4 | `def` | [tmExp](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/tmexp--00ae9613e61856a6f094dac4.md) | 71 | `declaration-track:00ae9613e61856a6f094dac4d5dedc8fd72a56fcf2b0c68c43996aa9d1f345c4` |
| 5 | `def` | [logTaylorCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/logtaylorcoeffs--7367b6f41d96047da531dc70.md) | 95 | `declaration-track:7367b6f41d96047da531dc70a305c67aa3457a8c494db8447f3673ff753003a2` |
| 6 | `def` | [logTaylorPolyAtCenter](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/logtaylorpolyatcenter--e145fff6b9b72a948d97efc1.md) | 103 | `declaration-track:e145fff6b9b72a948d97efc161b42dec728def4f1f69deff02df081b7e298bad` |
| 7 | `def` | [logLagrangeRemainder](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/loglagrangeremainder--8493006a06b19e63e2f8aeea.md) | 110 | `declaration-track:8493006a06b19e63e2f8aeead3c94a77b1224367b719e2bf4a8014c07e87f295` |
| 8 | `def` | [logRemainderBound](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/logremainderbound--47d740b5fdca47ad7f23ae46.md) | 122 | `declaration-track:47d740b5fdca47ad7f23ae46e46058308c31462e96ab6dbe5db5a81315b46a15` |
| 9 | `theorem` | [logRemainderBound_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/logremainderbound-nonneg--473ebab8dee642753320acab.md) | 127 | `result-track:473ebab8dee642753320acabdc4841eb91b157c3865683737c4fd27c18aa9576` |
| 10 | `def` | [tmLog](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/tmlog--530889c73133d807da815b04.md) | 150 | `declaration-track:530889c73133d807da815b04e28acc9c0e114a1481f8e51c90e72fed4f8823fa` |
| 11 | `theorem` | [abs_le_interval_radius](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/abs-le-interval-radius--54c797d735b8215a17694849.md) | 192 | `result-track:54c797d735b8215a17694849809ef77c89ad0ad820d3ed2300b2e6b04671e7de` |
| 12 | `theorem` | [mem_Icc_of_mem_interval](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/mem-icc-of-mem-interval--46df19971eac21f6cdfce940.md) | 206 | `result-track:46df19971eac21f6cdfce9403b758deec429bff843dfc328fe0d0047fad463c9` |
| 13 | `theorem` | [expTaylorPoly_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/exptaylorpoly-aeval-eq--dc0b9ba94bd70cdec824a0b5.md) | 215 | `result-track:dc0b9ba94bd70cdec824a0b56590817f0145449e34f4da4ef09694a97cb3d498` |
| 14 | `theorem` | [tmExp_correct](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/tmexp-correct--784f748b805a01dbaa37f8fc.md) | 233 | `result-track:784f748b805a01dbaa37f8fcdbce320179620625302a41320db99261b1891c20` |
| 15 | `theorem` | [log_approx_error_bound](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/log-approx-error-bound--8728a4e3ae0b12933e8b5798.md) | 326 | `result-track:8728a4e3ae0b12933e8b5798510b1d479b40a00e470da336a7c77af626449863` |
| 16 | `theorem` | [log_taylor_remainder_bound'](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/log-taylor-remainder-bound--d2c36af87fed7af2c8206f3b.md) | 351 | `result-track:d2c36af87fed7af2c8206f3baf43000558b4199dd93687f09d7a3096f6c80eb4` |
| 17 | `theorem` | [tmLog_correct](../../../../../mathematics/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/declarations/tmlog-correct--e2e8ccbd87a9da8bd616bb07.md) | 496 | `result-track:e2e8ccbd87a9da8bd616bb07f6a43518a0b88b36c0483b98d83f78de56a8bee0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
