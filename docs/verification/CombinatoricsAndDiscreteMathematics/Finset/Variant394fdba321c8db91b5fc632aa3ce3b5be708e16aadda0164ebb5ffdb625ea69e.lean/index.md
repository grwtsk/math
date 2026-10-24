# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a97bbca0b472da4e1cbf9a3f711f989b50035b8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a97bbca0b472da4e1cbf9a3f711f989b50035b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalFinsetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/evalfinsetcard--af995dbee5132883f7c14fd4.md) | 27 | `declaration-track:af995dbee5132883f7c14fd4fb4cd0bed8eec29c9d012c49e938cae1de6566ce` |
| 2 | `def` | [evalFintypeCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/evalfintypecard--6023723c425405ed7c39cee3.md) | 37 | `declaration-track:6023723c425405ed7c39cee31cde24bedb697562d17b485e1c1cdbae49008da2` |
| 3 | `def` | [evalFinsetDens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/evalfinsetdens--173d4fea740915c07b973268.md) | 49 | `declaration-track:173d4fea740915c07b973268640e5b70151725f85001b56136bc4fb75b3c7b41` |
| 4 | `def` | [evalFinsetSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/evalfinsetsum--9da22bedaea8801dfe48aa49.md) | 68 | `declaration-track:9da22bedaea8801dfe48aa496038193e103044f66548d649b70a10bfce6c9fdd` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--696f53a38c2b87319444d911.md) | 95 | `declaration-track:696f53a38c2b87319444d911c17c1d1f027d12c216508a386faa6b047e97d260` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--6a4976cbea0cc7adc3eca5a4.md) | 96 | `declaration-track:6a4976cbea0cc7adc3eca5a4e7ccee15af497ef45dbd69dcb069e6b2e10bb907` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--d03e1a334f1120f55037b4f8.md) | 100 | `declaration-track:d03e1a334f1120f55037b4f82f6f6a2b6a41ab793926d3d978f5ab08c42496de` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--e36af6b77564011ce305f45f.md) | 101 | `declaration-track:e36af6b77564011ce305f45f0c5bf723ed66d397370fe3df80de70f5793b46dc` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--9e5037093693b024886192d9.md) | 102 | `declaration-track:9e5037093693b024886192d998890694a0933d0297fa1bcf46fe639330407602` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--173962d42510c980b480bd80.md) | 103 | `declaration-track:173962d42510c980b480bd803a1007bfcbff4738885d2b8e75e0631c5c2a7ff8` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--3265e5f0d2dee473c3c2ce3f.md) | 104 | `declaration-track:3265e5f0d2dee473c3c2ce3f4d98bb8380dc38aa978a8e453b42668068b3ad82` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--f1f3bec035d32c34624075cb.md) | 105 | `declaration-track:f1f3bec035d32c34624075cb96425ec57b1a85bdc5dfc695755bddc32a0b17f6` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--8ee0c6046dcc81d34111db08.md) | 106 | `declaration-track:8ee0c6046dcc81d34111db08fb532ecce31fbdfbbf6525f4d23b1f4d4b00c991` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--a8f4eb5c9769dd4c44f08fb5.md) | 107 | `declaration-track:a8f4eb5c9769dd4c44f08fb5b5334af4d5cda5591855a1e8697f63cea2aafe55` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant394fdba321c8db91b5fc632aa3ce3b5be708e16aadda0164ebb5ffdb625ea69e.lean/declarations/example--64961b7137d350e648b146c8.md) | 109 | `declaration-track:64961b7137d350e648b146c8415847ff7e0ce85e7cf592d6a1abf9e3a662fb92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
