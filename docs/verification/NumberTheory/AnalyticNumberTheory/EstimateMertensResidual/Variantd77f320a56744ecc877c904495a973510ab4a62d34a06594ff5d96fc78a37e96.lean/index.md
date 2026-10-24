# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensResidual.Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5a25102c301635ea3ad4a796c2320a813f3e75b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5a25102c301635ea3ad4a796c2320a813f3e75b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeSmoothMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/negativesmoothmoment--fe5818c8a96def0060e6fd4f.md) | 33 | `declaration-track:fe5818c8a96def0060e6fd4f5abbe87020cf244e825327b7af9b85dc0a8f38c7` |
| 2 | `def` | [initialPositiveMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/initialpositivemoment--af3adb82c2ee2decab9e2400.md) | 39 | `declaration-track:af3adb82c2ee2decab9e240085bf634300ed9e8337f183ff3940184f91824b8f` |
| 3 | `theorem` | [negativeSmoothMoment_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/negativesmoothmoment-upper--4558e3487f0222cb83a3e1ff.md) | 45 | `result-track:4558e3487f0222cb83a3e1ff95c0c44da24c47b5bae0ad56b705fe0d8e218add` |
| 4 | `theorem` | [negativeSmoothMoment_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/negativesmoothmoment-lower--051281538a62f8c09d8c5abb.md) | 89 | `result-track:051281538a62f8c09d8c5abb8e77e9df268216cc087b3ac557f4b6b4042b193f` |
| 5 | `theorem` | [negativeSmoothMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/negativesmoothmoment-abs-le--e9485f01e7c94c23b10e220f.md) | 97 | `result-track:e9485f01e7c94c23b10e220fbaf270fbe79ee2b956158138e1135eab6b73a46f` |
| 6 | `theorem` | [initialPositiveMoment_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/initialpositivemoment-upper--f6a61b9577770e945960675b.md) | 106 | `result-track:f6a61b9577770e945960675b7578ad1510f378c8da78788e807ceec988310c43` |
| 7 | `theorem` | [initialPositiveMoment_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/initialpositivemoment-lower--db49f5eb4e75ffd066621441.md) | 154 | `result-track:db49f5eb4e75ffd066621441321ba294332510c880852088bd196c802f3ec302` |
| 8 | `theorem` | [initialPositiveMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/initialpositivemoment-abs-le--e790ef3662a9259054f42f3b.md) | 163 | `result-track:e790ef3662a9259054f42f3b59208292c001ae077024884896a84e4e1b8ae3ad` |
| 9 | `theorem` | [smoothMoment_eq_neg_negative_sub_initial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/smoothmoment-eq-neg-negative-sub-initial--c4c1be4c295d2c53387ddf1d.md) | 174 | `result-track:c4c1be4c295d2c53387ddf1df89e44c1508a389e5db72234780adb876a472189` |
| 10 | `theorem` | [smoothMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/smoothmoment-abs-le--1fb13d34a7e441372b86a86a.md) | 199 | `result-track:1fb13d34a7e441372b86a86a027a234546f5ad188a5d93ca50fa35bf1446cc83` |
| 11 | `def` | [mertensResidual](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/mertensresidual--4c065d16866e896eb40f23c9.md) | 225 | `declaration-track:4c065d16866e896eb40f23c9a97d92546ff403d5815fb7c678381268a6d167c1` |
| 12 | `theorem` | [mertensResidual_eq_closedPrimeMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/mertensresidual-eq-closedprimemoment--97c175500f7708be16f9389a.md) | 232 | `result-track:97c175500f7708be16f9389a17bb36708994f790858f6562a601f2541d373af7` |
| 13 | `theorem` | [primeSmoothDefect_eq_mertensResidual_sub_smooth](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/primesmoothdefect-eq-mertensresidual-sub-smooth--8d5371eebc752566cfb76b84.md) | 242 | `result-track:8d5371eebc752566cfb76b846ecac6f3f198ebddd38556df8007f83286dc3aad` |
| 14 | `def` | [MertensResidualTailUpperBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/mertensresidualtailupperbound--cf8dfaf4f994f400eacfde0e.md) | 251 | `declaration-track:cf8dfaf4f994f400eacfde0e041d06170738445c0a35fc6e3e2e76184c133221` |
| 15 | `theorem` | [prime_smooth_tail_of_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/prime-smooth-tail-of-mertens-residual-tail--5cc338f76deab2f382e14c4a.md) | 258 | `result-track:5cc338f76deab2f382e14c4a06003ad059d9a1b2343b2a20dd6ce80b33061b40` |
| 16 | `theorem` | [mertens_residual_tail_of_prime_smooth_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/mertens-residual-tail-of-prime-smooth-tail--2a6e097662aa4503c90ca820.md) | 274 | `result-track:2a6e097662aa4503c90ca820e5012cc23f04c624fdabae897b6ebe8049d521df` |
| 17 | `theorem` | [prime_smooth_tail_iff_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/prime-smooth-tail-iff-mertens-residual-tail--8503c3d1aa0ce2f36da40283.md) | 291 | `result-track:8503c3d1aa0ce2f36da40283f2fb3cef5e0eb08594dd87320905e785d6df47b7` |
| 18 | `theorem` | [signed_pairing_tail_iff_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/signed-pairing-tail-iff-mertens-residual-tail--62c8a49aea7d99169dd2effa.md) | 299 | `result-track:62c8a49aea7d99169dd2effa90145e0222d975931a7b72cf1415fe6228ca3468` |
| 19 | `theorem` | [estimate_of_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/estimate-of-mertens-residual-tail--92a2f8cfe30ca9bab29358d5.md) | 307 | `result-track:92a2f8cfe30ca9bab29358d5f4c65c93af614733409edff7bcc75dcf85eafdc6` |
| 20 | `def` | [MertensResidualCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/mertensresidualcheckpoint--006a65c6e07be97c354b6e57.md) | 314 | `declaration-track:006a65c6e07be97c354b6e57bfa0b0951e3c1f90514d89185e891ce82b488234` |
| 21 | `theorem` | [mertens_residual_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Variantd77f320a56744ecc877c904495a973510ab4a62d34a06594ff5d96fc78a37e96.lean/declarations/mertens-residual-checkpoint--a5013efd5c63f24a4fd0da41.md) | 324 | `result-track:a5013efd5c63f24a4fd0da415f85ef5a0d8001e64f4022bdb72b4542c2bce38a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
