# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refute.Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8b157be36d7dfa14b62fb28df6ab9edca72cf08",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8b157be36d7dfa14b62fb28df6ab9edca72cf08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Search.CounterExample` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LBExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/lbexpr--43491955a07484887d6fe577.md) | 53 | `declaration-track:43491955a07484887d6fe5774dc8729cc86631b4354d6c86b91b4832d06f8c1e` |
| 2 | `structure` | [RefuteConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/refuteconfig--db8495ed9f4be79811b419ce.md) | 58 | `declaration-track:db8495ed9f4be79811b419ce8ae11083cf80b85d61e490c54e3cff52866a798a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/instance--c75776225e509339ddb8cccb.md) | 67 | `declaration-track:c75776225e509339ddb8cccb74548b658e88c4aeeb7877f648108419faf820f0` |
| 4 | `def` | [extractIntervalBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/extractintervalbounds--b088f3da87ae7c33b5ef22e4.md) | 72 | `declaration-track:b088f3da87ae7c33b5ef22e4d3812cba86c49e41ce6454baefc807978593ccf8` |
| 5 | `def` | [mkBox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/mkbox--2c293e37712c830ec43587e9.md) | 83 | `declaration-track:2c293e37712c830ec43587e941de5aa1255336d1525782d7209a8db150a230c3` |
| 6 | `def` | [reifyFunc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/reifyfunc--ac82f6fc7b73c0ca20faa1c2.md) | 91 | `declaration-track:ac82f6fc7b73c0ca20faa1c2e93c74314dd2c76da7d2a4d634ae5fd6f1984fcd` |
| 7 | `def` | [refuteCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/refutecore--12e9e2e82e88073a8b679d84.md) | 114 | `declaration-track:12e9e2e82e88073a8b679d846e581d41601e5cf3b9b436249ca7cc83b2cf623e` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/syntax--43b523f8e55b47046cc1f248.md) | 322 | `declaration-track:43b523f8e55b47046cc1f2482424701550026ef0d325cc6bf4b8e5b4bc396ef6` |
| 9 | `def` | [evalIntervalRefute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/declarations/evalintervalrefute--2c90a2ed0a731170c728f3c3.md) | 325 | `declaration-track:2c90a2ed0a731170c728f3c355cc02fb92e36d4cde06e4cad31411160fadcf6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
