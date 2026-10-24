# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b7421c89e51b3a08d122cbce336743ef8f59827",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b7421c89e51b3a08d122cbce336743ef8f59827`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/declarations/exactfrontier--b275715414f2df19659dd0c3.md) | 13 | `declaration-track:b275715414f2df19659dd0c38f1addc6993275e3bbbdceb4e9fb4ad6308aee7a` |
| 2 | `theorem` | [highGCDAnchorExclusionClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/declarations/highgcdanchorexclusionclosed--c68bff4932e0670a61d0c210.md) | 28 | `result-track:c68bff4932e0670a61d0c210fb865f1204db0a765fc4ffb381b96393517e1c03` |
| 3 | `theorem` | [absoluteTypeIAnchorBarrierClosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/declarations/absolutetypeianchorbarrierclosed--042cfa0bbca3e237994f4dfc.md) | 38 | `result-track:042cfa0bbca3e237994f4dfccd01d2ee6e6cd655bffda6b5f4ee5994c25240a7` |
| 4 | `def` | [remainingSignedTypeIFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/declarations/remainingsignedtypeifrontier--f472937aba371e787fdf21d5.md) | 43 | `declaration-track:f472937aba371e787fdf21d59ccbd5bd4a21cd532a9d81e8eaed43f1d2011399` |
| 5 | `def` | [remainingAbsoluteTypeIIFrontier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls.lean/declarations/remainingabsolutetypeiifrontier--4396332271016f025d7b8abb.md) | 46 | `declaration-track:4396332271016f025d7b8abb26c3de86398b1f0344d3b1fd9f42775de7449fb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
