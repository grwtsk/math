# norm_completed_zero_even_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "248fa7a39462de76ad3c0d98605b4803b2ebb954",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65bae8b0-7e03-8572-3c77-c0a5a7260a16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b36b8e23-452f-8365-7a81-c88afc8c9f9a",
  "kind": "lemma",
  "lexical_name": "norm_completed_zero_even_le",
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
  "slug": "norm-completed-zero-even-le--0a679babade8cc81701961bd",
  "source": {
    "blob": "248fa7a39462de76ad3c0d98605b4803b2ebb954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a679babade8cc81701961bdaa4fea01bb087e248d55eb7849ceb30d8f98be84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b36b8e23-452f-8365-7a81-c88afc8c9f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_completed_zero_even_le (m : ℕ) (hm : 2 ≤ m) :
    ‖completedRiemannZeta₀ (2 * (m : ℂ))‖ ≤
      (zetaMajorant + 2) * Real.exp ((m : ℝ)^2) := by
  have heq : completedRiemannZeta₀ (2 * (m : ℂ)) =
      (completedRiemannZeta (2 * (m : ℂ)) + 1 / (2 * (m : ℂ))) +
        1 / (1 - 2 * (m : ℂ)) := by
    rw [completedRiemannZeta_eq]
    ring
  rw [heq]
  calc
    _ ≤ ‖completedRiemannZeta (2 * (m : ℂ)) + 1 / (2 * (m : ℂ))‖ +
        ‖1 / (1 - 2 * (m : ℂ))‖ := norm_add_le _ _
    _ ≤ (‖completedRiemannZeta (2 * (m : ℂ))‖ + ‖1 / (2 * (m : ℂ))‖) +
        ‖1 / (1 - 2 * (m : ℂ))‖ := add_le_add (norm_add_le _ _) le_rfl
    _ ≤ (zetaMajorant * Real.exp ((m : ℝ)^2) + 1) + 1 :=
      add_le_add (add_le_add (norm_completed_even_le m hm) (norm_pole_zero_le_one m (by omega)))
        (norm_pole_one_le_one m (by omega))
    _ ≤ (zetaMajorant + 2) * Real.exp ((m : ℝ)^2) := by
      have he : 1 ≤ Real.exp ((m : ℝ)^2) := Real.one_le_exp_iff.mpr (sq_nonneg _)
      nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant5395503dbb0e6db012bad034371fad23337b6ddc241bda9878cdc8299203afb2.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `248fa7a39462de76ad3c0d98605b4803b2ebb954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
