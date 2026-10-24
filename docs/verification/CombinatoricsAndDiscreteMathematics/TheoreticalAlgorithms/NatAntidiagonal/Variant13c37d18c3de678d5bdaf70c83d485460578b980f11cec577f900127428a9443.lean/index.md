# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NatAntidiagonal.Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14431d108a7bb8f84fce553258a8cc1c2bff6a9f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14431d108a7bb8f84fce553258a8cc1c2bff6a9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.MapFold` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/antidiagonal--292141f7e859132319b398ab.md) | 38 | `declaration-track:292141f7e859132319b398ab27a3d748771115c9b7012a3d1f80e70dc59ca099` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/mem-antidiagonal--0e85c3701daad618b785b6f2.md) | 43 | `result-track:0e85c3701daad618b785b6f2c01276c1b5de8d8ba8239cffc91df24a12be88c5` |
| 3 | `theorem` | [card_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/card-antidiagonal--07b1030eef1d57b041ad07be.md) | 48 | `result-track:07b1030eef1d57b041ad07bea6609adbbbffb5c814f22ea21f5ede9fb75fba0c` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/antidiagonal-zero--748674529dbde85eaa88ec95.md) | 53 | `result-track:748674529dbde85eaa88ec95d8a24f92f7903b0ffef0a5da33a27458bea52477` |
| 5 | `theorem` | [nodup_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/nodup-antidiagonal--802f36deaa5b9497205c28a3.md) | 58 | `result-track:802f36deaa5b9497205c28a37ca11caf4f0c3058de6d36a8dbc433e9cd217773` |
| 6 | `theorem` | [antidiagonal_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/antidiagonal-succ--22fd6b1824d7afac035ee467.md) | 62 | `result-track:22fd6b1824d7afac035ee4679855a8624b70466392862c6381d2cf3ac22f5d14` |
| 7 | `theorem` | [antidiagonal_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/antidiagonal-succ--2ef658cec3fbca2e51503b85.md) | 66 | `result-track:2ef658cec3fbca2e51503b85f3115e05ab61419f00c4b589cbeeab1f25d6e030` |
| 8 | `theorem` | [antidiagonal_succ_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/antidiagonal-succ-succ--bec210e136670415f075f2b3.md) | 71 | `result-track:bec210e136670415f075f2b3d61e80d56ea9dc67f5fdd39b2507d8303e13f833` |
| 9 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant13c37d18c3de678d5bdaf70c83d485460578b980f11cec577f900127428a9443.lean/declarations/map-swap-antidiagonal--132b79c074c10e585df74d1e.md) | 77 | `result-track:132b79c074c10e585df74d1ef58272990e5db00d4f83f07ddd51be55d29ddacb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
