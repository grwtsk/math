# unifTight_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57323b0b-e50b-57ca-c04d-44444f6c2125",
  "kind": "theorem",
  "lexical_name": "unifTight_fin",
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
  "slug": "uniftight-fin--6c5e941bf4a0dd988d7ee824",
  "source": {
    "blob": "63f5460d75b2a4e2baeac46be448669d0152e91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c5e941bf4a0dd988d7ee824be3db4f2d832edb665d244fdde9e7e7e63d72caa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57323b0b-e50b-57ca-c04d-44444f6c2125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unifTight_fin (hp_top : p ≠ ∞) {n : ℕ} {f : Fin n → α → β}
    (hf : ∀ i, MemLp (f i) p μ) : UnifTight f p μ := by
  revert f
  induction n with
  | zero => exact fun {f} hf ↦ unifTight_of_subsingleton hp_top hf
  | succ n h =>
    intro f hfLp ε hε
    by_cases hε_top : ε = ∞
    · exact ⟨∅, (by simp), fun _ => hε_top.symm ▸ le_top⟩
    let g : Fin n → α → β := fun k => f k.castSucc
    have hgLp : ∀ i, MemLp (g i) p μ := fun i => hfLp i.castSucc
    obtain ⟨S, hmS, hμS, hFε⟩ :=
      (h hgLp).exists_measurableSet_indicator  hε.ne'
    obtain ⟨s, hms, hμs, hfε⟩ :=
      (hfLp (Fin.last n)).exists_eLpNorm_indicator_compl_lt hp_top hε.ne'
    refine ⟨s ∪ S, (by finiteness), fun i => ?_⟩
    by_cases! hi : i.val < n
    · rw [show f i = g ⟨i.val, hi⟩ from rfl, compl_union, ← indicator_indicator]
      apply (eLpNorm_indicator_le _ hms.compl).trans
      exact hFε (Fin.castLT i hi)
    · obtain rfl : i = Fin.last n := Fin.ext (le_antisymm i.is_le hi)
      rw [compl_union, inter_comm, ← indicator_indicator]
      exact (eLpNorm_indicator_le _ hmS.compl).trans hfε.le

/-- A finite sequence of Lp functions is uniformly tight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f5460d75b2a4e2baeac46be448669d0152e91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
