# mark_binary_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf3815c-7c42-54be-965c-39c9ae770b0a",
  "kind": "theorem",
  "lexical_name": "mark_binary_ne_zero",
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
  "slug": "mark-binary-ne-zero--f087aae77f87e271b4f0cb3e",
  "source": {
    "blob": "da8830139b47e8e4acd049022dc71be2ee7b4b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 125,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f087aae77f87e271b4f0cb3e4a6b941f9ca0f4a95d41b1c593b73f873c915b0d",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf3815c-7c42-54be-965c-39c9ae770b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mark_binary_ne_zero (d : ℤ)
    (hd : (16 : ℤ) ∣ d ∨ ¬ (2 : ℤ) ∣ d) : binary (mark d) ≠ 0 := by
  rcases hd with hd | hd
  · rw [mark_binary_of_divisible d hd]
    intro h
    have := congrFun h 2
    norm_num at this
  · rw [mark_binary_of_odd d hd]
    intro h
    have := congrFun h 1
    norm_num at this

/-- Clearing first and reducing before primitive normalization loses the point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8830139b47e8e4acd049022dc71be2ee7b4b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
