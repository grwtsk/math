# weighted_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5017d14-0314-6b28-bcc7-b966ddaef3a1",
  "kind": "theorem",
  "lexical_name": "weighted_evaluation",
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
  "slug": "weighted-evaluation--3bc78cb84fe1563a16bcd8b9",
  "source": {
    "blob": "df9bf344e0f64b24e435c0e492145cf50f2c663a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bc78cb84fe1563a16bcd8b93c4140217b44a57aacd3a6b209162e51e1e90723",
  "verification": {
    "reference": "docs/verification/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5017d14-0314-6b28-bcc7-b966ddaef3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_evaluation {I : Type*} [Fintype I] (w b : I → ℝ) (i : I)
    (hw : ∀ j, 0 ≤ w j) (hi : 0 < w i) (M : ℝ) (hM : 0 ≤ M)
    (hbound : ∑ j, w j * (b j) ^ 2 ≤ M ^ 2) :
    |b i| ≤ M / Real.sqrt (w i) := by
  have he : w i * b i ^ 2 ≤ ∑ j, w j * b j ^ 2 :=
    Finset.single_le_sum (fun j _ => mul_nonneg (hw j) (sq_nonneg _)) (Finset.mem_univ i)
  have hs := Real.sqrt_pos.mpr hi
  have hsq := Real.sq_sqrt hi.le
  have hp : (|b i| * Real.sqrt (w i)) ^ 2 = w i * b i ^ 2 := by
    rw [mul_pow, sq_abs, hsq]
    ring
  have hm : |b i| * Real.sqrt (w i) ≤ M := by
    nlinarith [mul_nonneg (abs_nonneg (b i)) hs.le]
  exact (le_div_iff₀ hs).mpr hm

end
end FormalResearch.PositiveAtlas.HodgeGaugeBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HodgeGaugeBounds/Variantf0fc7db4730fbad829fbda1f3479ca38595e99f9072f3d1934b6bd28f41c3d00.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df9bf344e0f64b24e435c0e492145cf50f2c663a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
