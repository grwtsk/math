# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CancelLeads.Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d18b65205f8ccbdbcdd803deb000bdbbfa0a479f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d18b65205f8ccbdbcdd803deb000bdbbfa0a479f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/declarations/cancelleads--3db65680a33ad41b2de464cb.md) | 37 | `declaration-track:3db65680a33ad41b2de464cb8e3d9638b5dc947e23b4ec169e0c1eea234b83f0` |
| 2 | `theorem` | [neg_cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/declarations/neg-cancelleads--f91405ec957357693d6dc184.md) | 44 | `result-track:f91405ec957357693d6dc18495768a4abea5e9701bcf6ff6a0a9b390a593b3e9` |
| 3 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree-of-comm--0ada807e3d9a597d28c63bb3.md) | 47 | `result-track:0ada807e3d9a597d28c63bb3f3934e4353ef43c8ca0c8c6301f8a7a9956bbcc6` |
| 4 | `theorem` | [dvd_cancelLeads_of_dvd_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/declarations/dvd-cancelleads-of-dvd-of-dvd--2a5aaff7e4e98190673bd091.md) | 74 | `result-track:2a5aaff7e4e98190673bd091281b8dac4113801e9e8687a427d82ca05d8a14e1` |
| 5 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant7fb708941c7cbf5c77a51491e773ce0fb3ad724c1efa328e30a056d72ca5681f.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree--f62ad17eaed5494605a0b5ad.md) | 77 | `result-track:f62ad17eaed5494605a0b5adcf7aaf65b8445c91cfbd5b4404a8fa71bf820932` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
