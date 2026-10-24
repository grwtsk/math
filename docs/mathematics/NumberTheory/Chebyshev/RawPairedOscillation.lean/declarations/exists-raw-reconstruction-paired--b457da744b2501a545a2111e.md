# exists_raw_reconstruction_paired

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:194e4c16-08e8-c89d-f546-916622dde1e2",
  "kind": "theorem",
  "lexical_name": "exists_raw_reconstruction_paired",
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
  "slug": "exists-raw-reconstruction-paired--b457da744b2501a545a2111e",
  "source": {
    "blob": "744cc7362b252c481c9716dd105112d0754db501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b457da744b2501a545a2111e5f527f56888b06253281eb269ccfd6b51745a435",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:194e4c16-08e8-c89d-f546-916622dde1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_raw_reconstruction_paired (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => rawAverage M (radius n) (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ)) ∧
      (Tendsto (fun n => pairedOscillation M (radius n) (T n)) atTop (𝓝 0) →
        Tendsto (fun n => rawClassicalHead M (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ))) := by
  obtain ⟨T,hT,havg,herr⟩ := exists_raw_average_reconstruction M hM
  refine ⟨T,hT,havg,?_⟩
  intro hosc
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := radius_tendsto_zero.add hosc
  have he := (show Tendsto (fun n => radius n+pairedOscillation M (radius n) (T n)) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  filter_upwards [he] with n hn
  rw [dist_eq_norm,norm_sub_rev]
  apply (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M (radius n) (T n)) _).trans_lt
  have ho := norm_average_sub_point_le_paired M (radius n) (T n) (radius_pos n)
    (by have := radius_le_half n; linarith)
  exact (add_le_add (herr n).le ho).trans_lt hn
end GRWTSK.NumberTheory.Chebyshev.RawPairedOscillation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744cc7362b252c481c9716dd105112d0754db501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
