# Verification target: GRWTSK.Algebra.PrimeMultiplicity.Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c013d86a211c1fd065c313c0328d456347917b5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c013d86a211c1fd065c313c0328d456347917b5`.

Source path: `GRWTSK/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Multiplicity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicity_addValuation](../../../../mathematics/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean/declarations/multiplicity-addvaluation--ecf2ab86e4d30e06d71efa8a.md) | 24 | `declaration-track:ecf2ab86e4d30e06d71efa8a67bce4de0278d4a4b006069d00b9aa70ed00677d` |
| 2 | `theorem` | [multiplicity_addValuation_apply](../../../../mathematics/Algebra/PrimeMultiplicity/Variantf42955b254335fcedb20fd7ae45f91e0a697fd061c148db8d23b3f9192b1f16e.lean/declarations/multiplicity-addvaluation-apply--cc1d3c19b171d50a1a16ca02.md) | 29 | `result-track:cc1d3c19b171d50a1a16ca02eadb53ceb13dc20597176e87a6e321c34902369a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
