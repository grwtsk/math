# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refute.Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f55ae713b9ff6ad700fe6038b4408283e1edbbe5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f55ae713b9ff6ad700fe6038b4408283e1edbbe5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Search.CounterExample` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LBExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/lbexpr--93f061c5f69ed4393478c9ad.md) | 61 | `declaration-track:93f061c5f69ed4393478c9ad254d5254bb10c294bea0aa3c9515e5c5f9fe48dc` |
| 2 | `structure` | [RefuteConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/refuteconfig--56b78c6ee61df5f678d49c1e.md) | 66 | `declaration-track:56b78c6ee61df5f678d49c1e685f635aadcb17f7bd383a8a09e9a2ab4d126faf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/instance--8c83feaec1eda24aeb32651d.md) | 75 | `declaration-track:8c83feaec1eda24aeb32651d702440e8c282c3b5a191c7ed65a723b4ee340e36` |
| 4 | `def` | [extractIntervalBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/extractintervalbounds--9ec98695caa8ca9d993e8533.md) | 80 | `declaration-track:9ec98695caa8ca9d993e8533c56bb01414a04200a707aa20fe3127e4aad9a066` |
| 5 | `def` | [mkBox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/mkbox--9128a3bc87d7ee5c8b4cb1b5.md) | 91 | `declaration-track:9128a3bc87d7ee5c8b4cb1b5950cdeb10d05a376ef903fd01a2aa33085556db2` |
| 6 | `def` | [reifyFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/reifyfunc--4db051b70a77252e0737ca8c.md) | 99 | `declaration-track:4db051b70a77252e0737ca8ced8e1c3d52a9d879a5cac8aa7a13dec844da199d` |
| 7 | `def` | [refuteCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/refutecore--db3f184ce7428f5cdb90874f.md) | 122 | `declaration-track:db3f184ce7428f5cdb90874fb2bf6b43bf0d6a26699311aef591d70414f0b451` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/syntax--74d78508e3f260529a666a80.md) | 330 | `declaration-track:74d78508e3f260529a666a805f39039b8323bf1e20faf82c3af3f136271e2c09` |
| 9 | `def` | [evalIntervalRefute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/declarations/evalintervalrefute--ead89a32d2022cb69ff28b22.md) | 333 | `declaration-track:ead89a32d2022cb69ff28b22e880b53ac4277c63ef91b52299f226b10de595bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
