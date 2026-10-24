# bumpInterior_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a4477a9-e261-d99c-8771-0e86bcceaea9",
  "kind": "theorem",
  "lexical_name": "bumpInterior_frontier",
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
  "slug": "bumpinterior-frontier--487a0445f9d43c1727a889c2",
  "source": {
    "blob": "336ad09073a6d2bde5cc669ba7b860dfc21fddbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantba2cc922f0eb49507c81f528d594cc89ede4e0c178d9418899541d3d7b8cfa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487a0445f9d43c1727a889c275ce90b3748a538fe5a4fcd63fd5f9d0bdf1a266",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantba2cc922f0eb49507c81f528d594cc89ede4e0c178d9418899541d3d7b8cfa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a4477a9-e261-d99c-8771-0e86bcceaea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpInterior_frontier {A : ℝ} (hA : 0 < A) (x : ℝ)
    (hx : x ∈ frontier (Icc (-A) A)) :
    bumpInterior A x = 0 ∧ firstInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2,
      (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]

/-- The first and second derivative traces both match zero at the interval frontier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantba2cc922f0eb49507c81f528d594cc89ede4e0c178d9418899541d3d7b8cfa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantba2cc922f0eb49507c81f528d594cc89ede4e0c178d9418899541d3d7b8cfa43.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `336ad09073a6d2bde5cc669ba7b860dfc21fddbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
