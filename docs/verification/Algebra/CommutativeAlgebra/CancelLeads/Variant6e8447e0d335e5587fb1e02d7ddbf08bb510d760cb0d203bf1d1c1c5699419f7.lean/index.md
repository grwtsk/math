# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CancelLeads.Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c828b4e1e2d3915ddd0c2b6ccc4a493fc706850b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c828b4e1e2d3915ddd0c2b6ccc4a493fc706850b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/declarations/cancelleads--098dfa1813bfaf54c6d5399b.md) | 45 | `declaration-track:098dfa1813bfaf54c6d5399b5a37b51a8a0be5693c9fa5055ca0cd6d4b5f968c` |
| 2 | `theorem` | [neg_cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/declarations/neg-cancelleads--c8c6d35a56545b18ff273b81.md) | 52 | `result-track:c8c6d35a56545b18ff273b814ae219f8223dda073f2a582b1449d70868b0b61a` |
| 3 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree-of-comm--cc3985f8cb8017114cdcaf22.md) | 55 | `result-track:cc3985f8cb8017114cdcaf22d2b56093355e29cd4b56841dcbd29d20e207d1a7` |
| 4 | `theorem` | [dvd_cancelLeads_of_dvd_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/declarations/dvd-cancelleads-of-dvd-of-dvd--8bb6a4d2d6a78b1175b31da2.md) | 82 | `result-track:8bb6a4d2d6a78b1175b31da20e50f38903eb6d024e58d2be76a0a6dd0a9acf2e` |
| 5 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant6e8447e0d335e5587fb1e02d7ddbf08bb510d760cb0d203bf1d1c1c5699419f7.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree--3eaa434eafa336b336a89c02.md) | 85 | `result-track:3eaa434eafa336b336a89c02d247a166ee0929a073eceff33ec2b36796546ba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
