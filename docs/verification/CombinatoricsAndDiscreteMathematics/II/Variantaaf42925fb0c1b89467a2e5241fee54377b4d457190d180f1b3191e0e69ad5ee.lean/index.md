# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.II.Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a0209da87e3a2fa37f742e13be0e4ed5fee5198",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a0209da87e3a2fa37f742e13be0e4ed5fee5198`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/finset--c297a743008acad0eec486ff.md) | 55 | `declaration-track:c297a743008acad0eec486ff6e73361f2130907c62d14dfea0f5ec86a3b52df0` |
| 2 | `lemma` | [mem_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/mem-finset-iff--3bfc6d9915f55f9471b70942.md) | 59 | `result-track:3bfc6d9915f55f9471b709425fe7116d98a46f4d34f590a4783c5895f531ca72` |
| 3 | `lemma` | [last_mem_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/last-mem-finset--d2e096c6ab37672371a1ea60.md) | 65 | `result-track:d2e096c6ab37672371a1ea604879ac37884b98bbdd65304eab4ffb69aa7e8c1f` |
| 4 | `lemma` | [castSucc_mem_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/castsucc-mem-finset-iff--bd9266d56157e5a330619f12.md) | 70 | `result-track:bd9266d56157e5a330619f12050afd60e592dd18a89a070537e6c1044a38a67a` |
| 5 | `lemma` | [nonempty_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/nonempty-finset--47a636db1763936f5a597cf6.md) | 75 | `result-track:47a636db1763936f5a597cf68cd80665ac6fcd9b55e2eb314e20c322d8be4358` |
| 6 | `def` | [map'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map--b8faa72e3045efad964551e4.md) | 81 | `declaration-track:b8faa72e3045efad964551e4af29def6518966ab93bd7d328930f7d272242d74` |
| 7 | `lemma` | [map'_eq_last_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-eq-last-iff--2fb4362749ab87e22d8d9fc7.md) | 84 | `result-track:2fb4362749ab87e22d8d9fc78f0b42b9ea358df59548c68445f6f59048b94af6` |
| 8 | `lemma` | [map'_eq_castSucc_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-eq-castsucc-iff--e2c2ece5e7089e1918805141.md) | 97 | `result-track:e2c2ece5e7089e1918805141e19642474e0ca4a41510433a0a4c977fa395f381` |
| 9 | `lemma` | [map'_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-last--d450065fe19c0efb5c5a4f0d.md) | 114 | `result-track:d450065fe19c0efb5c5a4f0d3927097928ba52505a9770b610e30813460e3e5d` |
| 10 | `lemma` | [map'_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-zero--7410996d4bd40d5b3bc7f565.md) | 119 | `result-track:7410996d4bd40d5b3bc7f565c2b3c536178efec44d91e8597d20d33a2e8ce55a` |
| 11 | `lemma` | [map'_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-id--83e45afe2b9f0d04a096c4f8.md) | 124 | `result-track:83e45afe2b9f0d04a096c4f896340da03b581b6aecdd5b825861649d196768c8` |
| 12 | `lemma` | [map'_map'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-map--78f6036ec8c001814bd2b1de.md) | 130 | `result-track:78f6036ec8c001814bd2b1de9b0bdc25691d6c874d346b8436ac23b788c33216` |
| 13 | `lemma` | [map'_succAboveOrderEmb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-succaboveorderemb--a5c31fc93beeb043c24eb4f0.md) | 157 | `result-track:a5c31fc93beeb043c24eb4f02fd0f2fe93b1d1c6746a63864992812e5c8b1507` |
| 14 | `lemma` | [map'_predAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/map-predabove--18923223e20ec8002a6b5752.md) | 188 | `result-track:18923223e20ec8002a6b57529f4fbdd69863ceaef9c62f6ee575041e62e6e49f` |
| 15 | `lemma` | [monotone_map'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/monotone-map--af51622bd8b3508155a6d651.md) | 218 | `result-track:af51622bd8b3508155a6d65146e9fe6ad704fa2cd574508deea8595f4b7d1544` |
| 16 | `def` | [II](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/ii--1804ae68aab77eb3593e3f60.md) | 234 | `declaration-track:1804ae68aab77eb3593e3f606f6fe9023b0b64b3d818442a88a75ffea6f30dbd` |
| 17 | `lemma` | [II_δ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/ii--263fcbe67e4bf6958998bb5e.md) | 247 | `result-track:263fcbe67e4bf6958998bb5efb839f9f2e0697151b4eb7d9e81c1e3c9d36ff87` |
| 18 | `lemma` | [II_σ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/II/Variantaaf42925fb0c1b89467a2e5241fee54377b4d457190d180f1b3191e0e69ad5ee.lean/declarations/ii--0044ee613245c7a72c73d9d5.md) | 252 | `result-track:0044ee613245c7a72c73d9d5e1a47acdcfebcfea95fb317ea008201ef865fb43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
