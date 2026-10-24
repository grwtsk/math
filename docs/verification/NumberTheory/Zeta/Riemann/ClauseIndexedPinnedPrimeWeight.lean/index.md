# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac9c4f2d742ecbabdc685a90f285335a01ddde2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac9c4f2d742ecbabdc685a90f285335a01ddde2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightFeatureNorm`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightFeatureNorm.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaFeatureNorm`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaFeatureNorm.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPinnedPrimeWeightCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/clauseindexedpinnedprimeweightcriterion--9fda5a1c80e5a7f295ba910e.md) | 29 | `declaration-track:9fda5a1c80e5a7f295ba910ed2f71cd6bbbdbe03e784b83e09d619d231c93c3b` |
| 2 | `theorem` | [clauseIndexedPinnedPrimeWeight_to_featureNorm](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/clauseindexedpinnedprimeweight-to-featurenorm--25dd9686fec6b41dd08126fd.md) | 36 | `result-track:25dd9686fec6b41dd08126fd58f4aecbce976422558c50c4b87ce5a8542dd360` |
| 3 | `theorem` | [clauseIndexedPinnedPrimeWeight_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/clauseindexedpinnedprimeweight-to-recurrence--d3cb774eb932fea71d78021d.md) | 44 | `result-track:d3cb774eb932fea71d78021ddf5131679f030c58b2c7e649a1c38f6e3fa2c78a` |
| 4 | `theorem` | [clauseIndexedPinnedPrimeWeight_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/clauseindexedpinnedprimeweight-to-previous--d8629f04ae0b587250cde2e1.md) | 53 | `result-track:d8629f04ae0b587250cde2e141ef030ee4244a016a05aedeb03773a4fe30932a` |
| 5 | `theorem` | [threeClauseIndexedPinnedPrimeWeightCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/threeclauseindexedpinnedprimeweightcriterion-iff--651784ca3f24cd96545732f3.md) | 72 | `result-track:651784ca3f24cd96545732f3728f9fdc3ed5ab18c9e149c24f944d9a63c19a0b` |
| 6 | `theorem` | [twoClauseIndexedPinnedPrimeWeightCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/twoclauseindexedpinnedprimeweightcriterion-iff--5ccb494ac86095b55743f666.md) | 80 | `result-track:5ccb494ac86095b55743f6665704856d61aa45e685a153e37041a3b51b6c38fc` |
| 7 | `theorem` | [clauseIndexedPinnedPrimeWeightCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/declarations/clauseindexedpinnedprimeweightcriteria-to-rh--735b5546fc83659190380efa.md) | 90 | `result-track:735b5546fc83659190380efa756dc7b3455566b17ec950d9eb9ac2cddce9f813` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
