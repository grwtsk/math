# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Drop.Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c030f916e7faa36fe5c156abdf821c6853cd84f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c030f916e7faa36fe5c156abdf821c6853cd84f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.drop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/declarations/iter-drop-eq--ab1ef37b7f70a72c453e1680.md) | 24 | `result-track:ab1ef37b7f70a72c453e168013b5a8eaf0d6eb1c13f93610628a60655e545ce1` |
| 2 | `theorem` | [Iter.step_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/declarations/iter-step-drop--445352f219256571d373065b.md) | 29 | `result-track:445352f219256571d373065b58ccffe1db556e798f6aa1bbf1a4c09a2c836b3d` |
| 3 | `theorem` | [Iter.atIdxSlow?_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/declarations/iter-atidxslow-drop--01a7a35b2c476de6e16075b5.md) | 43 | `result-track:01a7a35b2c476de6e16075b5c72a1546bb958ca653c50598b87c2442c306d54b` |
| 4 | `theorem` | [Iter.toList_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/declarations/iter-tolist-drop--181596c749cdaa9da6ce727c.md) | 54 | `result-track:181596c749cdaa9da6ce727c99f73f38c6541fe972ff80a4dea955edfb2b2f1f` |
| 5 | `theorem` | [Iter.toListRev_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/declarations/iter-tolistrev-drop--d41a80e7818cab983e3f066e.md) | 62 | `result-track:d41a80e7818cab983e3f066e7d511cbca71cb74f29c6061a6b0fa06e5861d1b2` |
| 6 | `theorem` | [Iter.toArray_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b.lean/declarations/iter-toarray-drop--c75d020d892581ee78a2f533.md) | 68 | `result-track:c75d020d892581ee78a2f5338f24909b977cba7f0cce498e44e64834e6f2641d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
