# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixArrangement.Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c363862738f009cb38cfaa4571de3b7cf8e5d5e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c363862738f009cb38cfaa4571de3b7cf8e5d5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.Complexity.GlitchObstruction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrixInstance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/binarymatrixinstance--2b3526a480987f7967bad8e3.md) | 29 | `declaration-track:2b3526a480987f7967bad8e3c9ba1dea1408b87e26b2177c534e5f4f3e4c7995` |
| 2 | `structure` | [CompressionRuleset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/compressionruleset--bf26faa2f5357bfa4a3be5d8.md) | 34 | `declaration-track:bf26faa2f5357bfa4a3be5d8ff28f86dc7258b184c7c73af61ee0cb1ff1e5d67` |
| 3 | `structure` | [SmoothRuleset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/smoothruleset--563ed40722a756d6229dc37a.md) | 48 | `declaration-track:563ed40722a756d6229dc37a3af872b6e7a4db394bd2ba695dafacfe7427db3e` |
| 4 | `structure` | [GlitchedRuleset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/glitchedruleset--fcfe4d34f295262e459c59f8.md) | 58 | `declaration-track:fcfe4d34f295262e459c59f80bb605ff040d7f4f3669441bedd7c9900016c0ad` |
| 5 | `structure` | [EllipticTorsionWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/elliptictorsionwitness--1741184a8e67899a326aa3b6.md) | 64 | `declaration-track:1741184a8e67899a326aa3b6ce8eff3adb8d2f55c3e69985e3a3d7fdd6b294e9` |
| 6 | `structure` | [TorsionCompatibility](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/torsioncompatibility--66908ea1552f74fedf9cfc8a.md) | 74 | `declaration-track:66908ea1552f74fedf9cfc8a89d8b179c30160e4b93a81cfb86ebd0a15754249` |
| 7 | `structure` | [ArrangementTheoremTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/arrangementtheoremtarget--5646fb17bf1cfcaadd907d7a.md) | 87 | `declaration-track:5646fb17bf1cfcaadd907d7afafca7d15e5a09c5c17688ffc59926dd598d575e` |
| 8 | `structure` | [PEqualsNPTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/pequalsnptarget--08682acf8b4922b13d3f015c.md) | 97 | `declaration-track:08682acf8b4922b13d3f015c395382802dea000391483a0ef6ad4f0db54eb048` |
| 9 | `structure` | [PNotEqualsNPTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/pnotequalsnptarget--68f7b942bc7c38a326bca988.md) | 110 | `declaration-track:68f7b942bc7c38a326bca988bcfb9ef0ea81918e0e95b45013e29ed931742eab` |
| 10 | `theorem` | [ruleset_compression_optimal_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/ruleset-compression-optimal-if-supplied--02d338668d1aac761aab4e48.md) | 117 | `result-track:02d338668d1aac761aab4e486b0612a26d7f51461d2cadfafbdc89edec0ea1e8` |
| 11 | `theorem` | [ruleset_deterministic_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/ruleset-deterministic-if-supplied--2c3f9924c4fce527cd8b183a.md) | 122 | `result-track:2c3f9924c4fce527cd8b183a0676c4c64dd7b57b87ac015124861aab6b8a48ca` |
| 12 | `theorem` | [torsion_yielded_by_instance_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/torsion-yielded-by-instance-if-supplied--482074f385790c5a80a14273.md) | 127 | `result-track:482074f385790c5a80a142737d13fbb11a5426d14d882fcaf93f88586901f619` |
| 13 | `theorem` | [torsion_out_of_bounds_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/torsion-out-of-bounds-if-supplied--cffe8cd2b1f336db500f2320.md) | 134 | `result-track:cffe8cd2b1f336db500f2320b838c78debe94717d2157645c7afedd39bba1566` |
| 14 | `theorem` | [arrangement_classified_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/arrangement-classified-if-supplied--a5e8ece2be0998d4bfaf1fdc.md) | 141 | `result-track:a5e8ece2be0998d4bfaf1fdc96a70a5108a64ab1943f7e04473f2a649703b6dc` |
| 15 | `theorem` | [p_equals_np_target_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/p-equals-np-target-if-supplied--1254b06cdd8f9dd5c1880bec.md) | 146 | `result-track:1254b06cdd8f9dd5c1880becfb0015daf4cb14123596801de5e69d60f7801e29` |
| 16 | `theorem` | [p_not_equals_np_target_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixArrangement/Variant6e9afd2d392609cd3447cda671a7c857329e7c0db96c64c9653eb381803d3a2c.lean/declarations/p-not-equals-np-target-if-supplied--dde7c375de21f394dcb4f7ba.md) | 153 | `result-track:dde7c375de21f394dcb4f7baf04a4486ed2330f209dc074dc49cbf41cb6e96be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
