# mem_RectangleBorder_lower_cases

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
      "line": 1223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1744171-c76e-21c8-6a61-2d654db48544",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:684dabaa-97f6-e183-a269-0ff3b426a029",
  "kind": "lemma",
  "lexical_name": "mem_RectangleBorder_lower_cases",
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
  "slug": "mem-rectangleborder-lower-cases--0e30696b9110bcd53cac01c1",
  "source": {
    "blob": "464787c2b9aac3a22b4d04cdbd00317bf569c992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1254,
    "line": 1223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e30696b9110bcd53cac01c1c69b3c75cdd27dcce82b0f59ed6bbf1e3374c4d5",
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

Occurrence: `result:684dabaa-97f6-e183-a269-0ff3b426a029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1223–1254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_RectangleBorder_lower_cases (l : LadderParams) (n : ℕ) {z : ℂ}
    (hz : z ∈ RectangleBorder ((l.σ n : ℂ) - (l.T : ℂ) * Complex.I) (1 - (l.δ : ℂ) * Complex.I)) :
    (starRingEnd ℂ z) ∈ l.admissible_contour ∨ z ∈ l.L ∨ z ∈ l.Rboundary := by
  have h_sigma_le : l.σ n ≤ 1 := l.hσ n
  have h_negT_le_negDelta : -l.T ≤ -l.δ := by linarith [l.hδ.1, l.hδ.2, l.hT]
  simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
    Complex.sub_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, Complex.I_im,
    mul_zero, add_zero, sub_zero, mul_one, zero_sub,
    Complex.sub_im, Complex.ofReal_im, Complex.mul_im, Complex.one_re, Complex.one_im,
    Set.uIcc_of_le h_sigma_le, Set.uIcc_of_le h_negT_le_negDelta] at hz
  rcases hz with (((⟨hz_re, hz_im⟩ | ⟨hz_re, hz_im⟩) | ⟨hz_re, hz_im⟩) | ⟨hz_re, hz_im⟩)
  · right; right; right
    exact ⟨hz_re.2, by simpa [hz_im] using l.hT.le⟩
  · have abs_zim_le : |z.im| ≤ l.T := by
      rw [abs_of_neg (by linarith [l.hδ.1, hz_im.2])]
      exact by linarith [hz_im.1]
    cases n with
    | zero =>
      right; right; left
      exact ⟨by rw [hz_re, l.h0], abs_zim_le⟩
    | succ n_pred =>
      right; left
      use n_pred + 1
      exact ⟨by omega, hz_re, abs_zim_le⟩
  · left; left
    exact ⟨hz_re.2, by simp [hz_im]⟩
  · right; right; left
    have abs_zim_le : |z.im| ≤ l.T := by
      rw [abs_of_neg (by linarith [l.hδ.1, hz_im.2])]
      exact by linarith [hz_im.1]
    exact ⟨hz_re, abs_zim_le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant4a3f8403aa487c7c8efec7e0cf7232dc65ddc7484e741a65dbb7de609b0d9fb8.lean#L1223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464787c2b9aac3a22b4d04cdbd00317bf569c992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
