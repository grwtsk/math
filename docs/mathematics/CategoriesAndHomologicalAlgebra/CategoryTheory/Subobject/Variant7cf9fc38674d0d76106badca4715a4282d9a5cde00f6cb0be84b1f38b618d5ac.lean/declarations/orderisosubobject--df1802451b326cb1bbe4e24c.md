# orderIsoSubobject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c07ea46e63e9173f0c6b62ca16db68527b2a6900673fbd0fc5003dd4e3236ad2",
  "kind": "def",
  "lexical_name": "orderIsoSubobject",
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
  "slug": "orderisosubobject--df1802451b326cb1bbe4e24c",
  "source": {
    "blob": "7491cdac2d17968527cf9bcc4d37ffdc24101350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df1802451b326cb1bbe4e24cc2744a0ee8be1de52812dfec7a439cc546c3632a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c07ea46e63e9173f0c6b62ca16db68527b2a6900673fbd0fc5003dd4e3236ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def orderIsoSubobject : Subpresheaf F ≃o Subobject F where
  toFun A := Subobject.mk A.ι
  invFun X := Subpresheaf.range X.arrow
  left_inv A := by simp
  right_inv X := by simp
  map_rel_iff' {A B} := by
    constructor
    · intro h
      have : range (Subobject.mk A.ι).arrow ≤ range (Subobject.mk B.ι).arrow :=
        leOfHom (((equivalenceMonoOver F).trans
          (ThinSkeleton.equivalence _).symm).inverse.map (homOfLE h))
      simpa using this
    · intro h
      exact leOfHom (((equivalenceMonoOver F).trans
        (ThinSkeleton.equivalence _).symm).functor.map (homOfLE h))

end Subpresheaf

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7491cdac2d17968527cf9bcc4d37ffdc24101350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
