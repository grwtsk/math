# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sampleable.Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83d0d0fd04526cb10f8d7d7c3faa765d1098c20c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83d0d0fd04526cb10f8d7d7c3faa765d1098c20c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Rat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Monad` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Plausible.Sampleable` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Rat.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean/declarations/rat-shrinkable--93378ce4cf216b11d2184420.md) | 31 | `declaration-track:93378ce4cf216b11d21844209c6108d9ea5ed8eaa8cab5289b6b45bde7c3f931` |
| 2 | `instance` | [PNat.shrinkable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean/declarations/pnat-shrinkable--5071411b3cfbce375dbe7515.md) | 35 | `declaration-track:5071411b3cfbce375dbe751535c3281ae6b46ac3406f6d5e6e4b6165fe2c2b21` |
| 3 | `instance` | [Rat.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean/declarations/rat-sampleableext--2fa798e8fa0f4b0b4ed519d1.md) | 44 | `declaration-track:2fa798e8fa0f4b0b4ed519d11ff32b87288749ae7cf59e097a22c0110e0c627e` |
| 4 | `instance` | [PNat.sampleableExt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sampleable/Variant4ae7bc746db8fef505cc9e2b21b851ebbc072e1817161cb6584564b74f1c490e.lean/declarations/pnat-sampleableext--3b697389de4ac407a67aaf30.md) | 52 | `declaration-track:3b697389de4ac407a67aaf307d2b109b9a88c46c65bbbd4a888e9036e99ff096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
