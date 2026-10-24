# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CancelLeads.Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "316fcf73e34cf22a68d0cd2c762170b4261051a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `316fcf73e34cf22a68d0cd2c762170b4261051a1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/declarations/cancelleads--342c1854702cd202abb4e9c6.md) | 39 | `declaration-track:342c1854702cd202abb4e9c67a95126443277cec6c1dafce7fc9635cc346c9b0` |
| 2 | `theorem` | [neg_cancelLeads](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/declarations/neg-cancelleads--a8981cac34fc48f532b49b3d.md) | 47 | `result-track:a8981cac34fc48f532b49b3dd07cd4f3528e3abb32e9c056a55bb82815194d46` |
| 3 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree-of-comm--b9e2460ad2eda4aa8f867fd5.md) | 51 | `result-track:b9e2460ad2eda4aa8f867fd5f129f42022cf7ec799a9d05c82fd184d20296c78` |
| 4 | `theorem` | [dvd_cancelLeads_of_dvd_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/declarations/dvd-cancelleads-of-dvd-of-dvd--6bdb1ecc745e513c4f90e272.md) | 82 | `result-track:6bdb1ecc745e513c4f90e272acc027836816d7f100b24696a0bf61a61e9cc701` |
| 5 | `theorem` | [natDegree_cancelLeads_lt_of_natDegree_le_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/CancelLeads/Variant014e43f0aa1dc0481d9009f8615449707e1d895862e69a73384e1133f909f744.lean/declarations/natdegree-cancelleads-lt-of-natdegree-le-natdegree--e2eb35c2926be5dd639f6d4c.md) | 86 | `result-track:e2eb35c2926be5dd639f6d4c31463436fa160d9bd2bec95d4b6e4664858dd5a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
