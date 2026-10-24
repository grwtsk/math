# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Admissibility.Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa734a9b937f8aa0a9c0437426fbf004e7e60e94",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa734a9b937f8aa0a9c0437426fbf004e7e60e94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Color.Centroid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Band](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/band--f9ce3d86562bb942e1c032c9.md) | 13 | `declaration-track:f9ce3d86562bb942e1c032c9e6387530231d0d000ad18d1d3ed95bc596e2c65d` |
| 2 | `inductive` | [ColorAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/coloratom--435bacb31e2956a8f4a82b0c.md) | 22 | `declaration-track:435bacb31e2956a8f4a82b0c95c50f360661634f1ddbcf8ba7c084af59953278` |
| 3 | `structure` | [Admissibility](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/admissibility--3d3aa682af36b3247cd579a7.md) | 33 | `declaration-track:3d3aa682af36b3247cd579a7286e17ef5be65ec72bdddad85f4696214b79578b` |
| 4 | `def` | [acceptsOnly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/acceptsonly--04bb9575cb7693e50a5ca1d7.md) | 39 | `declaration-track:04bb9575cb7693e50a5ca1d7c9702bbfb3ca12ff432188fdb32a6c7c44d5a3f9` |
| 5 | `def` | [rejectsUnresolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/rejectsunresolved--abd71cbab26209bcd4cb4807.md) | 42 | `declaration-track:abd71cbab26209bcd4cb48074c2c6e7eecbe42222ba0aedbd518f8fe200512d2` |
| 6 | `def` | [symmetricMixColorSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/symmetricmixcolorset--72a775f74b242c14da2af1e6.md) | 46 | `declaration-track:72a775f74b242c14da2af1e6324fc2025d1ffecb7e04898383dd1597c5fd1a0e` |
| 7 | `theorem` | [symmetricMixColorSet_red_green](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/symmetricmixcolorset-red-green--d429a0ff48f7375289d6d8f9.md) | 49 | `result-track:d429a0ff48f7375289d6d8f9c3904848c99a1565f9b4ff52c818c3deecf9ca24` |
| 8 | `theorem` | [symmetricMixColorSet_green_red](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Admissibility/Variant3b23cdd35a24608a49972df349da6dab01ecaacec0a1f115532065d626ac22a4.lean/declarations/symmetricmixcolorset-green-red--542d02de19f165cd072a2cac.md) | 52 | `result-track:542d02de19f165cd072a2cac0a92538b124d29eaaa82c672425811482c1da943` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
