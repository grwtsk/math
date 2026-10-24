# antidiagonal_filter_fst_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d568a66-e1c7-9ad3-b583-1859a0c9cc73",
  "kind": "theorem",
  "lexical_name": "antidiagonal_filter_fst_eq",
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
  "slug": "antidiagonal-filter-fst-eq--82aed9b8e8b0bda92e704765",
  "source": {
    "blob": "fc0fdb1b5fc34b7a2f62518b8609ba247b9dde06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82aed9b8e8b0bda92e704765162217c0fff3b9a256794f18f6aff883c58c74b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d568a66-e1c7-9ad3-b583-1859a0c9cc73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonal_filter_fst_eq (f g : α →₀ ℕ)
    [D : ∀ p : (α →₀ ℕ) × (α →₀ ℕ), Decidable (p.1 = g)] :
    ((antidiagonal f).filter fun p ↦ p.1 = g) = if g ≤ f then {(g, f - g)} else ∅ := by
  ext ⟨a, b⟩
  suffices a = g → (a + b = f ↔ g ≤ f ∧ b = f - g) by
    simpa [apply_ite (fun f ↦ (a, b) ∈ f), mem_filter, mem_antidiagonal, mem_singleton,
      Prod.mk.inj_iff, ← and_assoc, @and_right_comm _ (a = _), and_congr_left_iff]
  rintro rfl
  constructor
  · rintro rfl
    exact ⟨le_add_right le_rfl, (add_tsub_cancel_left _ _).symm⟩
  · rintro ⟨h, rfl⟩
    exact add_tsub_cancel_of_le h
#align finsupp.antidiagonal_filter_fst_eq Finsupp.antidiagonal_filter_fst_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc0fdb1b5fc34b7a2f62518b8609ba247b9dde06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
