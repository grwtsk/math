# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SymmetricStream.Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f09f8e2b04276711a4282428fff9bef09dac7c62",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f09f8e2b04276711a4282428fff9bef09dac7c62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.RuleEngine` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrixStream` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SymmetricMatrixStream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/declarations/symmetricmatrixstream--0a2151e01945cebf2c060d03.md) | 19 | `declaration-track:0a2151e01945cebf2c060d0390297cbca670fce7c8934efe93dc97f63457781f` |
| 2 | `def` | [materialize?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/declarations/materialize--52faf662d60668bf0531cd82.md) | 27 | `declaration-track:52faf662d60668bf0531cd824761cfc152d6ef0ec710f83d9ba219f85db3726e` |
| 3 | `def` | [binaryMatrixStreamOfList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/declarations/binarymatrixstreamoflist--97aa7f3eb2bd84d7e0c94611.md) | 39 | `declaration-track:97aa7f3eb2bd84d7e0c946118aba353e2090a5a4a27a7dfa009368cc59560372` |
| 4 | `def` | [copyAtomStream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/declarations/copyatomstream--4c5868b7ebfa3dda9409eb5b.md) | 45 | `declaration-track:4c5868b7ebfa3dda9409eb5b5b43a2f49dc17e2c707b2b362534ab768623852a` |
| 5 | `theorem` | [materialize_copy_atom_stream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variant174ec649de2e84b4aae5129f5735e433f8580478085a3fe9e59433e328c09eb7.lean/declarations/materialize-copy-atom-stream--d2fbd34e5c932996edd08b18.md) | 59 | `result-track:d2fbd34e5c932996edd08b18f8787f78552d2f94e7bd39d6ea3b98d9dfc4244e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
