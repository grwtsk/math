# isAnchor_of_isLpNearest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c60e02a2-c249-5157-9592-3cd70d25e2fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b1a909-1a47-5c7c-f27e-9feb8be8869e",
  "kind": "theorem",
  "lexical_name": "isAnchor_of_isLpNearest",
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
  "slug": "isanchor-of-islpnearest--ad9778a5355f0115aee06b3d",
  "source": {
    "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad9778a5355f0115aee06b3df34579fcd1bc2bd0b8e45dcba5d7a7d4b2f2caf3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b1a909-1a47-5c7c-f27e-9feb8be8869e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAnchor_of_isLpNearest
    {n : Nat} {p : ℝ} (hp : 0 < p)
    {x : Fin n → ℝ} {b : StableBitfield n}
    (h : IsLpNearest p x b) :
    IsAnchor x b := by
  intro i
  have hglobal := h (flipAt b i)
  have hb :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ Real.rpow |x j - realize b j| p) (Finset.mem_univ i)
  have hf :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ Real.rpow |x j - realize (flipAt b i) j| p)
      (Finset.mem_univ i)
  have herase :
      (∑ j ∈ Finset.univ.erase i, Real.rpow |x j - realize b j| p) =
        ∑ j ∈ Finset.univ.erase i,
          Real.rpow |x j - realize (flipAt b i) j| p := by
    apply Finset.sum_congr rfl
    intro j hj
    have hji : j ≠ i := by
      simpa using (Finset.mem_erase.mp hj).1
    simp [flipAt, realize, hji]
  have hrpow :
      Real.rpow |x i - realize b i| p ≤
        Real.rpow |x i - realize (flipAt b i) i| p := by
    unfold lpPowerPointCost at hglobal
    rw [← hb, ← hf] at hglobal
    rw [herase] at hglobal
    linarith
  have habs :
      |x i - realize b i| ≤
        |x i - realize (flipAt b i) i| :=
    (Real.rpow_le_rpow_iff (abs_nonneg _) (abs_nonneg _) hp).mp hrpow
  have hsquared :=
    pow_le_pow_left₀ (abs_nonneg _) habs 2
  rw [sq_abs, sq_abs] at hsquared
  cases hbi : b i
  · simp [IsNearestBit, realize, flipAt, hbi] at hsquared ⊢
    nlinarith
  · simp [IsNearestBit, realize, flipAt, hbi] at hsquared ⊢
    nlinarith

/-- For every positive finite exponent, the exact argmin is the same complete
anchor set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
