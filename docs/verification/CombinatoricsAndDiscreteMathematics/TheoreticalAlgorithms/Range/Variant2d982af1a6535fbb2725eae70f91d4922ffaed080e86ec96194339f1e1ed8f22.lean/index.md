# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bd3c158fd1e919da5f978bcc1a625862badc88b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bd3c158fd1e919da5f978bcc1a625862badc88b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Int` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/declarations/range--034cff34a576e7cbfcaa55b0.md) | 22 | `declaration-track:034cff34a576e7cbfcaa55b0c50239e64014e5e88f13d0ccbb4ca775ef4262e5` |
| 2 | `theorem` | [mem_range_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/declarations/mem-range-iff--dab679d7b9d197ddcc6032d5.md) | 25 | `result-track:dab679d7b9d197ddcc6032d5bf4aba8d5ed0cd6a21397a5b68b07ce2036f2ae8` |
| 3 | `instance` | [decidableLELT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/declarations/decidablelelt--4699b580166c06c2366f8710.md) | 30 | `declaration-track:4699b580166c06c2366f871011d7e1a55db4d692ffbec42a89355be8c6326431` |
| 4 | `instance` | [decidableLELE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/declarations/decidablelele--ba4cd6414a605ef51623e3f1.md) | 34 | `declaration-track:ba4cd6414a605ef51623e3f1100a4a7f19aeb4e4703bc583d7841573e6c41ae1` |
| 5 | `instance` | [decidableLTLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/declarations/decidableltlt--47045c6ad603bc0e1e4fe875.md) | 40 | `declaration-track:47045c6ad603bc0e1e4fe875b30db1266000eb53954b3a2e96dc690f68c92e4a` |
| 6 | `instance` | [decidableLTLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22.lean/declarations/decidableltle--f375f389eda68652f0c80493.md) | 44 | `declaration-track:f375f389eda68652f0c80493b9594d4dd38388a0756d378bcc4043c3079cc6d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
