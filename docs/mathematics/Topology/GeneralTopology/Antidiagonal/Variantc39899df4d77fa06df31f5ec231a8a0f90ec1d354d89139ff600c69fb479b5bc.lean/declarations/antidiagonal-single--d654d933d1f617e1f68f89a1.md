# antidiagonal_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d31ebc5-6aef-8ad8-ed57-64e28952e5be",
  "kind": "theorem",
  "lexical_name": "antidiagonal_single",
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
  "slug": "antidiagonal-single--d654d933d1f617e1f68f89a1",
  "source": {
    "blob": "fc0fdb1b5fc34b7a2f62518b8609ba247b9dde06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d654d933d1f617e1f68f89a15bf2cbe684e87de5f091ed92433bff215b4cf569",
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

Occurrence: `result:2d31ebc5-6aef-8ad8-ed57-64e28952e5be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonal_single (a : α) (n : ℕ) :
    antidiagonal (single a n) = (Finset.Nat.antidiagonal n).map
      (Function.Embedding.prodMap ⟨_, single_injective a⟩ ⟨_, single_injective a⟩) := by
  ext ⟨x, y⟩
  simp only [mem_antidiagonal, mem_map, Nat.mem_antidiagonal, Function.Embedding.coe_prodMap,
    Function.Embedding.coeFn_mk, Prod_map, Prod.mk.injEq, Prod.exists]
  constructor
  · intro h
    refine ⟨x a, y a, FunLike.congr_fun h a |>.trans single_eq_same, ?_⟩
    simp_rw [FunLike.ext_iff, ←forall_and]
    intro i
    replace h := FunLike.congr_fun h i
    simp_rw [single_apply, Finsupp.add_apply] at h ⊢
    obtain rfl | hai := Decidable.eq_or_ne a i
    · exact ⟨if_pos rfl, if_pos rfl⟩
    · simp_rw [if_neg hai, _root_.add_eq_zero_iff] at h ⊢
      exact h.imp Eq.symm Eq.symm
  · rintro ⟨a, b, rfl, rfl, rfl⟩
    exact (single_add _ _ _).symm

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Antidiagonal/Variantc39899df4d77fa06df31f5ec231a8a0f90ec1d354d89139ff600c69fb479b5bc.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc0fdb1b5fc34b7a2f62518b8609ba247b9dde06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
