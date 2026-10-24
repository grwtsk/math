# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DependencyClosure.Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a98e4d3e565a17578d7b3169bc8c2bdb5e85d9f4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a98e4d3e565a17578d7b3169bc8c2bdb5e85d9f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.ReverseImportGraph` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Incremental.ReducerSeed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InclusionReason](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/inclusionreason--0bbe7acd4f0f8cc570c62753.md) | 15 | `declaration-track:0bbe7acd4f0f8cc570c6275311ee8438e0fa2c8360cf741ead18f3b9a00be66f` |
| 2 | `structure` | [InclusionPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/inclusionpath--0fd61bb22b0fb6f6b3945eb9.md) | 26 | `declaration-track:0fd61bb22b0fb6f6b3945eb9dda06e7a6aaa79866d23baaa990dd19441b23923` |
| 3 | `structure` | [DownstreamClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/downstreamclosure--51bf38b7a8ce88fc91c9e8dd.md) | 35 | `declaration-track:51bf38b7a8ce88fc91c9e8dd01155734c891623208d4c239c653f8122f9539ad` |
| 4 | `theorem` | [downstreamClosure_contains_seed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/downstreamclosure-contains-seed--112adc5476fa7998de8ad485.md) | 56 | `result-track:112adc5476fa7998de8ad485dd5ccadcc344164530012cd604802c1874eee4ed` |
| 5 | `theorem` | [reverseImportClosure_contains_seed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/reverseimportclosure-contains-seed--ee69eb5630930f4b24f1b73c.md) | 63 | `result-track:ee69eb5630930f4b24f1b73cfca5fce61099b69025e5223accdb1ba4259ed1da` |
| 6 | `theorem` | [downstreamClosure_reverse_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/downstreamclosure-reverse-closed--e83f0fda242080586abafcf3.md) | 70 | `result-track:e83f0fda242080586abafcf3b41032ffe138e72a7560a6015f788f6eeefd38a1` |
| 7 | `theorem` | [reverseImportClosure_is_reverse_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/reverseimportclosure-is-reverse-closed--122130e0e6212e63fd0f618d.md) | 78 | `result-track:122130e0e6212e63fd0f618de8361c9c3a7ddb66a5c0e198e0a1abbe47ec2222` |
| 8 | `theorem` | [downstreamClosure_everyAffected_explained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/downstreamclosure-everyaffected-explained--e52b6e173e25f0714b36a0df.md) | 86 | `result-track:e52b6e173e25f0714b36a0dfc8eff2d46d2e4639d151113a2f5f18ad6c46b41e` |
| 9 | `theorem` | [reverseImportClosure_every_module_explained](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/reverseimportclosure-every-module-explained--830ea113ec9a4015fb05397f.md) | 93 | `result-track:830ea113ec9a4015fb05397f8efc661c879b69b505bc43ec1d61b24d8ec2f3b7` |
| 10 | `theorem` | [downstreamClosure_no_unexplained_modules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/downstreamclosure-no-unexplained-modules--3d0c6fc81440baf31adf0af0.md) | 100 | `result-track:3d0c6fc81440baf31adf0af0c793af1799175dfb0e0855897e8c656d31333ee3` |
| 11 | `theorem` | [reverseImportClosure_is_minimal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DependencyClosure/Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a.lean/declarations/reverseimportclosure-is-minimal--fe5945f72aa513d0b3cdb2f8.md) | 107 | `result-track:fe5945f72aa513d0b3cdb2f8800f6f4f10889329559ab6ab33d02c49af102c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
