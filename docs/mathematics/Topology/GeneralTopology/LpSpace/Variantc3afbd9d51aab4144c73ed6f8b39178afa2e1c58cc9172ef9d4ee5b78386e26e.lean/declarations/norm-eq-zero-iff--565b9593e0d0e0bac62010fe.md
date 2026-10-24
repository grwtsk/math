# norm_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b656b252641bdb234d6ae406086ca565fde48d6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5e21709-3feb-6464-cbb3-2f2921562908",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2477d291-8116-881c-78ca-d364a78b824a",
  "kind": "theorem",
  "lexical_name": "norm_eq_zero_iff",
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
  "slug": "norm-eq-zero-iff--565b9593e0d0e0bac62010fe",
  "source": {
    "blob": "b656b252641bdb234d6ae406086ca565fde48d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 457,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:565b9593e0d0e0bac62010fea67675de79176aa10d74257a7ad8b43155ce4b52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2477d291-8116-881c-78ca-d364a78b824a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_zero_iff {f : lp E p} : ‖f‖ = 0 ↔ f = 0 := by
  refine' ⟨fun h => _, by rintro rfl; exact norm_zero⟩
  rcases p.trichotomy with (rfl | rfl | hp)
  · ext i
    have : { i : α | ¬f i = 0 } = ∅ := by simpa [lp.norm_eq_card_dsupport f] using h
    have : (¬f i = 0) = False := congr_fun this i
    tauto
  · cases' isEmpty_or_nonempty α with _i _i
    · simp
    have H : IsLUB (Set.range fun i => ‖f i‖) 0 := by simpa [h] using lp.isLUB_norm f
    ext i
    have : ‖f i‖ = 0 := le_antisymm (H.1 ⟨i, rfl⟩) (norm_nonneg _)
    simpa using this
  · have hf : HasSum (fun i : α => ‖f i‖ ^ p.toReal) 0 := by
      have := lp.hasSum_norm hp f
      rwa [h, Real.zero_rpow hp.ne'] at this
    have : ∀ i, 0 ≤ ‖f i‖ ^ p.toReal := fun i => Real.rpow_nonneg_of_nonneg (norm_nonneg _) _
    rw [hasSum_zero_iff_of_nonneg this] at hf
    ext i
    have : f i = 0 ∧ p.toReal ≠ 0 := by
      simpa [Real.rpow_eq_zero_iff_of_nonneg (norm_nonneg (f i))] using congr_fun hf i
    exact this.1
#align lp.norm_eq_zero_iff lp.norm_eq_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantc3afbd9d51aab4144c73ed6f8b39178afa2e1c58cc9172ef9d4ee5b78386e26e.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b656b252641bdb234d6ae406086ca565fde48d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
