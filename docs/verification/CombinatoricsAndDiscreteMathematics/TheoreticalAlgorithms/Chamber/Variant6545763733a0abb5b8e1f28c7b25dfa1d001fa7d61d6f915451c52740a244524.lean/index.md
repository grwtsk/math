# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Chamber.Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6866bc68db478b3e19afc2244fdb9253bed7057a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6866bc68db478b3e19afc2244fdb9253bed7057a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `IndiscreteTerminalTopos.Representation` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePowerEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/primepowerevent--e64d32b1dbf15f8af6da9fad.md) | 15 | `declaration-track:e64d32b1dbf15f8af6da9fad0ec099a74cc7e84ae0d653a7f02a20c572986a79` |
| 2 | `structure` | [ChamberState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/chamberstate--9c079d733f15a578e1187970.md) | 28 | `declaration-track:9c079d733f15a578e11879700e77f130bd12d4acff7e714b84ec6809f36d68db` |
| 3 | `structure` | [ScalarKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/scalarkernel--53a368cf9a831831eda8d41f.md) | 37 | `declaration-track:53a368cf9a831831eda8d41fc6110a30f7124d6e1ef46d9bf9285bbd8eb23b8d` |
| 4 | `def` | [initialState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/initialstate--9252ad41a3dc69b8c4fe021b.md) | 68 | `declaration-track:9252ad41a3dc69b8c4fe021baed702321901ea3edf92ac91dc79e6e33481f682` |
| 5 | `def` | [advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/advance--c8065a9e653b9dd697f14cb7.md) | 72 | `declaration-track:c8065a9e653b9dd697f14cb743a0742ab61053831cfb4135f558a5b035e56848` |
| 6 | `theorem` | [stateRecurrence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/staterecurrence--f746d5ff6fb37b230d590219.md) | 83 | `result-track:f746d5ff6fb37b230d590219c6c9f56f7e5d808faebc809d8645996d288cbe58` |
| 7 | `inductive` | [ClampRegime](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/clampregime--56d7567826503a1a1a9d2f33.md) | 93 | `declaration-track:56d7567826503a1a1a9d2f33b1cc8f8b7117854866943953ad6d57067ac6ee29` |
| 8 | `def` | [chamberFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/chamberfunction--993044b20d766b8bd90e3cac.md) | 100 | `declaration-track:993044b20d766b8bd90e3cac413a782bcdf1046234b5ec27d9b984160e181b63` |
| 9 | `def` | [ChamberConvexity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/chamberconvexity--62d3b5b295472f3ab579d2fc.md) | 109 | `declaration-track:62d3b5b295472f3ab579d2fc96c8625d8e664ec47ef5ecdd304113da3bb54b76` |
| 10 | `def` | [clampedMinimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/clampedminimum--6a0fc3f605106a710d6098b3.md) | 116 | `declaration-track:6a0fc3f605106a710d6098b3b968f434bf855fa842aa36c4365c53af88369603` |
| 11 | `def` | [OnePointCriterion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/onepointcriterion--0028dc4e23fe06c1c83cefff.md) | 123 | `declaration-track:0028dc4e23fe06c1c83cefffb0a2f97f9d279117f971565bce60dd77962a42eb` |
| 12 | `def` | [legendreState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/legendrestate--fafe50da8fd534e68ff2e15b.md) | 131 | `declaration-track:fafe50da8fd534e68ff2e15bdcde7fcffd44ff92187ec45bb201db2b357a39cf` |
| 13 | `def` | [LegendreImpulseIdentity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/legendreimpulseidentity--fa5568ab05bb1d7f89c4b8d1.md) | 137 | `declaration-track:fa5568ab05bb1d7f89c4b8d1133f48621ebfdde7979023cca5d7b11844c161b9` |
| 14 | `structure` | [HardyGramData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/hardygramdata--d7927e45fdfa975f70e138c6.md) | 147 | `declaration-track:d7927e45fdfa975f70e138c6407bdec303674d27c263ba63a82bfc8f9fff1f5e` |
| 15 | `def` | [GramPositivity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/grampositivity--df20013bf1ae4bc07f30dbca.md) | 156 | `declaration-track:df20013bf1ae4bc07f30dbca4f7dcb73554d279ec38ab4908bd45f3eaae335b4` |
| 16 | `structure` | [FiniteFrontCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/finitefrontcertificate--f5b455fbc6f288ac27060acf.md) | 162 | `declaration-track:f5b455fbc6f288ac27060acfa9e1bc05fbffc827e98bb3c4f732c0ead48ace1b` |
| 17 | `def` | [LinearDriftObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/lineardriftobligation--0c66845ddfb476dc07b18166.md) | 170 | `declaration-track:0c66845ddfb476dc07b1816639b20f534d6cb157be4ea67a7e22c2a26c67bc58` |
| 18 | `def` | [HardyTailObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/hardytailobligation--1d38700cd6ad418b2364fbe0.md) | 178 | `declaration-track:1d38700cd6ad418b2364fbe0d8d66d681839374888191377362d3833560f2928` |
| 19 | `structure` | [ChamberObject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/chamberobject--451f13e98ef8cc470e4e4c4f.md) | 184 | `declaration-track:451f13e98ef8cc470e4e4c4f6047fb0729ce79ffb413dba6d7fa37af336ff5ff` |
| 20 | `def` | [mkChamberObject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/mkchamberobject--12b737b80df7c145e6f449c3.md) | 195 | `declaration-track:12b737b80df7c145e6f449c370b329cc451716bb988b3beb6bbbbccd1d64104e` |
| 21 | `def` | [RoundTripStatement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant6545763733a0abb5b8e1f28c7b25dfa1d001fa7d61d6f915451c52740a244524.lean/declarations/roundtripstatement--b10cafc7b5a71f2e2272403a.md) | 206 | `declaration-track:b10cafc7b5a71f2e2272403ac1353b01aa88b35d48d76ef7add996f945391be1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
