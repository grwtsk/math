# d_comp_eqToHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39e231a6-5036-eb0e-c3fa-defe2cea2b66",
  "kind": "theorem",
  "lexical_name": "d_comp_eqToHom",
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
  "slug": "d-comp-eqtohom--6afb3d3bcee7eafc3063b97a",
  "source": {
    "blob": "506f15ae64eb8544f5f0e557f56ff91abd4bb327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 376,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant01f8621fbf934275d767d4b2d14ecf2fc6c3cc7b0d33b7b05c687deaf334d6f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6afb3d3bcee7eafc3063b97a0e6efd06c165c33f0e604b53170d64e4ad9c0fc0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant01f8621fbf934275d767d4b2d14ecf2fc6c3cc7b0d33b7b05c687deaf334d6f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39e231a6-5036-eb0e-c3fa-defe2cea2b66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d_comp_eqToHom {i j j' : ι} (rij : c.Rel i j) (rij' : c.Rel i j') :
    C.d i j' ≫ eqToHom (congr_arg C.X (c.next_eq rij' rij)) = C.d i j := by
  obtain rfl := c.next_eq rij rij'
  simp only [eqToHom_refl, comp_id]
#align homological_complex.d_comp_eq_to_hom HomologicalComplex.d_comp_eqToHom

-- porting note: removed @[simp] as the linter complained
/-- If `C.d i j` and `C.d i' j` are both allowed, then we must have `i = i'`,
and so the differentials only differ by an `eqToHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant01f8621fbf934275d767d4b2d14ecf2fc6c3cc7b0d33b7b05c687deaf334d6f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant01f8621fbf934275d767d4b2d14ecf2fc6c3cc7b0d33b7b05c687deaf334d6f7.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506f15ae64eb8544f5f0e557f56ff91abd4bb327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
