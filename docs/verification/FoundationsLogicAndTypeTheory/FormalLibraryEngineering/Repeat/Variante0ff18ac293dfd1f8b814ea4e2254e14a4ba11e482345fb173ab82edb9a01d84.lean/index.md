# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42240f827f9506234ca5379c15ac7de3aa18a7dd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42240f827f9506234ca5379c15ac7de3aa18a7dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.step_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-step-repeat--8687782c484640b1d52bed73.md) | 22 | `result-track:8687782c484640b1d52bed73a1b65efaa33b886c073418649af8f9c80ad08e0f` |
| 2 | `theorem` | [Iter.atIdxSlow?_zero_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-atidxslow-zero-repeat--ed67973cbba5a2c033262d7b.md) | 26 | `result-track:ed67973cbba5a2c033262d7bd131dc4e754caabaa1a634c317bae19bd4fd9c61` |
| 3 | `theorem` | [Iter.atIdxSlow?_succ_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-atidxslow-succ-repeat--7591fba9a3bfb57a8449df31.md) | 30 | `result-track:7591fba9a3bfb57a8449df31c2fecaf985a84da37fa7e39ff25b630ff8a13c80` |
| 4 | `theorem` | [Iter.atIdxSlow?_succ_repeat_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-atidxslow-succ-repeat-eq-map--0ebfdd06ad0c05490872ea0f.md) | 34 | `result-track:0ebfdd06ad0c05490872ea0f89d9bcc47050032c02bc0fe17ebc0ce58b232d5a` |
| 5 | `theorem` | [Iter.atIdxSlow?_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-atidxslow-repeat--4e69a084e2b2ae20c113cd9b.md) | 43 | `result-track:4e69a084e2b2ae20c113cd9b87c9e1ad747680b345cd880e079fc6549861cac4` |
| 6 | `theorem` | [Iter.isSome_atIdxSlow?_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-issome-atidxslow-repeat--8604d1ea97bf3864168c56e6.md) | 50 | `result-track:8604d1ea97bf3864168c56e6cf0432ac3082db745334830b1fc843a984e25c79` |
| 7 | `theorem` | [Iter.toList_take_repeat_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84.lean/declarations/iter-tolist-take-repeat-succ--5486654d159e4157a452abc5.md) | 55 | `result-track:5486654d159e4157a452abc58cbb829c5381fceee4da08314bc44ebd47c614ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
