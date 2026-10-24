# norm_dslope_deriv_z_coth_z_le_one_of_abs_im_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 6053,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:887cbf55-4647-528c-e754-9763a782da57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ff52379-197e-3ff1-9d3a-0a1bd4974a74",
  "kind": "lemma",
  "lexical_name": "norm_dslope_deriv_z_coth_z_le_one_of_abs_im_eq",
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
  "slug": "norm-dslope-deriv-z-coth-z-le-one-of-abs-im-eq--260cc2a2b523b87f7acea739",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6076,
    "line": 6053,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:260cc2a2b523b87f7acea739e2d2dc2a01a640fafc00097b966b6279eaf0d09f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ff52379-197e-3ff1-9d3a-0a1bd4974a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6053–6076.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma norm_dslope_deriv_z_coth_z_le_one_of_abs_im_eq (w : ℂ)
    (hw : |w.im| = π / 2) :
    ‖dslope (fun v : ℂ ↦ deriv (fun z : ℂ ↦ z * coth z) v) 0 w‖ ≤ 1 := by
  have h_nz : w ≠ 0 := by
    rintro rfl; simp at hw; linarith [Real.pi_pos]
  have h_bound : ‖deriv (fun z ↦ z * coth z) w‖ ≤ ‖w‖ := by
    rcases abs_cases w.im with ⟨h_eq, _⟩ | ⟨h_eq, _⟩
    · have hw' : w.im = π / 2 := h_eq.symm.trans hw
      rw [show w = ↑(re w) + ↑(π / 2) * Complex.I from by apply Complex.ext <;> simp [hw']]
      exact deriv_z_coth_z_bound_boundary_half_pi (re w)
    · have hw' : w.im = -(π / 2) := by linarith [h_eq.symm.trans hw]
      rw [← norm_neg w, ← norm_neg (deriv (fun z ↦ z * coth z) w), ← deriv_z_coth_z_odd,
          show -w = ↑(-re w) + ↑(π / 2) * Complex.I from by apply Complex.ext <;> simp [hw']]
      exact deriv_z_coth_z_bound_boundary_half_pi (-re w)
  exact norm_dslope_deriv_z_coth_z_le_one w h_nz h_bound

@[blueprint
  "CH2-lemma-4-2b"
  (title := "CH2 Lemma 4.2(b)")
  (statement := /--
If $|\Im z| \leq \frac{\pi}{2}$, then $|(z \coth z)'| \leq |z|$. -/)
  (proof := /-- See previous. -/)
  (latexEnv := "sublemma")
  (discussion := 1234)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L6053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
