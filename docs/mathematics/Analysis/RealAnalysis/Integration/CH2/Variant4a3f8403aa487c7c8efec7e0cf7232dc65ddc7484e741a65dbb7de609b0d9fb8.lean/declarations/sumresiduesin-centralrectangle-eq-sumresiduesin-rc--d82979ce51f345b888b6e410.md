# sumResiduesIn_centralRectangle_eq_sumResiduesIn_RC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbce944b-cc2d-98aa-40c2-a6e418368aa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:552aa97c-79ec-9949-02db-9d3ac43a6e52",
  "kind": "lemma",
  "lexical_name": "sumResiduesIn_centralRectangle_eq_sumResiduesIn_RC",
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
  "slug": "sumresiduesin-centralrectangle-eq-sumresiduesin-rc--d82979ce51f345b888b6e410",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2534,
    "line": 2507,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d82979ce51f345b888b6e410139332e8cfa3aaca5a79e356b593d8c0660c0f53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552aa97c-79ec-9949-02db-9d3ac43a6e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2507–2534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumResiduesIn_centralRectangle_eq_sumResiduesIn_RC (l : LadderParams) (n : ℕ) (G_circ : ℂ → ℂ) (x : ℝ)
    (h_rect_mero : MeromorphicOn (fun s ↦ G_circ s * (x : ℂ) ^ s) (Rectangle ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I)))
    (h_no_poles_boundary : Disjoint (RectangleBorder ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I)) {z | meromorphicOrderAt (fun s ↦ G_circ s * (x : ℂ) ^ s) z < 0}) :
    sumResiduesIn (fun s ↦ G_circ s * (x : ℂ) ^ s) (Rectangle ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I) ∩ {z | meromorphicOrderAt (fun s ↦ G_circ s * (x : ℂ) ^ s) z < 0}) =
      sumResiduesIn (fun s ↦ G_circ s * (x : ℂ) ^ s) (l.RC ∩ {z | l.σ n < z.re}) := by
  let F := fun s ↦ G_circ s * (x : ℂ) ^ s
  let Rn := Rectangle ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I)
  let P := {z | meromorphicOrderAt F z < 0}
  let S2 := l.RC ∩ {z | l.σ n < z.re}
  have hnegδ_le_δ : -l.δ ≤ l.δ := by
    simpa only [neg_le_self_iff] using l.hδ.1.le
  have hRn_mero : MeromorphicOn F Rn := by
    simpa [F, Rn] using h_rect_mero
  have h_set_eq : Rn ∩ P = S2 ∩ P := by
    simpa [F, Rn, P, S2] using
      (centralRectangle_inter_poles_eq (l := l) (n := n) (P := P) h_no_poles_boundary)
  have hS2_subset : S2 ⊆ Rn := by
    intro s hs_S2
    have hs_S2' : s ∈ l.RC ∩ {z | l.σ n < z.re} := by
      simpa [S2] using hs_S2
    have hs_im_bounds := abs_le.mp hs_S2'.1.2
    change s ∈ Rectangle ((l.σ n : ℂ) - (l.δ : ℂ) * Complex.I) (1 + (l.δ : ℂ) * Complex.I)
    rw [mem_Rect (by simpa using l.hσ n) (by simpa using hnegδ_le_δ)]
    exact ⟨by simpa using le_of_lt hs_S2'.2, by simpa using hs_S2'.1.1,
      by simpa using hs_im_bounds.1, by simpa using hs_im_bounds.2⟩
  exact sumResiduesIn_eq_of_inter_poles_eq_and_subset hRn_mero h_set_eq hS2_subset

-- Helper for integrating on a vertical segment in L
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L2507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
