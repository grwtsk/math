# HasConstantSpeedOnWith.union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13123f24f97dc728b10d3716fcab6867c3f60604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d03bcd26-8ee0-8034-122f-28b5ce2d4710",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d62f409-337b-a66e-c9bb-e9d5f9b3c949",
  "kind": "theorem",
  "lexical_name": "HasConstantSpeedOnWith.union",
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
  "slug": "hasconstantspeedonwith-union--c5ff4599fe89c47b31627678",
  "source": {
    "blob": "13123f24f97dc728b10d3716fcab6867c3f60604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 102,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ff4599fe89c47b31627678adb63c45c0644ffc1e9a1355c6f1afb74687d8c5",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d62f409-337b-a66e-c9bb-e9d5f9b3c949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasConstantSpeedOnWith.union {t : Set ℝ} (hfs : HasConstantSpeedOnWith f s l)
    (hft : HasConstantSpeedOnWith f t l) {x : ℝ} (hs : IsGreatest s x) (ht : IsLeast t x) :
    HasConstantSpeedOnWith f (s ∪ t) l := by
  rw [hasConstantSpeedOnWith_iff_ordered] at hfs hft ⊢
  rintro z (zs | zt) y (ys | yt) zy
  · have : (s ∪ t) ∩ Icc z y = s ∩ Icc z y := by
      ext w; constructor
      · rintro ⟨ws | wt, zw, wy⟩
        · exact ⟨ws, zw, wy⟩
        · exact ⟨(le_antisymm (wy.trans (hs.2 ys)) (ht.2 wt)).symm ▸ hs.1, zw, wy⟩
      · rintro ⟨ws, zwy⟩; exact ⟨Or.inl ws, zwy⟩
    rw [this, hfs zs ys zy]
  · have : (s ∪ t) ∩ Icc z y = s ∩ Icc z x ∪ t ∩ Icc x y := by
      ext w; constructor
      · rintro ⟨ws | wt, zw, wy⟩
        exacts [Or.inl ⟨ws, zw, hs.2 ws⟩, Or.inr ⟨wt, ht.2 wt, wy⟩]
      · rintro (⟨ws, zw, wx⟩ | ⟨wt, xw, wy⟩)
        exacts [⟨Or.inl ws, zw, wx.trans (ht.2 yt)⟩, ⟨Or.inr wt, (hs.2 zs).trans xw, wy⟩]
    rw [this, eVariationOn.union (f := f) (x := x), hfs zs hs.1 (hs.2 zs), hft ht.1 yt (ht.2 yt)]
    · have q := ENNReal.ofReal_add (mul_nonneg l.prop (sub_nonneg.mpr (hs.2 zs)))
        (mul_nonneg l.prop (sub_nonneg.mpr (ht.2 yt)))
      simp only [NNReal.val_eq_coe] at q
      rw [← q]
      ring_nf
    exacts [⟨⟨hs.1, hs.2 zs, le_rfl⟩, fun w ⟨_, _, wx⟩ => wx⟩,
      ⟨⟨ht.1, le_rfl, ht.2 yt⟩, fun w ⟨_, xw, _⟩ => xw⟩]
  · cases le_antisymm zy ((hs.2 ys).trans (ht.2 zt))
    simp only [Icc_self, sub_self, mul_zero, ENNReal.ofReal_zero]
    exact eVariationOn.subsingleton _ fun _ ⟨_, uz⟩ _ ⟨_, vz⟩ => uz.trans vz.symm
  · have : (s ∪ t) ∩ Icc z y = t ∩ Icc z y := by
      ext w; constructor
      · rintro ⟨ws | wt, zw, wy⟩
        · exact ⟨le_antisymm ((ht.2 zt).trans zw) (hs.2 ws) ▸ ht.1, zw, wy⟩
        · exact ⟨wt, zw, wy⟩
      · rintro ⟨wt, zwy⟩; exact ⟨Or.inr wt, zwy⟩
    rw [this, hft zt yt zy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13123f24f97dc728b10d3716fcab6867c3f60604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
