# iInf_Ioi_eq_iInf_rat_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5157507c-d7b0-bc49-3b27-5e609c335201",
  "kind": "theorem",
  "lexical_name": "iInf_Ioi_eq_iInf_rat_gt",
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
  "slug": "iinf-ioi-eq-iinf-rat-gt--f87d675070157721add8e9e8",
  "source": {
    "blob": "e00fe6a8aad09e666f0eb8b6df38fbafbf09f0f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 979,
    "line": 954,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87d675070157721add8e9e8927f2c56baff025e4bfdf6c6649b473c766eb5c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5157507c-d7b0-bc49-3b27-5e609c335201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 954–979.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_Ioi_eq_iInf_rat_gt {f : ℝ → ℝ} (x : ℝ) (hf : BddBelow (f '' Ioi x))
    (hf_mono : Monotone f) : ⨅ r : Ioi x, f r = ⨅ q : { q' : ℚ // x < q' }, f q := by
  refine' le_antisymm _ _
  · have : Nonempty { r' : ℚ // x < ↑r' } := by
      obtain ⟨r, hrx⟩ := exists_rat_gt x
      exact ⟨⟨r, hrx⟩⟩
    refine' le_ciInf fun r => _
    obtain ⟨y, hxy, hyr⟩ := exists_rat_btwn r.prop
    refine' ciInf_set_le hf (hxy.trans _)
    exact_mod_cast hyr
  · refine' le_ciInf fun q => _
    have hq := q.prop
    rw [mem_Ioi] at hq
    obtain ⟨y, hxy, hyq⟩ := exists_rat_btwn hq
    refine' (ciInf_le _ _).trans _
    · refine' ⟨hf.some, fun z => _⟩
      rintro ⟨u, rfl⟩
      suffices hfu : f u ∈ f '' Ioi x
      exact hf.choose_spec hfu
      exact ⟨u, u.prop, rfl⟩
    · exact ⟨y, hxy⟩
    · refine' hf_mono (le_trans _ hyq.le)
      norm_cast
#align infi_Ioi_eq_infi_rat_gt Real.iInf_Ioi_eq_iInf_rat_gt

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean#L954).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00fe6a8aad09e666f0eb8b6df38fbafbf09f0f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
