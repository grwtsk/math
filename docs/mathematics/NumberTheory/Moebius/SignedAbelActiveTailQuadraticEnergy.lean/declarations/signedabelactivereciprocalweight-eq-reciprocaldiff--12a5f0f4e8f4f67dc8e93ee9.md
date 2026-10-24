# signedAbelActiveReciprocalWeight_eq_reciprocalDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fbf9f25-e3c0-2aff-bee8-9bb294c7f987",
  "kind": "theorem",
  "lexical_name": "signedAbelActiveReciprocalWeight_eq_reciprocalDiff",
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
  "slug": "signedabelactivereciprocalweight-eq-reciprocaldiff--12a5f0f4e8f4f67dc8e93ee9",
  "source": {
    "blob": "1685755d379b867ea62556386356e03fbafcdfd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a5f0f4e8f4f67dc8e93ee912dbbd1ce4d65750aa2fcedddd20934d7b7cf8ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fbf9f25-e3c0-2aff-bee8-9bb294c7f987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedAbelActiveReciprocalWeight_eq_reciprocalDiff
    {j t h : ℕ}
    (hX : 2 ^ j ≤ t + 1 + h)
    (hY : t + 1 + h < 2 ^ (j + 1)) :
    signedAbelActiveReciprocalWeight j t h =
      (((t + 1 + h : ℕ) : ℝ))⁻¹ -
        ((((t + 1) + 1 + h : ℕ) : ℝ))⁻¹ := by
  simp [signedAbelActiveReciprocalWeight, hX, hY]

/-- The same global quadratic obstruction, now written only with the explicit
reciprocal active-tail weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1685755d379b867ea62556386356e03fbafcdfd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
