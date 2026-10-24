# correctedApproximant_diagonal_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94fdffd6-cbd9-a172-ec8c-1669a5ad138d",
  "kind": "theorem",
  "lexical_name": "correctedApproximant_diagonal_nonnegative",
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
  "slug": "correctedapproximant-diagonal-nonnegative--c17d4e40a8478fe48a23b710",
  "source": {
    "blob": "1c9230d38722de6e14d840f4f9b29a058dfed570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c17d4e40a8478fe48a23b7105280d31c025cfccc356584c378c970f0e5c3b00f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94fdffd6-cbd9-a172-ec8c-1669a5ad138d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedApproximant_diagonal_nonnegative
    {T : Type*} {W : T → T → ℝ}
    (approximation : ApproximatePositiveApproximation T W)
    (n : ℕ) (f : T) :
    0 ≤ approximation.correctedApproximant n f f := by
  unfold correctedApproximant
  have hbound := approximation.diagonal_lower_bound n f
  have hdefect := approximation.lowerDefect_nonnegative n f
  linarith

/-- The correction does not change the pointwise limit because both lower-defect
terms vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c9230d38722de6e14d840f4f9b29a058dfed570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
