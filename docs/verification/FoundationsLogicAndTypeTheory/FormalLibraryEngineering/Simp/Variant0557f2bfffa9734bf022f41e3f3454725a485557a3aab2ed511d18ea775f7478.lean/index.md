# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "525107e8031f6a066c6257d60ed3e280f4c3f5a6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `525107e8031f6a066c6257d60ed3e280f4c3f5a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.OpenPrivate` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimpTheoremInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/simptheoreminfo--49c4f039a970496e34c953ef.md) | 25 | `declaration-track:49c4f039a970496e34c953ef10f3a0e41d0a824e7eca5298c7cfa12a645747ab` |
| 2 | `def` | [isConditionalHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/isconditionalhyps--5c9841e60de1b28669697687.md) | 36 | `declaration-track:5c9841e60de1b286696976870c19f905f199362c25c17aeb56aad980ce63cbc5` |
| 3 | `def` | [withSimpTheoremInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/withsimptheoreminfos--271621d28e98bac90a46c22f.md) | 49 | `declaration-track:271621d28e98bac90a46c22fced1d17c5d8b034d0f58c07f51a6f8cc9be2084f` |
| 4 | `def` | [isSimpEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/issimpeq--812387cade6ded982b61a93b.md) | 60 | `declaration-track:812387cade6ded982b61a93b22f248961354105cbf504e98eee0f8a4b4fe4d4c` |
| 5 | `def` | [checkAllSimpTheoremInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/checkallsimptheoreminfos--1f880ccaafb06c84c8db36be.md) | 67 | `declaration-track:1f880ccaafb06c84c8db36be44496a0640f84763af147effc86583d0a16b527b` |
| 6 | `def` | [isSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/issimptheorem--f0b8a05163cf575e92e47ca7.md) | 76 | `declaration-track:f0b8a05163cf575e92e47ca76125dbde3fcdaad00fd470be37d6e34e661910cf` |
| 7 | `def` | [_root_.Lean.Meta.DiscrTree.elements](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/root-lean-meta-discrtree-elements--414e714c0996dd5df9465c05.md) | 81 | `declaration-track:414e714c0996dd5df9465c052be9881705d875b1a5a1e806a370dbb17b6ebd32` |
| 8 | `def` | [decorateError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/decorateerror--fcd8a43c1c3e199580ad5bd9.md) | 92 | `declaration-track:fcd8a43c1c3e199580ad5bd9d408500a495c2584fd5d336c6937bfe76f6476c0` |
| 9 | `def` | [formatLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/formatlemmas--0085a584a52d2bbaf7280de8.md) | 96 | `declaration-track:0085a584a52d2bbaf7280de8724c2554068583db8a3f97f34e66d76941b32eb9` |
| 10 | `def` | [simpNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/simpnf--2b70ad02bc20b8030b6bebf7.md) | 106 | `declaration-track:2b70ad02bc20b8030b6bebf72fe5c316bf15d090be9fe8ad006ccda9cebf63b8` |
| 11 | `def` | [simpVarHead](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/simpvarhead--dd11fe99b951bf5a49360645.md) | 197 | `declaration-track:dd11fe99b951bf5a49360645d2d64ca2b722d291f3df052ae7f70e1008af2746` |
| 12 | `def` | [Expr.eqOrIff?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/expr-eqoriff--67df5f04f5038c1d456ae34c.md) | 210 | `declaration-track:67df5f04f5038c1d456ae34c34e1b3937438a358d69286273a965eac28ed07ab` |
| 13 | `def` | [simpComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/declarations/simpcomm--61a5751a78b91c7fbdad709b.md) | 217 | `declaration-track:61a5751a78b91c7fbdad709b31d771c88202b927cb1d0fe85516bc8c76bd4188` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
