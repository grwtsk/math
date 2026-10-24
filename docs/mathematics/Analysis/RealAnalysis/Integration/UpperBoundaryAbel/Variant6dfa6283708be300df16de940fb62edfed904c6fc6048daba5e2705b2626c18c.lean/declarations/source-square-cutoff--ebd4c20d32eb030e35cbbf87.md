# source_square_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:029ed352-3aeb-0a7b-1f7b-f151231da317",
  "kind": "theorem",
  "lexical_name": "source_square_cutoff",
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
  "slug": "source-square-cutoff--ebd4c20d32eb030e35cbbf87",
  "source": {
    "blob": "a33321a56381efad3900beb9a84c5a1e7eeb5176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebd4c20d32eb030e35cbbf874c1bf6ffe9cabaae506136fa1f4bff5882701a1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:029ed352-3aeb-0a7b-1f7b-f151231da317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_square_cutoff (A : ℝ) :
    ⌊Real.exp A⌋₊ * ⌊Real.exp A⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ := by
  apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr
  have hN := Nat.floor_le (Real.exp_pos A).le
  have hN0 : 0 ≤ (⌊Real.exp A⌋₊ : ℝ) := Nat.cast_nonneg _
  have he : Real.exp (2 * A) = Real.exp A * Real.exp A := by
    rw [two_mul, Real.exp_add]
  push_cast
  rw [he]
  nlinarith [Real.exp_pos A]

/-- Integrability of the actual signed cumulative boundary times the actual derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33321a56381efad3900beb9a84c5a1e7eeb5176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
