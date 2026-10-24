# Verification target: GRWTSK.Analysis.SpecialFunctions.IntervalEvalAffine.Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ffc984b99a55970796ddec55732ef4e61bcb806",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ffc984b99a55970796ddec55732ef4e61bcb806`.

Source path: `GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Transcendental` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineConfig](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/affineconfig--60dd1c5b5f205aea0f42a708.md) | 50 | `declaration-track:60dd1c5b5f205aea0f42a7088dd0c35338a6a2ce8a0fdff366b4d1c7169c9e9f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/instance--8ae7781081fd32c420113a34.md) | 57 | `declaration-track:8ae7781081fd32c420113a342704ced55f481c10668758790e9c4476473797fc` |
| 3 | `abbrev` | [AffineEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/affineenv--b5ef679ea57d7c1c5eb30032.md) | 62 | `declaration-track:b5ef679ea57d7c1c5eb300325efe1fa52dadba87914f1d56ad8aa1de2cb3c212` |
| 4 | `def` | [toAffineEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/toaffineenv--1bab1470c661c0c2ca8f7199.md) | 67 | `declaration-track:1bab1470c661c0c2ca8f719965b8da158ffa159d5eec99143113d59f31201a84` |
| 5 | `def` | [evalIntervalAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/evalintervalaffine--e7aa9b9931867272acae63c3.md) | 84 | `declaration-track:e7aa9b9931867272acae63c39782c0118df883f36a4e83d1f11d47ab09f2a759` |
| 6 | `def` | [evalAffineToInterval](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/evalaffinetointerval--77af7fc47b1a4bf10467834e.md) | 160 | `declaration-track:77af7fc47b1a4bf10467834e2ee681b479c099b46f50635a434346ee7ffbefaf` |
| 7 | `def` | [checkUpperBoundAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/checkupperboundaffine--d2fce28f6a9789a3a6ca36da.md) | 164 | `declaration-track:d2fce28f6a9789a3a6ca36da7b145d833a514ff9970ee239d227ad8b39566488` |
| 8 | `def` | [checkLowerBoundAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/checklowerboundaffine--9fa42bf11f80101a19d68f80.md) | 169 | `declaration-track:9fa42bf11f80101a19d68f80c79974f05d3b1a0d4ed508cc33a0ef91a6268a20` |
| 9 | `def` | [envMemAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/envmemaffine--f088b4236cca0d5caa062519.md) | 176 | `declaration-track:f088b4236cca0d5caa062519ea57bbd2510af3e5f3f368a382c043ef78f367b3` |
| 10 | `def` | [evalDomainValidAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/evaldomainvalidaffine--dff56fa078006a98244693a2.md) | 182 | `declaration-track:dff56fa078006a98244693a246612746bc5c996dcf0f30d689007e6213874fdd` |
| 11 | `theorem` | [evalDomainValidAffine_of_ExprSupported](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/evaldomainvalidaffine-of-exprsupported--18058219c85edc6007c8095b.md) | 206 | `result-track:18058219c85edc6007c8095b2f67dfe038a0de199577961ecf2653f79030feed` |
| 12 | `theorem` | [evalIntervalAffine_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/evalintervalaffine-correct--a4f7d2d897e0a473c06557ef.md) | 228 | `result-track:a4f7d2d897e0a473c06557ef5223f636962acebafee8483ffdd66b72ecffeed1` |
| 13 | `theorem` | [evalIntervalAffine_toInterval_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/declarations/evalintervalaffine-tointerval-correct--9b9cb0821a5b97a2cb81bd3b.md) | 328 | `result-track:9b9cb0821a5b97a2cb81bd3b56de27c4525167cff6a2885f7c8ff780817b21a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
