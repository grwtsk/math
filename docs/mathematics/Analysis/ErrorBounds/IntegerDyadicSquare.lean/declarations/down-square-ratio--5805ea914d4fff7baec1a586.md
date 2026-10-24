# down_square_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ae7aff3-7b10-9e6c-260c-b70ba564f5b1",
  "kind": "theorem",
  "lexical_name": "down_square_ratio",
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
  "slug": "down-square-ratio--5805ea914d4fff7baec1a586",
  "source": {
    "blob": "9b4f9536bd2baf7305cb5a92b383bcff55fa973a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Analysis/ErrorBounds/IntegerDyadicSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5805ea914d4fff7baec1a5862c56fb49a3d4a73f21f3a489d9cb8d757d5b734b",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/IntegerDyadicSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ae7aff3-7b10-9e6c-260c-b70ba564f5b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem down_square_ratio (bits : ℕ) (a : ℤ) :
    down bits ((a : ℚ)/(scale bits : ℚ)^2) =
      ((a / scale bits : ℤ) : ℚ)/(scale bits : ℚ) := by
  have hd : (scale bits : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (scale_pos bits))
  have he : ((a : ℚ)/(scale bits : ℚ)^2)*(scale bits : ℚ) =
      (a : ℚ)/(scale bits : ℚ) := by field_simp; ring
  unfold down
  simp only [← scale_cast bits]
  rw [he, floor_ratio a (scale_pos bits)]

/-- Round the COMPLETE error numerator upward on the SAME dyadic grid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/IntegerDyadicSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/IntegerDyadicSquare.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4f9536bd2baf7305cb5a92b383bcff55fa973a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
