# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Star.Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c509178d59f3661036680c011ad550ad72e6a5b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c509178d59f3661036680c011ad550ad72e6a5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph--55a802942d6f9e250621303a.md) | 37 | `declaration-track:55a802942d6f9e250621303a12ab995b142bc793ba922a2b4b293cc91eef8570` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/instance--7cacad3590cbf76c68534fa4.md) | 40 | `declaration-track:7cacad3590cbf76c68534fa462a1d0a9ef2a60617081a5860027f8b21d513551` |
| 3 | `lemma` | [starGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph-adj--aa022807aaeb5961d4710069.md) | 44 | `result-track:aa022807aaeb5961d47100695b7d50e1f6fe836d7c002e409ae63a71d40d6bff` |
| 4 | `lemma` | [isUniversal_starGraph_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/isuniversal-stargraph-self--c94eed158937b0e03d1ac17b.md) | 48 | `result-track:c94eed158937b0e03d1ac17b58ac04b536358b1e092c5739480b993ea6dc7d77` |
| 5 | `lemma` | [starGraph_adj_center_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph-adj-center-iff--e64536ad23c910b1aaf0674d.md) | 53 | `result-track:e64536ad23c910b1aaf0674dd11f39062dfb5f27977e3a06fa66dedb430b921f` |
| 6 | `lemma` | [starGraph_center_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph-center-adj--10fef8de0f47153159a5f255.md) | 55 | `result-track:10fef8de0f47153159a5f255c42dbf9f2ae79f439cf88e7a2b696e93fa44a61d` |
| 7 | `lemma` | [starGraph_center_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph-center-adj--8651c6cf07947fb4db9310fb.md) | 58 | `result-track:8651c6cf07947fb4db9310fb3edee095cb429b6992067003db5a096e25d36230` |
| 8 | `lemma` | [connected_starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/connected-stargraph--e9ae237d0395ca7f37ae6289.md) | 61 | `result-track:e9ae237d0395ca7f37ae628932ab20385b7c55477a896b61b8d777adeb18055d` |
| 9 | `lemma` | [isAcyclic_starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/isacyclic-stargraph--a19103de7b6228e90159fa61.md) | 64 | `result-track:a19103de7b6228e90159fa6179f0a900a353e91240120fefc453d731a33fe70f` |
| 10 | `lemma` | [isTree_starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/istree-stargraph--d5bbbbddd8bab826d562e8d4.md) | 75 | `result-track:d5bbbbddd8bab826d562e8d417b063dcb3280dfc19f5ce4dca08d96b5b799883` |
| 11 | `def` | [Coloring.starGraphBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/coloring-stargraphbool--fddb7be2cbd8dbc7247c4f78.md) | 79 | `declaration-track:fddb7be2cbd8dbc7247c4f78e4735e5837af8ae46e4778e2ed2a006d42829295` |
| 12 | `theorem` | [IsBipartite.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/isbipartite-stargraph--cc6aa0e31e0c40a0ffdad588.md) | 83 | `result-track:cc6aa0e31e0c40a0ffdad588c5caae96bdaa44a7e2f09088c9d5551e130c7182` |
| 13 | `theorem` | [IsBipartiteWith.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/isbipartitewith-stargraph--c56cfb5712fe7a93034627fe.md) | 87 | `result-track:c56cfb5712fe7a93034627feff4e69b572bdd1e5add2691bfb14d218fc7f6c0a` |
| 14 | `theorem` | [IsCompleteBetween.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/iscompletebetween-stargraph--fad7d115fe331f3d6338f94c.md) | 90 | `result-track:fad7d115fe331f3d6338f94c3aaddfc75eb97742ec91d60a23552f0b180e4d65` |
| 15 | `theorem` | [IsCompleteMultipartite.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/iscompletemultipartite-stargraph--2722d07555c8239b5f6c1fc3.md) | 93 | `result-track:2722d07555c8239b5f6c1fc30b02018f87af66e6719dae4ea2179ba280b0419b` |
| 16 | `lemma` | [degree_starGraph_of_ne_center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/degree-stargraph-of-ne-center--cb58d0c6d49ff10375b4edc7.md) | 97 | `result-track:cb58d0c6d49ff10375b4edc7a209fadced3d3abe3244d93c775021db527b04f6` |
| 17 | `lemma` | [degree_starGraph_center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/degree-stargraph-center--ace7fcb031ba902f197622af.md) | 102 | `result-track:ace7fcb031ba902f197622af630afb40ab8e109469dff2d8c903c5eef6b417d3` |
| 18 | `theorem` | [starGraph_inl_unitMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph-inl-unitmk--97d8079ab70cd113ba9a752f.md) | 106 | `result-track:97d8079ab70cd113ba9a752fae39de729ee579c04b687cb446bbc65ff3ffe339` |
| 19 | `theorem` | [starGraph_inr_unitMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant1543765e15231ef3e7d8c3d2fbfce277bb37d57296e6a9f8b46eee5f0dd61285.lean/declarations/stargraph-inr-unitmk--cb2ef185f1d96658034e3f59.md) | 109 | `result-track:cb2ef185f1d96658034e3f593b35d63b6d2bb121e3f95330348f67323c4b1ce0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
