# abs_bounds_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c818e207-23fa-7a10-d5d5-a86dc85fa238",
  "kind": "lemma",
  "lexical_name": "abs_bounds_closed",
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
  "slug": "abs-bounds-closed--a457f6e82fde16cf903dc554",
  "source": {
    "blob": "5a2dfb3fad088726b01abcb82c2ac6476be54467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a457f6e82fde16cf903dc55431c9022dcbf5556bb44aef74c2aa501b6ccff543",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c818e207-23fa-7a10-d5d5-a86dc85fa238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_bounds_closed (h : Adm freq δ) {s t : ι} (hts : t ≠ s) {u : ℝ}
    (hut : |u - freq t| ≤ δ t / 2) :
    |freq s - u| ≤ 3 / 2 * |freq s - freq t| ∧ δ s / 2 ≤ |u - freq s| := by
  have hst : δ t ≤ |freq s - freq t| := by rw [abs_sub_comm]; exact h.le t s hts
  have hss : δ s ≤ |freq s - freq t| := h.le s t (Ne.symm hts)
  constructor
  · calc |freq s - u| = |(freq s - freq t) + (freq t - u)| := by ring_nf
      _ ≤ |freq s - freq t| + |freq t - u| := abs_add_le _ _
      _ = |freq s - freq t| + |u - freq t| := by rw [abs_sub_comm (freq t) u]
      _ ≤ |freq s - freq t| + δ t / 2 := by linarith
      _ ≤ 3 / 2 * |freq s - freq t| := by linarith
  · have key : |freq s - freq t| ≤ |freq s - u| + |u - freq t| := by
      calc |freq s - freq t| = |(freq s - u) + (u - freq t)| := by ring_nf
        _ ≤ |freq s - u| + |u - freq t| := abs_add_le _ _
    rw [abs_sub_comm u (freq s)]
    linarith

section MainSpacing
variable (h : Adm freq δ) (s : ι)

/-- The two-sided tail window around `freq s`, radius `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2dfb3fad088726b01abcb82c2ac6476be54467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
