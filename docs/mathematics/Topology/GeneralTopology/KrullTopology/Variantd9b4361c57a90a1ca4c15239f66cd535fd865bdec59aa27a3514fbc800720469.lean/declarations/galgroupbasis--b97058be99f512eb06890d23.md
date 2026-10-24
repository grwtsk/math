# galGroupBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cde33ae39bf00bf253952e9271c16daf08fc4ced0d60df59a59f11df7d2b167",
  "kind": "def",
  "lexical_name": "galGroupBasis",
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
  "slug": "galgroupbasis--b97058be99f512eb06890d23",
  "source": {
    "blob": "3084adef4cbd971d3a3aed40abd228db8109bb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b97058be99f512eb06890d234fbfa730b94ec61e490fb00e00f4c79464bdffd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cde33ae39bf00bf253952e9271c16daf08fc4ced0d60df59a59f11df7d2b167`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def galGroupBasis (K L : Type*) [Field K] [Field L] [Algebra K L] :
    GroupFilterBasis (L ≃ₐ[K] L) where
  toFilterBasis := galBasis K L
  one' := fun ⟨H, _, h2⟩ => h2 ▸ H.one_mem
  mul' {U} hU :=
    ⟨U, hU, by
      rcases hU with ⟨H, _, rfl⟩
      rintro x ⟨a, haH, b, hbH, rfl⟩
      exact H.mul_mem haH hbH⟩
  inv' {U} hU :=
    ⟨U, hU, by
      rcases hU with ⟨H, _, rfl⟩
      exact fun _ => H.inv_mem'⟩
  conj' := by
    rintro σ U ⟨H, ⟨E, hE, rfl⟩, rfl⟩
    let F : IntermediateField K L := E.map σ.symm.toAlgHom
    refine ⟨F.fixingSubgroup.carrier, ⟨⟨F.fixingSubgroup, ⟨F, ?_, rfl⟩, rfl⟩, fun g hg => ?_⟩⟩
    · have : FiniteDimensional K E := hE
      exact IntermediateField.finiteDimensional_map σ.symm.toAlgHom
    change σ * g * σ⁻¹ ∈ E.fixingSubgroup
    rw [IntermediateField.mem_fixingSubgroup_iff]
    intro x hx
    change σ (g (σ⁻¹ x)) = x
    have h_in_F : σ⁻¹ x ∈ F := ⟨x, hx, by dsimp; rw [← AlgEquiv.invFun_eq_symm]; rfl⟩
    have h_g_fix : g (σ⁻¹ x) = σ⁻¹ x := by
      rw [Subgroup.mem_carrier, IntermediateField.mem_fixingSubgroup_iff F g] at hg
      exact hg (σ⁻¹ x) h_in_F
    rw [h_g_fix]
    change σ (σ⁻¹ x) = x
    exact AlgEquiv.apply_symm_apply σ x

/-- For a field extension `L/K`, `krullTopology K L` is the topological space structure on
`L ≃ₐ[K] L` induced by the group filter basis `galGroupBasis K L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3084adef4cbd971d3a3aed40abd228db8109bb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
