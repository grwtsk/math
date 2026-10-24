# Verification target: GRWTSK.Analysis.GramResidualGuard.Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4257c3d93fdf299684c662993bc4df12b8d7fd9a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4257c3d93fdf299684c662993bc4df12b8d7fd9a`.

Source path: `GRWTSK/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/quadratic-difference-abs-le--c389d60f95c62101342d6449.md) | 26 | `result-track:c389d60f95c62101342d644995b2a6e38bf0c890ccf5a18122877d7e25807a94` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/positive-approximation-lower--b714435552373abf29ec8550.md) | 39 | `result-track:b714435552373abf29ec8550dc224953535c8cebd9677e3a923d4af6de4663f4` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/coercive-approximation-lower--466a8c9572c610869bcde9ea.md) | 47 | `result-track:466a8c9572c610869bcde9eae0013588ec049663c3f03554a6b24e5227b95ab7` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/positive-of-coercive-residual--4f16d98638199712ca4dc685.md) | 55 | `result-track:4f16d98638199712ca4dc685d94dbcbad821f3b462971fba58f4692c4047e1d1` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/positive-of-arbitrary-precision--9893d182e0f9fff1999c3444.md) | 63 | `result-track:9893d182e0f9fff1999c34440ee601b068ee4dffe712f8cf3615f9b82b944faf` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/gram-residual-lower--4446cd459db7153435202fa4.md) | 85 | `result-track:4446cd459db7153435202fa4f22b3a4a4464953164e851bda42ea0b8fb199b5c` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/positive-of-arbitrary-gram-precision--4fc2549fd1368a1567dc15ae.md) | 94 | `result-track:4fc2549fd1368a1567dc15aef01804923e68de38a61fc2fb40baa46305f76c53` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/positivedistance--458d42c20a66c9dfe0f0b3f2.md) | 104 | `declaration-track:458d42c20a66c9dfe0f0b3f212174c3010f051381430ab101d9b78a9f0a21c5b` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/negative-rayleigh-le-norm--57d0f2e3a99486dfe17b5020.md) | 107 | `result-track:57d0f2e3a99486dfe17b5020153c7211a59c22ef53ac0703593f7f0f9195eacc` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/negative-rayleigh-distance-lower--1398da89a2673cac58aead02.md) | 119 | `result-track:1398da89a2673cac58aead021a9b64d13b3246ea46d95cf682725dcf61afe4a0` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/positivedistance-eq-zero-iff--16eef989937c31e825bf5a6b.md) | 129 | `result-track:16eef989937c31e825bf5a6bfa74aa136973ab2557430633843622ac40695800` |
| 12 | `theorem` | [negative_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/negative-eigenvalue-distance-lower--3436e9a4ebe0e9ac70ea1047.md) | 145 | `result-track:3436e9a4ebe0e9ac70ea1047b3f2922b2d216fd5603738aeaf173223045119cc` |
| 13 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/matrixoperator--e14aaf547703bf6e3c653ddd.md) | 158 | `declaration-track:e14aaf547703bf6e3c653ddd54783452800d129693b89c0ef0b5ec6ab6bd6525` |
| 14 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/matrixoperator-positive-iff--fc5bcb98cc94060bd44c5b21.md) | 161 | `result-track:fc5bcb98cc94060bd44c5b21d40f0fc40e7e2a69a2635226b3bcdf3f5a598239` |
| 15 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--98b8b105d0f0349e0e22a09c.md) | 166 | `result-track:98b8b105d0f0349e0e22a09c4474f9d439d3c9c23a2e2eef93c187f021f2ad67` |
| 16 | `theorem` | [matrix_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/declarations/matrix-eigenvalue-distance-lower--f9658893999f3b4b22d93514.md) | 178 | `result-track:f9658893999f3b4b22d935143875a8470352aa42da28ee7424d9b7c171f1781a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
