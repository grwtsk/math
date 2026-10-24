# IsBigOWith.sum_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a072b1e-a4c5-e73a-07f7-f931a5f7e828",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23536da2-87df-640d-53c4-19561565531e",
  "kind": "theorem",
  "lexical_name": "IsBigOWith.sum_congr",
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
  "slug": "isbigowith-sum-congr--5e58a41ef90701559b609abd",
  "source": {
    "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 397,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e58a41ef90701559b609abdfb855367ce22d0859906cfb6ddd3343184fb90a5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23536da2-87df-640d-53c4-19561565531e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigOWith.sum_congr
    (hAB : ∀ i ∈ s, IsBigOWith (C i) l (A i) (B i)) :
    IsBigOWith (sSup (C '' s)) l (fun H ↦ ∑ i ∈ s, A i H) (fun H ↦ ∑ i ∈ s, ‖B i H‖) := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · simp [isBigOWith_zero]
  simp only [IsBigOWith_def] at *
  filter_upwards [(eventually_all_finset s).mpr hAB]
    with x hx
  calc
    ‖∑ i ∈ s, A i x‖ ≤ ∑ i ∈ s, ‖A i x‖ := norm_sum_le ..
    _ ≤ ∑ i ∈ s, C i * ‖B i x‖ := Finset.sum_le_sum (fun j hj ↦ hx j hj)
    _ ≤ ∑ i ∈ s, sSup (C '' s) * ‖B i x‖ := by
        refine Finset.sum_le_sum ?_
        intro j hj; gcongr
        rw [← s.sup'_eq_csSup_image hs, Finset.le_sup'_iff]; use j
    _ = sSup (C '' s) * ∑ i ∈ s, ‖B i x‖ := (Finset.mul_sum ..).symm
    _ = sSup (C '' s) * ‖∑ i ∈ s, ‖B i x‖‖ := by
      congr; rw [Real.norm_of_nonneg (Finset.sum_nonneg (fun _ _ ↦ norm_nonneg _))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b06462e1d675361ceb72bcd491b608942cd99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
