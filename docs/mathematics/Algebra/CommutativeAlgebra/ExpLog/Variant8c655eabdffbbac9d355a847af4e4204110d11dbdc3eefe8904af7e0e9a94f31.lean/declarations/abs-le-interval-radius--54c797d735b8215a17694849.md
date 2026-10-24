# abs_le_interval_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2df77d14-3bc0-7208-b1a5-7f013e90bf88",
  "kind": "theorem",
  "lexical_name": "abs_le_interval_radius",
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
  "slug": "abs-le-interval-radius--54c797d735b8215a17694849",
  "source": {
    "blob": "a1e41e733f1a16cd97715254de4b056b1744911a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 192,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c797d735b8215a17694849809ef77c89ad0ad820d3ed2300b2e6b04671e7de",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2df77d14-3bc0-7208-b1a5-7f013e90bf88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_le_interval_radius {z : ℝ} {J : IntervalRat} (hz : z ∈ J) :
    |z| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := by
  simp only [IntervalRat.mem_def] at hz
  rw [abs_le]
  constructor
  · have h1 : -|(J.lo : ℝ)| ≤ J.lo := neg_abs_le _
    have h2 : -(max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|)) ≤ -|(J.lo : ℝ)| := by
      simp only [neg_le_neg_iff]; exact le_max_left _ _
    linarith
  · have h1 : (J.hi : ℝ) ≤ |(J.hi : ℝ)| := le_abs_self _
    have h2 : |(J.hi : ℝ)| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := le_max_right _ _
    linarith

/-- Helper: z ∈ J means z ∈ [J.lo, J.hi] as real numbers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ExpLog/Variant8c655eabdffbbac9d355a847af4e4204110d11dbdc3eefe8904af7e0e9a94f31.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1e41e733f1a16cd97715254de4b056b1744911a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
