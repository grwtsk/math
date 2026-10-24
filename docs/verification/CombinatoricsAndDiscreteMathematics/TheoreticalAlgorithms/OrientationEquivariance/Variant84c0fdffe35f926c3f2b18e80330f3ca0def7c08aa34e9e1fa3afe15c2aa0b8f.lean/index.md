# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrientationEquivariance.Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b62fab0153a8fc785d38746a24c2b7069c0abba",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b62fab0153a8fc785d38746a24c2b7069c0abba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.PartialBitfield.Order` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocalOrientation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/declarations/localorientation--219f9f0d48aa5353c58fe711.md) | 20 | `declaration-track:219f9f0d48aa5353c58fe711504eac4fa59876d6b3387a7d163344bb54e3631c` |
| 2 | `def` | [orientBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/declarations/orientbit--499f56a782e296aa6aceeac9.md) | 25 | `declaration-track:499f56a782e296aa6aceeac9e304e57cffa384e94a94d35c43deafdfd10c7d4f` |
| 3 | `def` | [orientPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/declarations/orientpath--4c5ef2e417fcb11a8c92cb44.md) | 29 | `declaration-track:4c5ef2e417fcb11a8c92cb44bfa2e640c5e6d1499ad917f1c8aa1889f5950da7` |
| 4 | `theorem` | [zeroThenOne_preserves_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/declarations/zerothenone-preserves-bit--a9823d7e95fc2f98dd85c40f.md) | 34 | `result-track:a9823d7e95fc2f98dd85c40f3575e3037d9b2e227b0e5246d9fc22a1739f2e1b` |
| 5 | `theorem` | [oneThenZero_is_involutive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f.lean/declarations/onethenzero-is-involutive--638d163d843ccccb5d74b986.md) | 39 | `result-track:638d163d843ccccb5d74b9867734492038b2c42808bdf6fb4b46084dd1873d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
