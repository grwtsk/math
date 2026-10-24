# negative_eigenvalue_distance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fbd3573-2346-b9a2-4b0c-b0d43aa88699",
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
  "slug": "negative-eigenvalue-distance-lower--1c69434eae46da486c5c3c21",
  "source": {
    "blob": "c0be3f8be5463a7c0b7f99e25a9f5acdd8125ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c69434eae46da486c5c3c2194e0a2316191c9fd2df77677a236d1fa45618241",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fbd3573-2346-b9a2-4b0c-b0d43aa88699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_eigenvalue_distance_lower (H : E →L[𝕜] E) (u : E) (eigenvalue : ℝ)
    (hunit : ‖u‖=1) (heigen : H u=(eigenvalue:𝕜) • u) :
    max 0 (-eigenvalue) ≤ positiveDistance H := by
  have he : H.rayleighQuotient u=eigenvalue := by
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

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0be3f8be5463a7c0b7f99e25a9f5acdd8125ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
