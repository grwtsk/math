# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBoundedCapacity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ce497796ef5b5baa088dde0755a6f53b8963e8a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ce497796ef5b5baa088dde0755a6f53b8963e8a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightBoundedCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundedcapacity--d3939d81208684d0b772db39.md) | 43 | `declaration-track:d3939d81208684d0b772db39e7c3c4a2044b674df9a6b5843b04decd815fa6b6` |
| 2 | `def` | [pinnedPrimeWeightBoundedDeficit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit--f03ffea221de01362276690b.md) | 48 | `declaration-track:f03ffea221de01362276690b2fe7e851ec55132c12256ab5635d26551dc8b251` |
| 3 | `theorem` | [pinnedPrimeWeightBoundedCapacity_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundedcapacity-nonnegative--255293ebfb53cccc107f083f.md) | 54 | `result-track:255293ebfb53cccc107f083f9db178a95a231de582f586f1864e562b14f2fecf` |
| 4 | `theorem` | [pinnedPrimeWeightBoundedDeficit_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit-nonnegative--b839012d4c58b034bfcf34d0.md) | 62 | `result-track:b839012d4c58b034bfcf34d02e6396a0dad9e3a6e40c89e828b73ad4b3bcc307` |
| 5 | `theorem` | [pinnedPrimeWeightBoundedDeficit_majorizes](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit-majorizes--988ded8736cfc6f5b0a85c25.md) | 70 | `result-track:988ded8736cfc6f5b0a85c25dedef20b9ad6ba255a576028440a129f3088ccc7` |
| 6 | `theorem` | [pinnedPrimeWeightResponseMagnitude_le_boundedCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightresponsemagnitude-le-boundedcapacity--c802bed82c090ecd33a75e91.md) | 84 | `result-track:c802bed82c090ecd33a75e916302d80e998a93fdd172f3f0779cd1de59353842` |
| 7 | `theorem` | [pinnedPrimeWeightBoundedDeficit_le_canonicalDeficit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit-le-canonicaldeficit--f2e17cb12816cdfe8e61ee75.md) | 99 | `result-track:f2e17cb12816cdfe8e61ee75f71ea5c3452c2d903d9b81b5d06b612d0906d2ad` |
| 8 | `theorem` | [pinnedPrimeWeightResponseMagnitude_eq_boundedCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightresponsemagnitude-eq-boundedcapacity--1b1aa2c13ed4dd541b428690.md) | 110 | `result-track:1b1aa2c13ed4dd541b428690d0afb90047148dc030a7a0bf13d0f5daf8015ebd` |
| 9 | `theorem` | [pinnedPrimeWeightCanonicalDeficit_eq_boundedDeficit](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightcanonicaldeficit-eq-boundeddeficit--ce5fa23477e2ba4a81434ad8.md) | 119 | `result-track:ce5fa23477e2ba4a81434ad8168a00abc2ce8552d799fb9f6dbf8f275d21864c` |
| 10 | `theorem` | [pinnedPrimeWeightBoundedDeficit_is_minimum](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit-is-minimum--9f805860385d602db03fbfb6.md) | 129 | `result-track:9f805860385d602db03fbfb65aee64e11b44b0f34b7a17aa4fe58dfb9b2211a2` |
| 11 | `theorem` | [pinnedPrimeWeight_target_sub_error_le_boundedCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweight-target-sub-error-le-boundedcapacity--3f407c10778f77eb690cfeeb.md) | 143 | `result-track:3f407c10778f77eb690cfeebddd02de2c20b988005e420694c58e3e68b38f641` |
| 12 | `theorem` | [pinnedPrimeWeight_amplitude_sq_necessary](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweight-amplitude-sq-necessary--93a49eb6cd640983f0aa11e0.md) | 152 | `result-track:93a49eb6cd640983f0aa11e06e310ee7f698925cb50c191d08387edfa7e10478` |
| 13 | `theorem` | [pinnedPrimeWeightBoundedDeficit_zero_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit-zero-budget--1c23e5bbd346d0dc43b69cf9.md) | 167 | `result-track:1c23e5bbd346d0dc43b69cf94cad1b1374fe1bdad11960f4c9855e62a6d97dea` |
| 14 | `theorem` | [pinnedPrimeWeightBoundedDeficit_of_amplitude_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightboundeddeficit-of-amplitude-eq-zero--44936bddfa3e2c731c05c55c.md) | 178 | `result-track:44936bddfa3e2c731c05c55cbb9849881388591aa870293665d2439145ce30e7` |
| 15 | `def` | [pinnedPrimeWeightConstantCapacityRule](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightconstantcapacityrule--531f952d7e0d76ba261368fa.md) | 190 | `declaration-track:531f952d7e0d76ba261368fa86dd7aef2b32c076f2018f532d4ee9bfb457ece6` |
| 16 | `def` | [PinnedPrimeWeightCapacityCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightcapacitycriterionat--b562c5bc12d118fe111e7f74.md) | 201 | `declaration-track:b562c5bc12d118fe111e7f74ee7082ef5371682649dd85d898ecb3a4257de63e` |
| 17 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightruledeficitcriterion-to-capacitycriterion--4cd473ea86d17d089b567aa9.md) | 215 | `result-track:4cd473ea86d17d089b567aa90daad114042327d79f8c147f121d50420c0f4621` |
| 18 | `def` | [PinnedPrimeWeightFixedCapacityCriterionAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightfixedcapacitycriterionat--e4e5c03b319dc63113a0802a.md) | 232 | `declaration-track:e4e5c03b319dc63113a0802a3b611aff8b8d5c4d4581d5f848abd1fd5a42605c` |
| 19 | `theorem` | [pinnedPrimeWeightFixedCapacityCriterion_to_constantRule](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightfixedcapacitycriterion-to-constantrule--49fb3ddc6ab00fc5652cb746.md) | 247 | `result-track:49fb3ddc6ab00fc5652cb746aa673e5245ab62370803ef03bf2be62d36329f6a` |
| 20 | `theorem` | [pinnedPrimeWeightConstantRule_to_fixedCapacityCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightconstantrule-to-fixedcapacitycriterion--65ba9122d188017615219bdf.md) | 272 | `result-track:65ba9122d188017615219bdf4c7d1fc499c5e8e847ed56c96c094df44b622d4a` |
| 21 | `theorem` | [pinnedPrimeWeightFixedCapacityCriterion_iff_constantRule](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightfixedcapacitycriterion-iff-constantrule--e396d77246e4ac8d7ed07ae0.md) | 297 | `result-track:e396d77246e4ac8d7ed07ae0c09efd7b27d8286ff2caa0a175c5fd7a73626cce` |
| 22 | `theorem` | [pinnedPrimeWeightFixedCapacityCriterion_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightfixedcapacitycriterion-to-recurrence--538c4ce018b433f5b463419e.md) | 314 | `result-track:538c4ce018b433f5b463419e8ae9ef238f310e67d780896690077044acfc8742` |
| 23 | `theorem` | [pinnedPrimeWeightFixedCapacityCriterion_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/declarations/pinnedprimeweightfixedcapacitycriterion-to-descent--83284126835e35c6f8f8882c.md) | 323 | `result-track:83284126835e35c6f8f8882c28fbd9f98cfb820d9e2c62e79a70a8f919204bc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
