# signedAbelDepthShiftResponse_eq_normalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b61fe3b-8483-bd06-0f17-cb94f52ed048",
  "kind": "theorem",
  "lexical_name": "signedAbelDepthShiftResponse_eq_normalized",
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
  "slug": "signedabeldepthshiftresponse-eq-normalized--248017d35482552b780d7840",
  "source": {
    "blob": "41e7d4e872da780caa4fbd208a04f6c2cca0ecbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:248017d35482552b780d784075e78f5b947e583b8611cb2aa652ed887acddd75",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b61fe3b-8483-bd06-0f17-cb94f52ed048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedAbelDepthShiftResponse_eq_normalized
    (j t a : ℕ) :
    signedAbelDepthShiftResponse j t a =
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        normalizedSignedAbelDepthShiftResponse j t a := by
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hY : YR ≠ 0 := by
    dsimp [YR]
    positivity
  unfold normalizedSignedAbelDepthShiftResponse
  change signedAbelDepthShiftResponse j t a =
    2 * YR⁻¹ * ((YR / 2) * signedAbelDepthShiftResponse j t a)
  field_simp [hY]

/-- The exact signed depth slice is a normalized Möbius correlation against a
one-bounded, scale/depth-dependent response family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e7d4e872da780caa4fbd208a04f6c2cca0ecbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
