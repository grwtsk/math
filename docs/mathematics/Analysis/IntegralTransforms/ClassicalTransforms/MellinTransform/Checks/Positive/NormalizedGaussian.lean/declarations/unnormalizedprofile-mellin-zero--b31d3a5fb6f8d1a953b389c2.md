# unnormalizedProfile_mellin_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c74d31f5-74d2-0ca8-5eaa-611cece9227d",
  "kind": "lemma",
  "lexical_name": "unnormalizedProfile_mellin_zero",
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
  "slug": "unnormalizedprofile-mellin-zero--b31d3a5fb6f8d1a953b389c2",
  "source": {
    "blob": "e596e7196e9cafa8cadaa5f6c4131c1e2fa7de3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/NormalizedGaussian.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b31d3a5fb6f8d1a953b389c2b0684ef2ca554a0716eaea703c6cf36fe1b78944",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c74d31f5-74d2-0ca8-5eaa-611cece9227d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unnormalizedProfile_mellin_zero :
    mellin unnormalizedProfile 0 = ((Real.pi : ℂ) / (1/4 : ℂ)) ^ (1/2 : ℂ) := by
  have heq : mellin unnormalizedProfile 0 = mellin (logarithmicGaussianWith (1/4 : ℂ)) 0 := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    dsimp only
    rw [unnormalizedProfile_eq_quarter hx]
  rw [heq, logarithmicGaussianWith_mellin (by norm_num)]
  simp [gaussianMellinWith]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/NormalizedGaussian.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/Checks/Positive/NormalizedGaussian.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e596e7196e9cafa8cadaa5f6c4131c1e2fa7de3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
