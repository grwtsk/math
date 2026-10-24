# realizedFrequency_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94932af7-57ba-d19b-56d7-bd879f0e7345",
  "kind": "theorem",
  "lexical_name": "realizedFrequency_convergence",
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
  "slug": "realizedfrequency-convergence--181104f43d045dd53bb74183",
  "source": {
    "blob": "8f6a74dd8c263025232fa84edb01076723628332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 269,
    "path": "GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:181104f43d045dd53bb741831cf7821d9893f7f65040c499acd6e63bd6bb4c37",
  "verification": {
    "reference": "docs/verification/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94932af7-57ba-d19b-56d7-bd879f0e7345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realizedFrequency_convergence (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    Tendsto (fun n ↦ (numerator a n : ℝ) / (denominator a n : ℝ))
      atTop (𝓝 (realizedFrequency a ha)) := by
  have h := GenContFract.of_convergence (realizedFrequency a ha)
  have he : (GenContFract.of (realizedFrequency a ha)).convs =
      fun n ↦ (numerator a n : ℝ) / (denominator a n : ℝ) :=
    funext (frequency_convergent (realizedFrequency_realization a ha))
  rw [he] at h
  exact h

/-- Arithmetic exponent read from the native real continued-fraction denominator continuants.
The floor is exact on every positive-stream realization; this is not a raw driver exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6a74dd8c263025232fa84edb01076723628332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
