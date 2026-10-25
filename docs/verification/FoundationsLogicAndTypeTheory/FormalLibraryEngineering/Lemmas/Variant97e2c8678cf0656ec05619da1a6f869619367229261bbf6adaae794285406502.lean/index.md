# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35178e6062fcd2792c6fab3f7f917104efe5b47d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35178e6062fcd2792c6fab3f7f917104efe5b47d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Ordering.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Classes` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.IteSimp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ite_eq_lt_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/declarations/ite-eq-lt-distrib--5de6c173c6fe57b994449293.md) | 30 | `result-track:5de6c173c6fe57b99444929311fdc4a84fcb05aade58f8651ca4c0e5a655f80a` |
| 2 | `theorem` | [ite_eq_eq_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/declarations/ite-eq-eq-distrib--c3dc8c5a5cc84d2b7f4f21fb.md) | 36 | `result-track:c3dc8c5a5cc84d2b7f4f21fbcaaa21c2c0dfe18fc6bfdbc5902a744892c5ce13` |
| 3 | `theorem` | [ite_eq_gt_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/declarations/ite-eq-gt-distrib--74fe334e91e732a9f627d608.md) | 42 | `result-track:74fe334e91e732a9f627d608d536d5f56efe4b18239de918c504da259eab4d00` |
| 4 | `theorem` | [cmpUsing_eq_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/declarations/cmpusing-eq-lt--ed1d02a24f34007e1e80d0d3.md) | 56 | `result-track:ed1d02a24f34007e1e80d0d3eaa66695df028c0d7848b93c657981110c9d1af4` |
| 5 | `theorem` | [cmpUsing_eq_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/declarations/cmpusing-eq-gt--2ba75fe41dfa0c890dd07187.md) | 60 | `result-track:2ba75fe41dfa0c890dd07187a1ee5781a3570943f42f90aade23f0bcdb321432` |
| 6 | `theorem` | [cmpUsing_eq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant97e2c8678cf0656ec05619da1a6f869619367229261bbf6adaae794285406502.lean/declarations/cmpusing-eq-eq--3d200730c90595507d272d90.md) | 75 | `result-track:3d200730c90595507d272d9021db526c1ecc879012d8eccb9ac01da4aa0024e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
