# eq_iff_eqOn_range_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "244bf25e744e74214b7d484973ce373965864431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7130a74-50d3-206e-6c5c-720681365504",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db0507d8-e6ce-31f1-8336-b396a585c9dc",
  "kind": "theorem",
  "lexical_name": "eq_iff_eqOn_range_order",
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
  "slug": "eq-iff-eqon-range-order--b8e3037b42591b13bf14df24",
  "source": {
    "blob": "244bf25e744e74214b7d484973ce373965864431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8e3037b42591b13bf14df245b44c07506a6516e3f50ea8f05974fe1635c5889",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0507d8-e6ce-31f1-8336-b396a585c9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_iff_eqOn_range_order (u v : ℕ → R) (hu : E.IsSolution u) (hv : E.IsSolution v) :
    u = v ↔ Set.EqOn u v ↑(range E.order) := by
  replace hu : u ∈ E.solSpace := (is_sol_iff_mem_solSpace _ _).mp hu
  replace hv : v ∈ E.solSpace := (is_sol_iff_mem_solSpace _ _).mp hv
  rw [← Subtype.mk.injEq u hu v hv, ← E.basis.repr.injective.eq_iff]
  constructor
  · exact fun h n hn ↦ congr($h ⟨n, Finset.mem_range.mp hn⟩)
  · exact fun h ↦ Finsupp.ext fun n ↦ h <| Finset.mem_range.mpr n.prop

@[deprecated (since := "2026-04-16")] alias sol_eq_of_eq_init := eq_iff_eqOn_range_order

/-! `E.tupleSucc` maps `![s₀, s₁, ..., sₙ]` to `![s₁, ..., sₙ, ∑ (E.coeffs i) * sᵢ]`,
where `n := E.order`. This operation is quite useful for determining closed-form
solutions of `E`. -/

/-- `E.tupleSucc` maps `![s₀, s₁, ..., sₙ]` to `![s₁, ..., sₙ, ∑ (E.coeffs i) * sᵢ]`,
where `n := E.order`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `244bf25e744e74214b7d484973ce373965864431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
