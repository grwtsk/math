# laplace_rescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad693f99-9193-ca35-35d6-740e5161a9a2",
  "kind": "theorem",
  "lexical_name": "laplace_rescale",
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
  "slug": "laplace-rescale--a30ab0b9e517ce5cc23d508f",
  "source": {
    "blob": "b3360930523e6eef0dc7059ab3874a22534b2e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 22,
    "path": "GRWTSK/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a30ab0b9e517ce5cc23d508f41c039b969d76c64afedb9e2c7994d274525e849",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad693f99-9193-ca35-35d6-740e5161a9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplace_rescale (r : ℝ → ℝ) {s : ℝ} (hs : 0 < s) :
    s * (∫ t in Ioi (0 : ℝ), Real.exp (-s*t) * r t) =
      ∫ u in Ioi (0 : ℝ), Real.exp (-u) * r (u/s) := by
  have h := integral_comp_mul_left_Ioi
    (fun t : ℝ => Real.exp (-s*t) * r t) 0 (inv_pos.mpr hs)
  simp only [mul_zero, inv_inv, smul_eq_mul] at h
  rw [← h]
  congr 1
  funext u
  congr 2
  · congr 1
    field_simp
  · rw [div_eq_mul_inv, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3360930523e6eef0dc7059ab3874a22534b2e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
