# intervalIntegrable_boundary_path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9fd0baa-1e03-4f43-a043-ec038eff5555",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_boundary_path",
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
  "slug": "intervalintegrable-boundary-path--f7d0631ecfabd296d813f602",
  "source": {
    "blob": "2974858924a3aa4207314292faafc7cb4a9962c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d0631ecfabd296d813f602d1f7da889c3e29e48feb7e5b996f9c97cb0e7533",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9fd0baa-1e03-4f43-a043-ec038eff5555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_boundary_path (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (e : ℝ → ℂ) (he : Continuous e) (a b : ℝ) (hab : a ≤ b)
    (hmap : ∀ t ∈ Icc a b, e t ∈ boundary N) :
    IntervalIntegrable (fun t => integrand x h (e t)) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  intro t ht
  exact ((analyticAt_integrand_on_boundary x h hh ha N (e t) (hmap t ht)).continuousAt.comp
    he.continuousAt).continuousWithinAt

/-- Both top and bottom have their complete finite integrals, including corners. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2974858924a3aa4207314292faafc7cb4a9962c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
