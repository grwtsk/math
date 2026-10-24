# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75a0050516f6ddee38cef9d4e958d5fe0e851f2c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75a0050516f6ddee38cef9d4e958d5fe0e851f2c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Iterators.Lemmas.Consumers.Monadic.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.HashSet.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.TreeSet.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.toHashSet_equiv_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean/declarations/iter-tohashset-equiv-oflist--ef90378fd486372edcaa04a6.md) | 24 | `result-track:ef90378fd486372edcaa04a6007ea311cd5c34c7c8af300493a39c0ec02c2e3e` |
| 2 | `theorem` | [Iter.toExtHashSet_eq_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean/declarations/iter-toexthashset-eq-oflist--11f09515b88bb047ea187217.md) | 31 | `result-track:11f09515b88bb047ea1872171e1d53bdd5faff3d6a61072efd6f8fa7f28a120e` |
| 3 | `theorem` | [Iter.toTreeSet_equiv_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean/declarations/iter-totreeset-equiv-oflist--20d6193986e705a095939e0e.md) | 38 | `result-track:20d6193986e705a095939e0eeb8f450f2fcaf4421b175166fb25e4c51cfb6b68` |
| 4 | `theorem` | [Iter.toExtTreeSet_eq_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e.lean/declarations/iter-toexttreeset-eq-oflist--9bb31acb0d52d9af2e434522.md) | 45 | `result-track:9bb31acb0d52d9af2e434522feef26b11c2ccff282c073e449b6fd5c09c8f4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
