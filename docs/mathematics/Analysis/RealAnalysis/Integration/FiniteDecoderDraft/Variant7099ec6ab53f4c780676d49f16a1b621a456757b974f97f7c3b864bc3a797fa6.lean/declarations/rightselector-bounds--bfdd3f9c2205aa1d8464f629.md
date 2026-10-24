# rightSelector_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2314f02-9b2a-0ed5-0a6c-46b1c4a2f357",
  "kind": "theorem",
  "lexical_name": "rightSelector_bounds",
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
  "slug": "rightselector-bounds--bfdd3f9c2205aa1d8464f629",
  "source": {
    "blob": "ca3bacecd485693a7d80cf5a9239ef1ea80c1b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfdd3f9c2205aa1d8464f62964386bc50f13f27795340e649e56a0c41c0cd9d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2314f02-9b2a-0ed5-0a6c-46b1c4a2f357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightSelector_bounds {h u : ℝ} (hh : 0 < h) (n : ℕ)
    (hu : u ∈ Icc 0 ((n : ℝ)*h)) :
    u ≤ rightSelector h n u ∧ rightSelector h n u ≤ u+h ∧
      0 ≤ rightSelector h n u ∧ rightSelector h n u ≤ (n : ℝ)*h := by
  by_cases hz : u = 0
  · subst u
    rw [rightSelector_zero hh.le]
    exact ⟨le_rfl, by simpa using hh.le, le_rfl, hu.2⟩
  · have hup : 0 < u := lt_of_le_of_ne hu.1 (Ne.symm hz)
    obtain ⟨j, hj, hc⟩ := exists_cell hh hup hu.2
    rw [rightSelector_on_cell hh hj hc]
    have hcast : ((j+1 : ℕ) : ℝ) ≤ (n : ℝ) := by exact_mod_cast hj
    have hupper := mul_le_mul_of_nonneg_right hcast hh.le
    simp only [cell, mem_Ioc] at hc
    have hstep : ((j+1 : ℕ) : ℝ)*h = (j : ℝ)*h+h := by push_cast; ring
    exact ⟨hc.2, by rw [hstep]; linarith [hc.1], hu.1.trans hc.2, hupper⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variant7099ec6ab53f4c780676d49f16a1b621a456757b974f97f7c3b864bc3a797fa6.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3bacecd485693a7d80cf5a9239ef1ea80c1b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
