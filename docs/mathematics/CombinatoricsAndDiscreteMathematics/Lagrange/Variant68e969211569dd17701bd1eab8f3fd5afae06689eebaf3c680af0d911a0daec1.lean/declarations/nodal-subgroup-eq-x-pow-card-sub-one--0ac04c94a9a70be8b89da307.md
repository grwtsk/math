# nodal_subgroup_eq_X_pow_card_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffc159d6-2eb7-ae1f-dafc-fbec716fa435",
  "kind": "theorem",
  "lexical_name": "nodal_subgroup_eq_X_pow_card_sub_one",
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
  "slug": "nodal-subgroup-eq-x-pow-card-sub-one--0ac04c94a9a70be8b89da307",
  "source": {
    "blob": "3a5c6e9c5c21ff1813f9403c4c09416798e98058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 614,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac04c94a9a70be8b89da307b9aba503cdf83a5905e2f41179ee882ea18d8636",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc159d6-2eb7-ae1f-dafc-fbec716fa435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem nodal_subgroup_eq_X_pow_card_sub_one [IsDomain R]
    (G : Subgroup Rˣ) [Fintype G] :
    nodal (G : Set Rˣ).toFinset ((↑) : Rˣ → R) = X ^ (Fintype.card G) - 1 := by
  have h : degree (1 : R[X]) < degree ((X : R[X]) ^ Fintype.card G) := by simp [Fintype.card_pos]
  apply eq_of_degree_le_of_eval_index_eq (v := ((↑) : Rˣ → R)) (G : Set Rˣ).toFinset
  · exact Units.val_injective.injOn
  · simp
  · rw [degree_sub_eq_left_of_degree_lt h, degree_nodal, Set.toFinset_card, degree_pow, degree_X,
      nsmul_eq_mul, mul_one, Nat.cast_inj]
    exact rfl
  · rw [nodal_monic, leadingCoeff_sub_of_degree_lt h, monic_X_pow]
  · intro i hi
    rw [eval_nodal_at_node hi]
    replace hi : i ∈ G := by simpa using hi
    obtain ⟨g, rfl⟩ : ∃ g : G, g.val = i := ⟨⟨i, hi⟩, rfl⟩
    simp [← Units.val_pow_eq_pow_val, ← Subgroup.coe_pow G]

end Nodal

section NodalWeight

variable {F : Type*} [Field F] {ι : Type*} [DecidableEq ι]
variable {s : Finset ι} {v : ι → F} {i : ι}

open Finset

/-- This defines the nodal weight for a given set of node indexes and node mapping function `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant68e969211569dd17701bd1eab8f3fd5afae06689eebaf3c680af0d911a0daec1.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5c6e9c5c21ff1813f9403c4c09416798e98058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
