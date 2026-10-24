# skill_launch_refuses_theorem_overclaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5411dd44-0620-2c21-cd45-c3e74078fedc",
  "kind": "theorem",
  "lexical_name": "skill_launch_refuses_theorem_overclaim",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "skill-launch-refuses-theorem-overclaim--2af0b23fe6fc2d1d13ac7801",
  "source": {
    "blob": "966b68c5c20a303335a73ed1f76cd63d6cea6e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant6dcaf7e8eb9344ceb93798eee2600b2b68eae9c86be54ba850c5a9c681b2a66c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af0b23fe6fc2d1d13ac7801bc1c920d07f3de4242b189539922887c222d5e97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant6dcaf7e8eb9344ceb93798eee2600b2b68eae9c86be54ba850c5a9c681b2a66c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5411dd44-0620-2c21-cd45-c3e74078fedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skill_launch_refuses_theorem_overclaim
    (request : SkillLaunchRequest)
    (h : request.theoremAuthorityRequested = true) :
    (planSkillLaunch request).planningStatus =
        SkillLaunchPlanningStatus.refused ∧
      (planSkillLaunch request).launchPermission =
        SkillLaunchPermission.refused ∧
      (planSkillLaunch request).authority =
        AuthorityState.refusedOverclaim ∧
      (planSkillLaunch request).refusal =
        some SkillLaunchRefusal.theoremOverclaim := by
  unfold planSkillLaunch
  have hOver : request.hasOverclaim = true := by
    unfold SkillLaunchRequest.hasOverclaim
    simp [h]
  simp [hOver, h]

end Think.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant6dcaf7e8eb9344ceb93798eee2600b2b68eae9c86be54ba850c5a9c681b2a66c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f4167656e74536b696c6c4c61756e63685468726f7567685468696e6b2e6c65616/Variant6dcaf7e8eb9344ceb93798eee2600b2b68eae9c86be54ba850c5a9c681b2a66c.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966b68c5c20a303335a73ed1f76cd63d6cea6e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
