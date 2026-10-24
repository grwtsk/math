# cycleType_kerParam_apply_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4983962f-6884-1b32-f4a7-d44d2b65245e",
  "kind": "theorem",
  "lexical_name": "cycleType_kerParam_apply_apply",
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
  "slug": "cycletype-kerparam-apply-apply--1f8c974a889e76c360455957",
  "source": {
    "blob": "123c19bd6d59d1980cce00e9af92bbc43633c077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 615,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f8c974a889e76c360455957cac4cca496416aebe8d1a7830de78a67b8b87608",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4983962f-6884-1b32-f4a7-d44d2b65245e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleType_kerParam_apply_apply :
    cycleType (kerParam g ⟨k, v⟩) = cycleType k + ∑ c, (v c).val.cycleType := by
  let U := (Finset.univ : Finset { x // x ∈ g.cycleFactorsFinset }).toSet
  have hU : U.Pairwise fun i j ↦ (v i).val.Disjoint (v j).val := fun c _ d _ h ↦ by
    obtain ⟨m, hm⟩ := (v c).prop
    obtain ⟨n, hn⟩ := (v d).prop
    simp only [← hm, ← hn]
    apply Disjoint.zpow_disjoint_zpow
    apply cycleFactorsFinset_pairwise_disjoint g c.prop d.prop
    exact Subtype.coe_ne_coe.mpr h
  rw [kerParam, MonoidHom.noncommCoprod_apply, ← Prod.fst_mul_snd ⟨k, v⟩, Prod.mk_mul_mk, mul_one,
    one_mul, Finset.univ_eq_attach, Disjoint.cycleType (disjoint_ofSubtype_noncommPiCoprod g k v),
    Subgroup.noncommPiCoprod_apply, Disjoint.cycleType_noncommProd hU, Finset.univ_eq_attach]
  exact congr_arg₂ _ cycleType_ofSubtype rfl

end Sign

end OnCycleFactors

open Nat

variable (g : Perm α)

-- Should one parenthesize the product ?
/-- Cardinality of the centralizer in `Equiv.Perm α` of a permutation given `cycleType` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `123c19bd6d59d1980cce00e9af92bbc43633c077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
