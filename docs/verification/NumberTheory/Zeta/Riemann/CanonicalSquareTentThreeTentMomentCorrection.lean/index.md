# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bc7d02cc51fabacf44120b0b753dfc7b71ea2ac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bc7d02cc51fabacf44120b0b753dfc7b71ea2ac`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofactorZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactorzero--dc857937728682a6b1ccfcaf.md) | 48 | `declaration-track:dc857937728682a6b1ccfcaf3d109389d4008824dd408c505ce2ac6ba58d295c` |
| 2 | `def` | [cofactorOne](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactorone--162cc97da430b77c1679e8fc.md) | 53 | `declaration-track:162cc97da430b77c1679e8fc69b491a32c983d78fc3951f3c5894afa46a0d2ee` |
| 3 | `def` | [cofactorTwo](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactortwo--6c976a2dc73040b5bad75b96.md) | 58 | `declaration-track:6c976a2dc73040b5bad75b96df697875260764b4e81ec35a33f0ceb8f450a5a7` |
| 4 | `theorem` | [cofactorTwo_eq_twoTentMomentDeterminant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactortwo-eq-twotentmomentdeterminant--fe0bc4103fa3672b7634d235.md) | 62 | `result-track:fe0bc4103fa3672b7634d235d82d012e39aed8204df9f9c1f57064e52ee249bb` |
| 5 | `theorem` | [cofactorTwo_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactortwo-ne-zero--9aec8f68807fd2167784bdbc.md) | 68 | `result-track:9aec8f68807fd2167784bdbc22a5a517743c714e21d31cf48c4152bfae82813b` |
| 6 | `theorem` | [cofactor_ordinary_balance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactor-ordinary-balance--c2cacf2c4517604d0eef0a65.md) | 74 | `result-track:c2cacf2c4517604d0eef0a6527f956828f887dffe2996b12bfd88465ed523d68` |
| 7 | `theorem` | [cofactor_multiplicative_balance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/cofactor-multiplicative-balance--989a643cbbc5f1d2dcc20a13.md) | 82 | `result-track:989a643cbbc5f1d2dcc20a133f23e2c90fcd188f744ba55262db64657353ffda` |
| 8 | `def` | [correctedThreeTent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/correctedthreetent--6e5e2ac2ef69b0eadb6155d4.md) | 91 | `declaration-track:6e5e2ac2ef69b0eadb6155d4a66fd695297bc18a2ac1b29567ee59215989e0a9` |
| 9 | `theorem` | [correctedThreeTent_ordinaryMoment_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/correctedthreetent-ordinarymoment-eq--591fb4610f769157c80161ab.md) | 98 | `result-track:591fb4610f769157c80161abb12b68299715e24d71f526a4c3af0610c0460dd7` |
| 10 | `theorem` | [correctedThreeTent_multiplicativeMoment_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/correctedthreetent-multiplicativemoment-eq--a1fa830c57ea04b76672c3d5.md) | 123 | `result-track:a1fa830c57ea04b76672c3d5ad287ddb584cc6ab63aa209c1a9dd6d04abcfdd0` |
| 11 | `theorem` | [correctedThreeTent_zeroMoments](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/correctedthreetent-zeromoments--0dffb6332593f943f8c291e3.md) | 147 | `result-track:0dffb6332593f943f8c291e33d7821f451d0129b4ce01185eff24f3dc9a3b44f` |
| 12 | `theorem` | [correctedThreeTent_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/correctedthreetent-ne-zero--ff2ddabef1f894ed6ceef674.md) | 158 | `result-track:ff2ddabef1f894ed6ceef6741c92560c990c98c50c97304ec6cf326811687ab6` |
| 13 | `theorem` | [exists_nonzero_threeTent_zeroMoments](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean/declarations/exists-nonzero-threetent-zeromoments--c1e54228ace77589fe483417.md) | 181 | `result-track:c1e54228ace77589fe48341753cba6de8484a7f1c184e501e298ff7657e18201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
