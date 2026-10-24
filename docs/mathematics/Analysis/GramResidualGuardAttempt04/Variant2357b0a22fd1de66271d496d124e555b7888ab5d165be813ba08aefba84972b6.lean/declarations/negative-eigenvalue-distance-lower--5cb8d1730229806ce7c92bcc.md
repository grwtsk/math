# negative_eigenvalue_distance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e9d8140-9205-057e-f90a-b7cbc185c737",
  "kind": "theorem",
  "lexical_name": "negative_eigenvalue_distance_lower",
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
  "slug": "negative-eigenvalue-distance-lower--5cb8d1730229806ce7c92bcc",
  "source": {
    "blob": "c3874e6c9e0c8cf8ca9d0e640eccf758fc349f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 145,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb8d1730229806ce7c92bcc1e1af10b159ecb401260e3de1e7a803a0256a530",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e9d8140-9205-057e-f90a-b7cbc185c737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_eigenvalue_distance_lower (H : E →L[𝕜] E) (u : E) (λ : ℝ)
    (hunit : ‖u‖=1) (heigen : H u=(λ:𝕜) • u) :
    max 0 (-λ) ≤ positiveDistance H := by
  have he : H.rayleighQuotient u=λ := by
    simp [ContinuousLinearMap.rayleighQuotient,ContinuousLinearMap.reApplyInnerSelf,
      heigen,inner_smul_left,inner_self_eq_norm_sq_to_K,hunit]
  simpa only [he] using negative_rayleigh_distance_lower H u

section Matrices
open scoped ComplexOrder
variable {n m : Type*} [Fintype n] [DecidableEq n] [Fintype m]

/-- Euclidean operator norm, rather than the unrelated default entrywise matrix norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3874e6c9e0c8cf8ca9d0e640eccf758fc349f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
