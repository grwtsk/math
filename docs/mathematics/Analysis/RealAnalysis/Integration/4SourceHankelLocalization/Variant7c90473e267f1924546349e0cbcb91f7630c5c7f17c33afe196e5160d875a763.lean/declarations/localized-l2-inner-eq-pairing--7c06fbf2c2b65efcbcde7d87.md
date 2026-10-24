# localized_l2_inner_eq_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7571140908b4fa723225c10195a805dea55ff639",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:879e117b-4e80-0d0a-b5f9-cb963b6114d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6265854-f566-b1b3-6b6e-c9f8cabcaf3a",
  "kind": "theorem",
  "lexical_name": "localized_l2_inner_eq_pairing",
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
  "slug": "localized-l2-inner-eq-pairing--7c06fbf2c2b65efcbcde7d87",
  "source": {
    "blob": "7571140908b4fa723225c10195a805dea55ff639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c06fbf2c2b65efcbcde7d8762d5d82b869e73a5b22455d32f4ad93d4bba1ea8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6265854-f566-b1b3-6b6e-c9f8cabcaf3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localized_l2_inner_eq_pairing {A : ℝ} (hA : 0 < A) {B : ℕ} (hB : 0 < B)
    (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, B ≤ m) (ht : ∀ n ∈ t, B ≤ n) :
    ⟪localizedForwardL2 A hA B s c, localizedReflectedL2 A hA B t d⟫_ℝ =
      ∫ x, forwardProfile A s c x * reflectedProfile A t d x := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [(localizedForwardProfile_memLp hA B s c).coeFn_toLp,
    (localizedReflectedProfile_memLp hA B t d).coeFn_toLp] with x hf hg
  change inner ℝ ((localizedForwardProfile_memLp hA B s c).toLp _ x)
    ((localizedReflectedProfile_memLp hA B t d).toLp _ x) = _
  rw [hf, hg, Real.inner_apply]
  exact localized_product_eq hA hB s t c d hs ht x

/-- The localized square sectors remain signed and coupled in exact polarization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/4SourceHankelLocalization/Variant7c90473e267f1924546349e0cbcb91f7630c5c7f17c33afe196e5160d875a763.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7571140908b4fa723225c10195a805dea55ff639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
