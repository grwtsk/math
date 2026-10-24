# secondMoment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e737243-ac12-7822-f6ad-60a748960e48",
  "kind": "theorem",
  "lexical_name": "secondMoment_bound",
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
  "slug": "secondmoment-bound--03949700ad732b49d39e2949",
  "source": {
    "blob": "0fef3e25796cbf9ef8149a967060db7ab8db91b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03949700ad732b49d39e2949fc1edcc7b8e1d56e9c669c0c96116d7dce011030",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e737243-ac12-7822-f6ad-60a748960e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondMoment_bound {t : ℝ} (ht : 0 < t) :
    0 ≤ secondMomentIntegrand t ∧ secondMomentIntegrand t ≤ majorant t := by
  refine ⟨mul_nonneg (sq_nonneg _) (kernel_nonneg ht), ?_⟩
  unfold secondMomentIntegrand kernel majorant
  have h := mul_le_mul_of_nonneg_left (reciprocal_denominator_bound ht)
    (by positivity : 0 ≤ t ^ 2 * Real.exp (-t / 2))
  have he : t ^ 2 * (Real.exp (-t / 2) / (1 - Real.exp (-2 * t))) =
      (t ^ 2 * Real.exp (-t / 2)) * (1 / (1 - Real.exp (-2 * t))) := by ring
  rw [he]
  apply h.trans_eq
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant0bba1955069fabbd7a233fcb668153c3ab385b547485fa1f637669ed1bde3130.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fef3e25796cbf9ef8149a967060db7ab8db91b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
