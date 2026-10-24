# Verification target: GRWTSK.Analysis.BranchCutoffAsymptotics.Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8cb208725e277b6a23bf0a00ace611e38ae0f9f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8cb208725e277b6a23bf0a00ace611e38ae0f9f`.

Source path: `GRWTSK/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchPrimePowerCutoff` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edgeCoefficient_analyticAt](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/edgecoefficient-analyticat--489eca37262f13a9c54559d5.md) | 33 | `result-track:489eca37262f13a9c54559d5b4339872bdf55797e4f3e4b4a1f168beeec04533` |
| 2 | `theorem` | [sourceNormalization_analyticAt](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/sourcenormalization-analyticat--863cac5da47c785f3b303196.md) | 38 | `result-track:863cac5da47c785f3b3031961725ebcf8c64d2226f97c29ba5ed70202f3344da` |
| 3 | `theorem` | [cutoffTail_analyticAt_of_pos](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/cutofftail-analyticat-of-pos--a8afd1f9a0a408995530d34f.md) | 44 | `result-track:a8afd1f9a0a408995530d34f8ba1b12fe94289263014bc6956dc110fe8d65042` |
| 4 | `theorem` | [singleLagTerm_analyticAt_of_lt](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/singlelagterm-analyticat-of-lt--f90d1f5f4eeb27b2e26fff0d.md) | 53 | `result-track:f90d1f5f4eeb27b2e26fff0dbb6dd380ba0c14330b5bf41233b1a771e3017813` |
| 5 | `theorem` | [singleLagTerm_analyticAt_before](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/singlelagterm-analyticat-before--a6fc060d9f596d5395e3bc9e.md) | 61 | `result-track:a6fc060d9f596d5395e3bc9efff8d5f99275cac7851317a4149107a2b3c914c1` |
| 6 | `theorem` | [primePowerTerm_analyticAt_before](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/primepowerterm-analyticat-before--73af5d9e13b82ae8a5808c97.md) | 69 | `result-track:73af5d9e13b82ae8a5808c97472255a53bd8e7bfd238f516be44f1ae71a83dbe` |
| 7 | `theorem` | [primePowerTerm_analyticAt_of_not_isPrimePow](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/primepowerterm-analyticat-of-not-isprimepow--c0118a2f0b4b61802e20343a.md) | 75 | `result-track:c0118a2f0b4b61802e20343a4bae5c264cac934f9998e97c272cc62bbd7458eb` |
| 8 | `theorem` | [primePowerTerm_analyticAt_of_lt](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/primepowerterm-analyticat-of-lt--a78f091536d4dc6d1b130df0.md) | 83 | `result-track:a78f091536d4dc6d1b130df02f5f86029703067e9d48d57f0e88f9bfed060051` |
| 9 | `theorem` | [priorMoment_analyticAt](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/priormoment-analyticat--f6eec12bb14045cfa5da8a40.md) | 91 | `result-track:f6eec12bb14045cfa5da8a406cf4caa2b387b94c0752786db0b52f1c38ab4e6d` |
| 10 | `theorem` | [partialMoment_analyticAt_of_lt](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/partialmoment-analyticat-of-lt--2bd4de94a8b8a41b9fba547d.md) | 104 | `result-track:2bd4de94a8b8a41b9fba547d5ba6c935dbfd56bf7a94f5fd35ed0a7d72f38dff` |
| 11 | `theorem` | [closedPrimeMoment_eventually_eq_fixed_sum](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/closedprimemoment-eventually-eq-fixed-sum--4c2df9e44ad74d29c5dbb230.md) | 116 | `result-track:4c2df9e44ad74d29c5dbb230ecd59c24fca42d33c3de88611f368f52fa186812` |
| 12 | `theorem` | [closedPrimeMoment_analyticAt_between](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/closedprimemoment-analyticat-between--1eb4bc0648ea065b8e844615.md) | 130 | `result-track:1eb4bc0648ea065b8e8446158f885dbf0e86b719e7951f657c66a3217e6f8aac` |
| 13 | `theorem` | [closedPrimeMoment_analyticAt_before_first](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/closedprimemoment-analyticat-before-first--ec08e02a1a3dc412bed5487c.md) | 139 | `result-track:ec08e02a1a3dc412bed5487cf2e15c742835b7f28d063e37ae61f894bd88b686` |
| 14 | `theorem` | [closedPrimeMoment_analyticAt_nonprime_entry](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/closedprimemoment-analyticat-nonprime-entry--81cd91668f7a4c2912d3e7ad.md) | 150 | `result-track:81cd91668f7a4c2912d3e7adfed40be8731dca5dd46e8129ce1271e866d0d628` |
| 15 | `theorem` | [primePowerTerm_contDiffAt_four_of_pos](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/primepowerterm-contdiffat-four-of-pos--b910123f5ed8893dfd4408bd.md) | 158 | `result-track:b910123f5ed8893dfd4408bd8283d851afb94e0e4cc553702f3e118e65587e8e` |
| 16 | `theorem` | [closedPrimeMoment_contDiffAt_four_of_pos](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/closedprimemoment-contdiffat-four-of-pos--6f11f11b4e72fcdd9db6a0c0.md) | 169 | `result-track:6f11f11b4e72fcdd9db6a0c0478b270f9d645103c24c9eed05ac9fa860c4eadf` |
| 17 | `theorem` | [closedPrimeMoment_contDiffOn_four](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/closedprimemoment-contdiffon-four--ac147543eb245c7c5d77d2c3.md) | 188 | `result-track:ac147543eb245c7c5d77d2c34b44ba4017f9c52598098d2949bcdb77777c9ac5` |
| 18 | `def` | [edgeRemainder](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/edgeremainder--5c1927b5e30cbba8b5961a0a.md) | 193 | `declaration-track:5c1927b5e30cbba8b5961a0a0ef14f9754c5065e3c18a7b5ba4dc130b95b99aa` |
| 19 | `theorem` | [edgeTail_two_term](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/edgetail-two-term--09ff3bde4ff589f786086998.md) | 203 | `result-track:09ff3bde4ff589f786086998f6a8ec9d27b9975537ffc87aa8a7fab600eaf67b` |
| 20 | `theorem` | [edgeCorrelationPolynomial_two_term](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/edgecorrelationpolynomial-two-term--694bd2d71af7f4c43d2c43fb.md) | 213 | `result-track:694bd2d71af7f4c43d2c43fbb145c602b55b5b37c86741b3142286d384010eeb` |
| 21 | `theorem` | [edgeRemainder_continuous](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/edgeremainder-continuous--f02ab7d4332e0830ece980fc.md) | 221 | `result-track:f02ab7d4332e0830ece980fc2539be88e47b239b56f232390aca6cff85689f83` |
| 22 | `theorem` | [edgeCorrelationPolynomial_isBigO_seven](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/edgecorrelationpolynomial-isbigo-seven--8c70a2f49873b9e8790b3fb2.md) | 232 | `result-track:8c70a2f49873b9e8790b3fb296ce9594d73006786ccb3e5843aea7aaa20342b7` |
| 23 | `theorem` | [actual_correlation_isBigO_seven](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/actual-correlation-isbigo-seven--f89c52e74fd77ecdc1e61876.md) | 246 | `result-track:f89c52e74fd77ecdc1e61876e0a0624ca5352ef2ea161317698cf9629d0ea4ba` |
| 24 | `theorem` | [singleLagTerm_isBigO_six](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/singlelagterm-isbigo-six--bca91f33048d31d2bc3e926e.md) | 259 | `result-track:bca91f33048d31d2bc3e926ead777c3a5ccbca0c7485235832397b9045113dcf` |
| 25 | `theorem` | [singleLagTerm_shift_isBigO_six](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/singlelagterm-shift-isbigo-six--ecf932d82e91aa4c118852c4.md) | 272 | `result-track:ecf932d82e91aa4c118852c4d4e6f8235c2ac0a406117ca1f6931519ac7a3ddd` |
| 26 | `theorem` | [primePowerTerm_shift_isBigO_six](../../../../mathematics/Analysis/BranchCutoffAsymptotics/Variant705c497182836dd6e73897efe5c6ec4689953330af9259d8a41f632c95708402.lean/declarations/primepowerterm-shift-isbigo-six--d8fcee43f9419a2d88797388.md) | 292 | `result-track:d8fcee43f9419a2d8879738843332993828d584c5b3e7e2afbe714e1f59bb93d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
