# exists_goodHeightW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef0b06c9-8298-818f-b6bc-7ee9fe7f7da4",
  "kind": "theorem",
  "lexical_name": "exists_goodHeightW",
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
  "slug": "exists-goodheightw--5889e2fa6fb33e20835a3ff6",
  "source": {
    "blob": "65d1ae6f90d820e5c6bf8b933c4e0368abfeb4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5889e2fa6fb33e20835a3ff669100d771af05612240216e7fa95df97126d1c5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef0b06c9-8298-818f-b6bc-7ee9fe7f7da4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_goodHeightW (hs : WSeam t₀) {a : ℝ} (ha : t₀ ≤ a) : ∃ T ∈ Icc a (a + 1), GoodHeightW T := by
  have hsub : ({ρ | IsWZero ρ} ∩ {ρ | a < ρ.im ∧ ρ.im ≤ a + 1})
      ⊆ {ρ | IsWZero ρ ∧ t₀ ≤ |ρ.im|} ∩ {ρ | a < ρ.im ∧ ρ.im ≤ a + 1} := by
    rintro ρ ⟨hρ, h1, h2⟩
    exact ⟨⟨hρ, by rw [abs_of_pos (by linarith [hs.pos])]; linarith⟩, h1, h2⟩
  have hfin : ((fun ρ : ℂ => ρ.im) '' ({ρ | IsWZero ρ} ∩ {ρ | a < ρ.im ∧ ρ.im ≤ a + 1})).Finite :=
    ((hs.finite_window a (a + 1)).subset hsub).image _
  have hinf : (Ioo a (a + 1)).Infinite := Ioo_infinite (by linarith)
  obtain ⟨T, hT, hTnot⟩ := (hinf.diff hfin).nonempty
  refine ⟨T, ⟨hT.1.le, hT.2.le⟩, ?_⟩
  intro ρ hρ him
  apply hTnot
  exact ⟨ρ, ⟨hρ, by rw [him]; exact hT.1, by rw [him]; exact hT.2.le⟩, him⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant2116b98d2941baecf50639008da4bb9532626ecaa5ee6fd93be94aec8e25373f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d1ae6f90d820e5c6bf8b933c4e0368abfeb4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
