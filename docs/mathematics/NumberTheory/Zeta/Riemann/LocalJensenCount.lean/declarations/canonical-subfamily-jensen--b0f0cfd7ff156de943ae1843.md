# canonical_subfamily_jensen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c95c0e4-0c6d-60e2-7585-5b8583b2aa61",
  "kind": "theorem",
  "lexical_name": "canonical_subfamily_jensen",
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
  "slug": "canonical-subfamily-jensen--b0f0cfd7ff156de943ae1843",
  "source": {
    "blob": "1ce3a8ed8e9ca331ececc848c9f9b0e912015791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f0cfd7ff156de943ae1843dd27a3b24e377797c08e8c6b8598f1770095f3c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c95c0e4-0c6d-60e2-7585-5b8583b2aa61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_subfamily_jensen (c : ℂ) (M : ℝ) (hM : 1 ≤ M)
    (hf : AnalyticOnNhd ℂ riemannZeta (closedBall c (3 : ℝ)))
    (hc : riemannZeta c ≠ 0) (hbound : ∀ z ∈ sphere c (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (S : Finset ZeroPoint) (hS : ∀ z ∈ S, z.1 ∈ closedBall c (5 / 2 : ℝ)) :
    (∑ z ∈ S, (multiplicity z : ℝ)) ≤
      Real.log (M / ‖riemannZeta c‖) / Real.log (6 / 5 : ℝ) := by
  classical
  have hsmall : AnalyticOnNhd ℂ riemannZeta (closedBall c (5 / 2 : ℝ)) :=
    hf.mono (closedBall_subset_closedBall (by norm_num))
  have hid : (∑ p ∈ S.image (fun z : ZeroPoint => z.1),
      divisor riemannZeta (closedBall c (5 / 2 : ℝ)) p) =
      ∑ z ∈ S, (multiplicity z : ℤ) := by
    rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he)]
    exact Finset.sum_congr rfl (fun z hz => divisor_eq_multiplicity c (5 / 2) hsmall z (hS z hz))
  have hj := finite_divisor_sum_le_jensen riemannZeta c (5 / 2) 3 M
    (by norm_num) (by norm_num) hM hf hc hbound (S.image (fun z : ZeroPoint => z.1))
  rw [hid] at hj
  have hratio : (3 : ℝ) / (5 / 2) = 6 / 5 := by norm_num
  rw [hratio] at hj
  simpa only [Int.cast_sum, Int.cast_natCast] using hj

/-- The sharper two-center bound charges both signed bands without assuming conjugacy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce3a8ed8e9ca331ececc848c9f9b0e912015791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
