# correlation_zero_of_shift_ge_width

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a84b017-93a5-b2cc-27a7-6f8acc4a60fe",
  "kind": "theorem",
  "lexical_name": "correlation_zero_of_shift_ge_width",
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
  "slug": "correlation-zero-of-shift-ge-width--2cd582187b52884345b8c50a",
  "source": {
    "blob": "f691b7e401eb6f4a825fc8e14ad7e17105ecb09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/Analysis/Convolution/CompactSupportContact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cd582187b52884345b8c50a23f91880217fe15f2979ca14370fcc93caacfe9f",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactSupportContact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a84b017-93a5-b2cc-27a7-6f8acc4a60fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_zero_of_shift_ge_width (a b t : ℝ) (p : ℝ → ℝ)
    (beyond : b - a ≤ t) :
    (∫ x : ℝ, closedProfile a b p x * closedProfile a b p (x - t)) = 0 := by
  apply integral_eq_zero_of_ae
  filter_upwards [(volume : Measure ℝ).ae_ne b] with x different
  change closedProfile a b p x * closedProfile a b p (x - t) = (0 : ℝ)
  unfold closedProfile
  by_cases right : x ∈ Icc a b
  · by_cases left : x - t ∈ Icc a b
    · exfalso
      apply different
      linarith [right.2, left.1]
    · rw [indicator_of_notMem left, mul_zero]
  · rw [indicator_of_notMem right, zero_mul]

/-- On a short overlap, both retained factors have the prescribed positive height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactSupportContact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactSupportContact.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f691b7e401eb6f4a825fc8e14ad7e17105ecb09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
