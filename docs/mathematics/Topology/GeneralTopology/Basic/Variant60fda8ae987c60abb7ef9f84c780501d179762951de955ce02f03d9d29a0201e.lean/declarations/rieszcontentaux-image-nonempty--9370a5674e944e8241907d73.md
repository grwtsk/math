# rieszContentAux_image_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66ea08ca3ffd2a8a47c01fe30db1510d29884da9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc224336-fdfb-91c2-0b29-5b5a18ce386e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:850300ab-8784-5674-66e2-a9a3d6493e62",
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
  "slug": "rieszcontentaux-image-nonempty--9370a5674e944e8241907d73",
  "source": {
    "blob": "66ea08ca3ffd2a8a47c01fe30db1510d29884da9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9370a5674e944e8241907d732d21dd121a0ec6652ec39fbb89e0fc9720162c78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:850300ab-8784-5674-66e2-a9a3d6493e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant60fda8ae987c60abb7ef9f84c780501d179762951de955ce02f03d9d29a0201e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ea08ca3ffd2a8a47c01fe30db1510d29884da9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
