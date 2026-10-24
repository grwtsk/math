# contDiffAt_succ_iff_hasFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92e59aa4-9fea-322f-e1ff-74bc3a218357",
  "kind": "theorem",
  "lexical_name": "contDiffAt_succ_iff_hasFDerivAt",
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
  "slug": "contdiffat-succ-iff-hasfderivat--0f2754053d0abefc03e7154b",
  "source": {
    "blob": "40b673d2a4a18360984ddc9c8558d622a443ccf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1402,
    "line": 1384,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f2754053d0abefc03e7154b0c9a4ef45cb5b2bb4aedfeb253f9d8983218304e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92e59aa4-9fea-322f-e1ff-74bc3a218357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1384–1402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffAt_succ_iff_hasFDerivAt {n : ℕ} :
    ContDiffAt 𝕜 (n + 1 : ℕ) f x ↔
      ∃ f' : E → E →L[𝕜] F, (∃ u ∈ 𝓝 x, ∀ x ∈ u, HasFDerivAt f (f' x) x) ∧ ContDiffAt 𝕜 n f' x := by
  rw [← contDiffWithinAt_univ, contDiffWithinAt_succ_iff_hasFDerivWithinAt]
  simp only [nhdsWithin_univ, exists_prop, mem_univ, insert_eq_of_mem]
  constructor
  · rintro ⟨u, H, f', h_fderiv, h_cont_diff⟩
    rcases mem_nhds_iff.mp H with ⟨t, htu, ht, hxt⟩
    refine' ⟨f', ⟨t, _⟩, h_cont_diff.contDiffAt H⟩
    refine' ⟨mem_nhds_iff.mpr ⟨t, Subset.rfl, ht, hxt⟩, _⟩
    intro y hyt
    refine' (h_fderiv y (htu hyt)).hasFDerivAt _
    exact mem_nhds_iff.mpr ⟨t, htu, ht, hyt⟩
  · rintro ⟨f', ⟨u, H, h_fderiv⟩, h_cont_diff⟩
    refine' ⟨u, H, f', _, h_cont_diff.contDiffWithinAt⟩
    intro x hxu
    exact (h_fderiv x hxu).hasFDerivWithinAt
#align cont_diff_at_succ_iff_has_fderiv_at contDiffAt_succ_iff_hasFDerivAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean#L1384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b673d2a4a18360984ddc9c8558d622a443ccf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
