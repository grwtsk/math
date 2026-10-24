# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Star.Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35e8c307a0b98204c5850a362a83319b5eef6151",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35e8c307a0b98204c5850a362a83319b5eef6151`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean.json)

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
| 1 | `def` | [starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph--f5c70f1c568fb41b5ac00768.md) | 45 | `declaration-track:f5c70f1c568fb41b5ac007683da8344401acac74e278b43853df3510ea71f410` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/instance--cef7feba7d64acbc007e4bc0.md) | 48 | `declaration-track:cef7feba7d64acbc007e4bc005ec78e2866a25efcc16dced664c0eb238dee2e0` |
| 3 | `lemma` | [starGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph-adj--6f2a070747011d4397caa6ac.md) | 52 | `result-track:6f2a070747011d4397caa6ac5ac68b19a46b0e98bec91d163a9aa05681318e8c` |
| 4 | `lemma` | [isUniversal_starGraph_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/isuniversal-stargraph-self--4fa534e53ba8cf957e51d65f.md) | 56 | `result-track:4fa534e53ba8cf957e51d65fb425218e230a4b062e64bcfba6d2e6f2fec41c85` |
| 5 | `lemma` | [starGraph_adj_center_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph-adj-center-iff--ef2980dd43a2cb8a26921438.md) | 61 | `result-track:ef2980dd43a2cb8a269214384b2097ea3c64c247c289ca7d09965f6b47a9c01c` |
| 6 | `lemma` | [starGraph_center_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph-center-adj--edc811e7284ce69256ba6dc4.md) | 63 | `result-track:edc811e7284ce69256ba6dc492a92ea889b98ebbafdf20400c22963d49ce48b6` |
| 7 | `lemma` | [starGraph_center_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph-center-adj--a869be3a58df0fc70060fd12.md) | 66 | `result-track:a869be3a58df0fc70060fd124bf47a149b193add830f09ca6e99f50188c4dfec` |
| 8 | `lemma` | [connected_starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/connected-stargraph--c12d32f512876a2bf3f720b0.md) | 69 | `result-track:c12d32f512876a2bf3f720b0cff297b2a568f50efdf82e0d6f4e279c85e22d2e` |
| 9 | `lemma` | [isAcyclic_starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/isacyclic-stargraph--9b08808d4220ada57fc4a709.md) | 72 | `result-track:9b08808d4220ada57fc4a709937b9e0ec7d0669468d4687cd6cfc6da17ae6664` |
| 10 | `lemma` | [isTree_starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/istree-stargraph--7e58623fecc691acab7aab95.md) | 83 | `result-track:7e58623fecc691acab7aab954710f3835ef4ea02328c1c86c1305e00fd99a7a2` |
| 11 | `def` | [Coloring.starGraphBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/coloring-stargraphbool--98aa122cd654e02ba12c7c62.md) | 87 | `declaration-track:98aa122cd654e02ba12c7c62c141d67425265f7f015ce89760804209c37a2719` |
| 12 | `theorem` | [IsBipartite.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/isbipartite-stargraph--6449d5050177c0ecceb65de9.md) | 91 | `result-track:6449d5050177c0ecceb65de9bb05778353f1976770b4ad40baa263412b0c6ba5` |
| 13 | `theorem` | [IsBipartiteWith.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/isbipartitewith-stargraph--e0867b489af9a1d841993e3f.md) | 95 | `result-track:e0867b489af9a1d841993e3fed20e309712191f823d9fc72faab500acb84b1a6` |
| 14 | `theorem` | [IsCompleteBetween.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/iscompletebetween-stargraph--9dc32b6477a9992429c1d55d.md) | 98 | `result-track:9dc32b6477a9992429c1d55d2906656dcc5330016fce45079bea15f0ac793984` |
| 15 | `theorem` | [IsCompleteMultipartite.starGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/iscompletemultipartite-stargraph--7e09ce09e738cdb8c111f943.md) | 101 | `result-track:7e09ce09e738cdb8c111f943ef73c9ef0db82a0c9e5cdad4f4ad26faa5b14de9` |
| 16 | `lemma` | [degree_starGraph_of_ne_center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/degree-stargraph-of-ne-center--9959b8a7a0d0ebc7e1b7b411.md) | 105 | `result-track:9959b8a7a0d0ebc7e1b7b411657a4e5ccabcedc92177a4c44508e63f217637c4` |
| 17 | `lemma` | [degree_starGraph_center](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/degree-stargraph-center--bfa0a952b76bfedab3e49eb1.md) | 110 | `result-track:bfa0a952b76bfedab3e49eb1ef8b6e5f3f3ca37f01351d3631119f3dcda19fc2` |
| 18 | `theorem` | [starGraph_inl_unitMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph-inl-unitmk--6cf22ccf646c8850e4f80cd8.md) | 114 | `result-track:6cf22ccf646c8850e4f80cd8ec472eec47d38d38fdc53b70a26f51244f3a876a` |
| 19 | `theorem` | [starGraph_inr_unitMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Star/Variant3903028460d0d99b7569156a01c228b68a903c08fbf1bdad61f09199c59f4f79.lean/declarations/stargraph-inr-unitmk--3be54ced18317eef0e759b9f.md) | 117 | `result-track:3be54ced18317eef0e759b9f238ebeed497cac287efb50b7c8c8eb665c93dbf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
