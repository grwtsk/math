# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimePowerPrimitive.Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a40698ce7b3ad8e8f85053e5f264e87e53c3e97",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a40698ce7b3ad8e8f85053e5f264e87e53c3e97`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OpenArithmeticSuppliers` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLogAtom](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/primelogatom--228dcc15c7d1e0a6fa7b2db6.md) | 25 | `declaration-track:228dcc15c7d1e0a6fa7b2db6f0839b70d75732579421a3bb8f38855784081d35` |
| 2 | `def` | [primePowerCorrection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/primepowercorrection--52a7444e9ea42bf977e7d2f7.md) | 26 | `declaration-track:52a7444e9ea42bf977e7d2f740f0f5dbafe4eb117d740303ab1f879c09e61dc3` |
| 3 | `theorem` | [mangoldt_minus_primeLog_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/mangoldt-minus-primelog-nonneg--89616c27e994619b2c401c46.md) | 28 | `result-track:89616c27e994619b2c401c460ea8d2846c23bb7d6ff285cb899ba627a96c1ef9` |
| 4 | `theorem` | [primePowerCorrection_eq_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/primepowercorrection-eq-sum--d44387a3a488ecac15e7fca8.md) | 34 | `result-track:d44387a3a488ecac15e7fca88a9e40c848cee0311f26db329f57070a000a506c` |
| 5 | `theorem` | [primePowerCorrection_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/primepowercorrection-nonneg--2314d98f2359ced74357ec0f.md) | 59 | `result-track:2314d98f2359ced74357ec0fd0c3f260283a95539ad7abe07edf13240d5ab31d` |
| 6 | `theorem` | [ordinaryPrimePrimitive_le_actual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/ordinaryprimeprimitive-le-actual--f85c04fb1ec1622026ab2835.md) | 71 | `result-track:f85c04fb1ec1622026ab2835eb004de8fd8bcc90f4c302da39e1775150ffd521` |
| 7 | `theorem` | [actual_eq_ordinary_add_correction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/actual-eq-ordinary-add-correction--443d96208b3aa021c6d60224.md) | 77 | `result-track:443d96208b3aa021c6d60224004233900884c6516197743e8e5fa8897c34b7a6` |
| 8 | `theorem` | [primePowerCorrection_continuousAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant377a5e838d13f00b1213895612a7fcbc89869a1d27c4e338ef1dadc3b6b1526b.lean/declarations/primepowercorrection-continuousat--4aa01a35b391ac7d4cfd629b.md) | 82 | `result-track:4aa01a35b391ac7d4cfd629bb911ccb68955f7a5eb8007b95bb9a0e3586ff011` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
