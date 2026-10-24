# restrictScalars_eq_iSup_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39485aa329e08938a22e03af6735b753cd04f07d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a30123f1-e30d-459b-f6c0-00c54d0b9003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4abd7f2-7e7d-a67e-9349-5c0f96e0ffad",
  "kind": "theorem",
  "lexical_name": "restrictScalars_eq_iSup_adjoin",
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
  "slug": "restrictscalars-eq-isup-adjoin--722a6c80dc92837cffdace7b",
  "source": {
    "blob": "39485aa329e08938a22e03af6735b753cd04f07d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:722a6c80dc92837cffdace7b489594e134a95d71da15222fb0cf052fde76c1cf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4abd7f2-7e7d-a67e-9349-5c0f96e0ffad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictScalars_eq_iSup_adjoin [h : Normal F L] :
    (normalClosure F K L).restrictScalars F = ⨆ x : K, adjoin F ((minpoly F x).rootSet L) := by
  classical
  have hi : ∀ x : K, IsIntegral F x :=
    fun x ↦ (isIntegral_algebraMap_iff (algebraMap K L).injective).mp (h.isIntegral _)
  refine' le_antisymm (iSup_le _) (iSup_le fun x => adjoin_le_iff.mpr fun y hy => _)
  · rintro f _ ⟨x, rfl⟩
    refine' le_iSup (fun x => adjoin F ((minpoly F x).rootSet L)) x
        (subset_adjoin F ((minpoly F x).rootSet L) _)
    rw [mem_rootSet_of_ne (minpoly.ne_zero (hi x)), AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom,
      Polynomial.aeval_algHom_apply, minpoly.aeval, map_zero]
  · rw [Polynomial.rootSet, Finset.mem_coe, Multiset.mem_toFinset] at hy
    let g := (algHomAdjoinIntegralEquiv F (hi x)).symm ⟨y, hy⟩
    refine' le_iSup (fun f : K →ₐ[F] L => f.fieldRange) ((g.liftNormal L).comp (toAlgHom F K L))
        ⟨x, (g.liftNormal_commutes L (AdjoinSimple.gen F x)).trans _⟩
    rw [Algebra.id.map_eq_id, RingHom.id_apply]
    -- Porting note: in mathlib3 this next `apply` closed the goal.
    -- Now it can't find a proof by unification, so we have to do it ourselves.
    apply PowerBasis.lift_gen
    change aeval y (minpoly F (AdjoinSimple.gen F x)) = 0
    exact minpoly_gen (hi x) ▸ aeval_eq_zero_of_mem_rootSet (Multiset.mem_toFinset.mpr hy)

#align normal_closure.restrict_scalars_eq_supr_adjoin normalClosure.restrictScalars_eq_iSup_adjoin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NormalClosure/Variantb6782e781a8f24bc4c7ce8404f1ef1e7bb42d0580302c53fc46bcc59b84f9a89.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39485aa329e08938a22e03af6735b753cd04f07d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
