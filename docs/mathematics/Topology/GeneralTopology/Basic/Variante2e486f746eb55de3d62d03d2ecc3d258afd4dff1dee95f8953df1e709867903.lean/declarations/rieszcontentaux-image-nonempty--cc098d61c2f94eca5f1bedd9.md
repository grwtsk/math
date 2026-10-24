# rieszContentAux_image_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9e6be69-4964-f188-cd05-4d7f060692e6",
  "kind": "theorem",
  "lexical_name": "rieszContentAux_image_nonempty",
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
  "slug": "rieszcontentaux-image-nonempty--cc098d61c2f94eca5f1bedd9",
  "source": {
    "blob": "8e6b2056157bf93f9f2185db974c666d91fc8063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc098d61c2f94eca5f1bedd9b79348f8d767649680384f3335b1b00a54bb8381",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e6be69-4964-f188-cd05-4d7f060692e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rieszContentAux_image_nonempty (K : Compacts X) :
    (Λ '' { f : C_c(X, ℝ≥0) | ∀ x ∈ K, (1 : ℝ≥0) ≤ f x }).Nonempty := by
  rw [image_nonempty]
  obtain ⟨V, hVcp, hKsubintV⟩ := exists_compact_superset K.2
  have hIsCompact_closure_interior : IsCompact (closure (interior V)) := by
    apply IsCompact.of_isClosed_subset hVcp isClosed_closure
    nth_rw 2 [← closure_eq_iff_isClosed.mpr (IsCompact.isClosed hVcp)]
    exact closure_mono interior_subset
  obtain ⟨f, hsuppfsubV, hfeq1onK, hfinicc⟩ :=
    exists_tsupport_one_of_isOpen_isClosed isOpen_interior hIsCompact_closure_interior
      (IsCompact.isClosed K.2) hKsubintV
  have hfHasCompactSupport : HasCompactSupport f :=
    IsCompact.of_isClosed_subset hVcp (isClosed_tsupport f)
      (Set.Subset.trans hsuppfsubV interior_subset)
  use nnrealPart ⟨f, hfHasCompactSupport⟩
  intro x hx
  apply le_of_eq
  simp only [nnrealPart_apply, CompactlySupportedContinuousMap.coe_mk]
  rw [← Real.toNNReal_one, Real.toNNReal_eq_toNNReal_iff (zero_le_one' ℝ) (hfinicc x).1]
  exact hfeq1onK.symm hx

/-- Riesz content `λ` (associated with a positive linear functional `Λ`) is
monotone: if `K₁ ⊆ K₂` are compact subsets in `X`, then `λ(K₁) ≤ λ(K₂)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6b2056157bf93f9f2185db974c666d91fc8063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
