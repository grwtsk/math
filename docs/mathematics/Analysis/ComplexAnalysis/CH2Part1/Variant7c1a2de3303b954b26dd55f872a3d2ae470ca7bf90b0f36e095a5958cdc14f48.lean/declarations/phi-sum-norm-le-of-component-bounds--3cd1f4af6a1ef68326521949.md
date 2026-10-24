# phi_sum_norm_le_of_component_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2887,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca86918f-9965-1039-3f91-96bc8be29b3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25460bc6-3d7f-9868-77cc-965157881ac9",
  "kind": "lemma",
  "lexical_name": "phi_sum_norm_le_of_component_bounds",
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
  "slug": "phi-sum-norm-le-of-component-bounds--3cd1f4af6a1ef68326521949",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2905,
    "line": 2887,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd1f4af6a1ef68326521949960ae24bbbc0108d08afde469bb0fd5ecc2fccf0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25460bc6-3d7f-9868-77cc-965157881ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2887–2905.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma phi_sum_norm_le_of_component_bounds {ν ε : ℝ} {z : ℂ} (hz_re : z.re ∈ Set.Icc (-1 : ℝ) 1)
    {C₁ C₂ : ℝ} (hC₁ : ‖Phi_circ ν ε z‖ ≤ C₁) (hC₂ : ‖Phi_star ν ε z‖ ≤ C₂ * (‖z‖ + 1))
    (y : ℝ) (hy : y = |z.im|) (hy_ge : y ≥ 1) :
    ‖Phi_circ ν ε z‖ + ‖Phi_star ν ε z‖ ≤ (max 0 C₁ + 2 * max 0 C₂) * (y + 1) := by
  have h_norm : ‖z‖ ≤ y + 1 := by rw [hy]; exact Complex.norm_le_abs_im_add_one hz_re
  set C₁' := max 0 C₁
  set C₂' := max 0 C₂
  have hC₁' : 0 ≤ C₁' := le_max_left 0 C₁
  have hC₂' : 0 ≤ C₂' := le_max_left 0 C₂
  have h1 : ‖Phi_circ ν ε z‖ ≤ C₁' := hC₁.trans (le_max_right 0 C₁)
  have h2 : ‖Phi_star ν ε z‖ ≤ C₂' * (‖z‖ + 1) := hC₂.trans (mul_le_mul_of_nonneg_right (le_max_right 0 C₂) (by positivity))
  calc ‖Phi_circ ν ε z‖ + ‖Phi_star ν ε z‖
    _ ≤ C₁' + C₂' * (y + 2) := by
        have h_z_bound : ‖z‖ + 1 ≤ y + 2 := by linarith [h_norm]
        nlinarith [h1, h2, h_z_bound, hC₂']
    _ ≤ (C₁' + 2 * C₂') * (y + 1) := by
        have h_y_bound : y + 2 ≤ 2 * (y + 1) := by linarith [hy_ge]
        nlinarith [h_y_bound, C₁', C₂', hC₁', hC₂']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L2887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
