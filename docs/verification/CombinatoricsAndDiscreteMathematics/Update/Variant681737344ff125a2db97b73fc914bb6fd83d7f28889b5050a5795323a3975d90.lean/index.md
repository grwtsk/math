# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Update.Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe0798dfc8d442efce1aa84a785e4b69453dfd96",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe0798dfc8d442efce1aa84a785e4b69453dfd96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.DependsOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset--85d78b964a0ac8b9530fc9ac.md) | 32 | `declaration-track:85d78b964a0ac8b9530fc9ac3f0e27598cf48523fcead77ca7ea704fb1baff27` |
| 2 | `theorem` | [updateFinset_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset-def--4679a2d294791d62f7dc2a56.md) | 37 | `result-track:4679a2d294791d62f7dc2a5636cfc8a478cfe8b9645acc70fd072e8e7f50c5f0` |
| 3 | `theorem` | [updateFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset-empty--22e6e5bf7600d919b013904c.md) | 41 | `result-track:22e6e5bf7600d919b013904c35f5ca881eda89e0af244faa33abfc14de96f4b8` |
| 4 | `theorem` | [updateFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset-singleton--93a201dba29a6b2777a8c589.md) | 44 | `result-track:93a201dba29a6b2777a8c5890f3c571ae817c3ae31915aba38141c2ea6ad7d4a` |
| 5 | `theorem` | [update_eq_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/update-eq-updatefinset--14824bccbd065368192a2105.md) | 52 | `result-track:14824bccbd065368192a21050fdbd0419bea90cc98ffffaf26051620a5d9459a` |
| 6 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.UpdateFinset.Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.DependsOn.updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-updatefinset-variant68db--a52a8cf7926cce5c6ce775e0.md) | 63 | `result-track:a52a8cf7926cce5c6ce775e0305c0be25ba0d771fc42082fd219e036591efe6a` |
| 7 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.UpdateFinset.Variant68db4a4cdb86264aa67ebc27444f6f8197e9b3721d131ae0edcae5e193e0ec27.DependsOn.update](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-updatefinset-variant68db--71e3b56fdb012ad5e2fb9fab.md) | 73 | `result-track:71e3b56fdb012ad5e2fb9fab7911e25a3080549b3595f86c5dfe432f86aee3d3` |
| 8 | `theorem` | [updateFinset_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset-updatefinset--11d16bb9dd32f14cced17cf8.md) | 78 | `result-track:11d16bb9dd32f14cced17cf8010d6a973e8e50731e42bc93c25062f601ac9b14` |
| 9 | `lemma` | [updateFinset_updateFinset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset-updatefinset-of-subset--df4285b3a23b58f2c2372a7e.md) | 90 | `result-track:df4285b3a23b58f2c2372a7e4475797dd6db99c7d86fe42b2567e26453ac6502` |
| 10 | `lemma` | [restrict_updateFinset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/restrict-updatefinset-of-subset--abe4175f4ee03fec0807e35c.md) | 98 | `result-track:abe4175f4ee03fec0807e35c78a761e32b9f88de7180b72a47cd5fbabbbbf554` |
| 11 | `lemma` | [restrict_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/restrict-updatefinset--3b9a1f2878eab55825ef3fec.md) | 103 | `result-track:3b9a1f2878eab55825ef3fecd5e600e3fc5048eabf5300c67888afe59b92043e` |
| 12 | `lemma` | [updateFinset_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Update/Variant681737344ff125a2db97b73fc914bb6fd83d7f28889b5050a5795323a3975d90.lean/declarations/updatefinset-restrict--2f500cbe0873ef9ba005fd1c.md) | 109 | `result-track:2f500cbe0873ef9ba005fd1ce0b6a7227dc07fd79cfa3ae873be935c2a025867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
