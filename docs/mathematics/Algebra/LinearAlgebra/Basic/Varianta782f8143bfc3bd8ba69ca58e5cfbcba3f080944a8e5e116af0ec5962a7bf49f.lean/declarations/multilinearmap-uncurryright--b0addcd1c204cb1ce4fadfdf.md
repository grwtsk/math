# MultilinearMap.uncurryRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5319d3ed298f0872d7ee56e13e424799b28b842cc1b99f3fdb50c0ac3bfed73d",
  "kind": "def",
  "lexical_name": "MultilinearMap.uncurryRight",
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
  "slug": "multilinearmap-uncurryright--b0addcd1c204cb1ce4fadfdf",
  "source": {
    "blob": "d1a71550b49276f7d20eab13a148752a1ce0fad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1353,
    "line": 1317,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0addcd1c204cb1ce4fadfdf09f78220548c16ee61908b37d595ab0249d57c9d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5319d3ed298f0872d7ee56e13e424799b28b842cc1b99f3fdb50c0ac3bfed73d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1317–1353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MultilinearMap.uncurryRight
    (f : MultilinearMap R (fun i : Fin n => M (castSucc i)) (M (last n) →ₗ[R] M₂)) :
    MultilinearMap R M M₂ where
  toFun m := f (init m) (m (last n))
  map_add' {dec} m i x y := by
    -- porting note: `clear` not necessary in Lean 3 due to not being in the instance cache
    rw [Subsingleton.elim dec (by clear dec; infer_instance)]; clear dec
    by_cases h : i.val < n
    · have : last n ≠ i := Ne.symm (ne_of_lt h)
      simp_rw [update_noteq this]
      revert x y
      rw [(castSucc_castLT i h).symm]
      intro x y
      rw [init_update_castSucc, MultilinearMap.map_add, init_update_castSucc,
        init_update_castSucc, LinearMap.add_apply]
    · revert x y
      rw [eq_last_of_not_lt h]
      intro x y
      simp_rw [init_update_last, update_same, LinearMap.map_add]
  map_smul' {dec} m i c x := by
    -- porting note: `clear` not necessary in Lean 3 due to not being in the instance cache
    rw [Subsingleton.elim dec (by clear dec; infer_instance)]; clear dec
    by_cases h : i.val < n
    · have : last n ≠ i := Ne.symm (ne_of_lt h)
      simp_rw [update_noteq this]
      revert x
      rw [(castSucc_castLT i h).symm]
      intro x
      rw [init_update_castSucc, init_update_castSucc, MultilinearMap.map_smul,
        LinearMap.smul_apply]
    · revert x
      rw [eq_last_of_not_lt h]
      intro x
      simp_rw [update_same, init_update_last, map_smul]
#align multilinear_map.uncurry_right MultilinearMap.uncurryRight

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean#L1317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a71550b49276f7d20eab13a148752a1ce0fad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
