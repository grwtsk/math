# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31bc03e7dd70cabb3661149ad0b95c4b1606e970",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31bc03e7dd70cabb3661149ad0b95c4b1606e970`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_cons_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/mem-cons-eq--28735c7d38d18f3d226d2a68.md) | 61 | `result-track:28735c7d38d18f3d226d2a68f84b6c335b97182c171476702d793e2e265ef7eb` |
| 2 | `theorem` | [not_bex_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/not-bex-nil--96b5e693a9ae948acf682ebf.md) | 75 | `result-track:96b5e693a9ae948acf682ebf03e50533f3c9f62839bf17c13f109f6adef44b94` |
| 3 | `theorem` | [bex_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/bex-cons--48b6d29d2abdfc80e0707664.md) | 80 | `result-track:48b6d29d2abdfc80e07076644e142e8b2968a5d6730db841da442278792c0d58` |
| 4 | `def` | [mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/mapaccumr--939d47601ea04b23b4845275.md) | 138 | `declaration-track:939d47601ea04b23b4845275d68fa0687f6e211c8f4587c5b86af0554cd5bf2b` |
| 5 | `theorem` | [length_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/length-mapaccumr--c92905a4c3c2ddcbea6ec81b.md) | 148 | `result-track:c92905a4c3c2ddcbea6ec81b5565805e08c0d068eb68d1c385408d8faac3ddaf` |
| 6 | `def` | [mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/mapaccumr--08f2668606be274b467589e8.md) | 161 | `declaration-track:08f2668606be274b467589e80dd5e50cf7f4dfa6e8e4d63d0cce23419ee50469` |
| 7 | `theorem` | [length_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/declarations/length-mapaccumr--875fd785136d4aad43bf967f.md) | 172 | `result-track:875fd785136d4aad43bf967f83c2cb639047075cc4bd18dbed9e0bf8cbf1c1a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
