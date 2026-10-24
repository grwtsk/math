# δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e61e1d87191d231e9cad1960c5f02ac23109e3707d795e7ec4d997a4f108e709",
  "kind": "abbrev",
  "lexical_name": "δ",
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
  "slug": "anonymous--dd748c3485facfe9953eefc2",
  "source": {
    "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 212,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd748c3485facfe9953eefc2f9f64591fb686554aea11b0b398c9c3991c1b788",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e61e1d87191d231e9cad1960c5f02ac23109e3707d795e7ec4d997a4f108e709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev δ :
    (Subcomplex.unionProd.{u} Λ[m + 1, k.castSucc] ∂Δ[n]).N where
  dim := d
  simplex := (Δ[m + 1] ⊗ Δ[n]).δ l.castSucc (x.cast hd).simplex
  nonDegenerate := nonDegenerate_δ (x.cast hd).nonDegenerate _
  notMem := by
    simp only [Monoidal.tensorObj_obj]
    -- `simp? [Subcomplex.mem_unionProd_iff, mem_boundary_iff_notMem_range,
    --   mem_horn_iff_notMem_range,stdSimplex.δ_apply]` says:
    simp only [Subcomplex.mem_unionProd_iff, prod_δ_snd, mem_boundary_iff_notMem_range,
      Set.mem_range, stdSimplex.δ_apply, not_exists, prod_δ_fst, mem_horn_iff_notMem_range,
      ne_eq, exists_prop, not_or, not_forall, Decidable.not_not, not_and]
    refine ⟨fun j ↦ ?_, fun j hj ↦ ?_⟩
    · obtain ⟨i, hi⟩ := mem_range_right x hd j
      dsimp at hi
      obtain rfl | ⟨i, rfl⟩ := Fin.eq_self_or_eq_succAbove l.castSucc i
      · refine ⟨l, ?_⟩
        rw [Fin.succAbove_castSucc_self, ← hi, ← hl.simplex_snd_succ]
      · exact ⟨_, hi⟩
    · obtain ⟨i, hi⟩ := mem_range_left x hd j hj
      dsimp at hi
      obtain rfl | ⟨i, rfl⟩ := Fin.eq_self_or_eq_succAbove l.castSucc i
      · exact (hj (by rw [← hi, hl.simplex_fst_castSucc])).elim
      · exact ⟨_, hi⟩

end

end IsIndex

variable (k n) in
/-- The type of type (I) simplices for the pairing -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `befcd8a2916f87c43a0808772433669bb3e822aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
