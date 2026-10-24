# IsLocalDiffeomorph.diffeomorph_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cc45704741bd987d6f2645b91fd441205c4c40fa556a15ecf3e6bad65ee6022",
  "kind": "def",
  "lexical_name": "IsLocalDiffeomorph.diffeomorph_of_bijective",
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
  "slug": "islocaldiffeomorph-diffeomorph-of-bijective--356ec06dadfb8129b35363a2",
  "source": {
    "blob": "c2e98974713c04f90bde224c81ee6a3b23f652a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 326,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:356ec06dadfb8129b35363a2fd6f62974ad99f61bf2509de74d55590b8984382",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cc45704741bd987d6f2645b91fd441205c4c40fa556a15ecf3e6bad65ee6022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsLocalDiffeomorph.diffeomorph_of_bijective
    (hf : IsLocalDiffeomorph I J n f) (hf' : Function.Bijective f) : Diffeomorph I J M N n := by
  -- Choose a right inverse `g` of `f`.
  choose g hgInverse using (Function.bijective_iff_has_inverse).mp hf'
  -- Choose diffeomorphisms φ_x which coincide which `f` near `x`.
  choose Φ hyp using (fun x ↦ hf x)
  -- Two such diffeomorphisms (and their inverses!) coincide on their sources:
  -- they're both inverses to g. In fact, the latter suffices for our proof.
  -- have (x y) : EqOn (Φ x).symm (Φ y).symm ((Φ x).target ∩ (Φ y).target) := sorry
  have aux (x) : EqOn g (Φ x).symm (Φ x).target :=
    eqOn_of_leftInvOn_of_rightInvOn (fun x' _ ↦ hgInverse.1 x')
      (LeftInvOn.congr_left ((Φ x).toPartialHomeomorph).rightInvOn
        ((Φ x).toPartialHomeomorph).symm_mapsTo (hyp x).2.symm)
      (fun _y hy ↦ (Φ x).map_target hy)
  exact {
    toFun := f
    invFun := g
    left_inv := hgInverse.1
    right_inv := hgInverse.2
    contMDiff_toFun := hf.contMDiff
    contMDiff_invFun := by
      intro y
      let x := g y
      obtain ⟨hx, hfx⟩ := hyp x
      apply ((Φ x).symm.contMDiffOn.congr (aux x)).contMDiffAt (((Φ x).open_target).mem_nhds ?_)
      have : y = (Φ x) x := ((hgInverse.2 y).congr (hfx hx)).mp rfl
      exact this ▸ (Φ x).map_source hx }

@[deprecated (since := "2025-03-24")] alias
IslocalDiffeomorph.diffeomorph_of_bijective := IsLocalDiffeomorph.diffeomorph_of_bijective

end Basic

section Differential

variable {f : M → N} {s : Set M} {x : M}

variable {I I' J n}

/-- If `f` is a `C^n` local diffeomorphism at `x`, for `n ≥ 1`, the differential `df_x`
is a linear equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2e98974713c04f90bde224c81ee6a3b23f652a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
