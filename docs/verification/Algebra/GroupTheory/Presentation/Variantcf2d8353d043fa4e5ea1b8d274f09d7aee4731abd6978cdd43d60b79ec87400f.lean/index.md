# Verification target: GRWTSK.Algebra.GroupTheory.Presentation.Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c466bd63950d6c287caee57204e1bb324e8cea6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c466bd63950d6c287caee57204e1bb324e8cea6`.

Source path: `GRWTSK/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean.json)

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
| 1 | `structure` | [Group.Presentation](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/group-presentation--0853f2358909cb6f3495ac5a.md) | 50 | `declaration-track:0853f2358909cb6f3495ac5a7d934909824fd211a432d42f60727c96b97a88ce` |
| 2 | `def` | [ofFreeGroupHom](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/offreegrouphom--b3ca837bacd6f927d6b8a2a7.md) | 63 | `declaration-track:b3ca837bacd6f927d6b8a2a76ce2b8bb8975ea7ebeb46a5a7abec61ea3e9ee94` |
| 3 | `lemma` | [ofFreeGroupHom_toGenerators](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/offreegrouphom-togenerators--4c30ec5c1ed0ff2460ad1079.md) | 70 | `result-track:4c30ec5c1ed0ff2460ad1079ce0edd53c6a70c71f50c488fda3e0a92273bf2c8` |
| 4 | `lemma` | [ker_lift](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/ker-lift--c7a42a3d75d242497aaa2ee7.md) | 75 | `result-track:c7a42a3d75d242497aaa2ee796a10183d4e5ae3d69b6e3679a5fbd0237cbd4f1` |
| 5 | `theorem` | [lift_rel_eq_one](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/lift-rel-eq-one--15a3efd0a72d5a4fbdb24ad3.md) | 79 | `result-track:15a3efd0a72d5a4fbdb24ad3d6adbb358dd2f22b8480eb23cd5ea9b371165984` |
| 6 | `lemma` | [isFinitelyNormallyGenerated_ker_lift](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/isfinitelynormallygenerated-ker-lift--da88ffb2a27e9e352b1f87c3.md) | 83 | `result-track:da88ffb2a27e9e352b1f87c37ef74656bef8774a8aedc8821a7e9b105d6b8ef9` |
| 7 | `def` | [presentedGroupEquiv](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/presentedgroupequiv--637c91377c215111171972c5.md) | 87 | `declaration-track:637c91377c215111171972c5ef2d6c3ff48cb5e7498ba67fb43693e18c92bc57` |
| 8 | `theorem` | [isFinitelyPresented](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/isfinitelypresented--973dc17a3b62045434248e87.md) | 92 | `result-track:973dc17a3b62045434248e87e62608f194d59f8b2e7588e5603c4002113a0c8f` |
| 9 | `theorem` | [isFinitelyPresented_iff_exists_finite_presentation](../../../../../mathematics/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/declarations/isfinitelypresented-iff-exists-finite-presentation--91438f21f77b681ebdc22530.md) | 97 | `result-track:91438f21f77b681ebdc225309ae4c21a93fd149ffd67b0e909a96c3ddf137206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
