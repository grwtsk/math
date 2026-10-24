# ι_totalShift₁Iso_inv_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6dcbe70-a590-7319-c3d6-7dea21c5d89e",
  "kind": "lemma",
  "lexical_name": "ι_totalShift₁Iso_inv_f",
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
  "slug": "totalshift-iso-inv-f--ddc16e5e7cf9a94a31817462",
  "source": {
    "blob": "abc0cb5af6602eac51cb55d552ec68ee39cf7c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc16e5e7cf9a94a31817462bb490dd3f998819951816a3d8659560d0e663d66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6dcbe70-a590-7319-c3d6-7dea21c5d89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_totalShift₁Iso_inv_f (a b n : ℤ) (h : a + b = n) (a' n' : ℤ)
    (ha' : a' + b = n') (hn' : n' = n + x) :
    K.ιTotal (up ℤ) a' b n' ha' ≫
      (CochainComplex.shiftFunctorObjXIso (K.total (up ℤ)) x n n' hn').inv ≫
        (K.totalShift₁Iso x).inv.f n =
      (K.shiftFunctor₁XXIso a x a' (by lia) b).inv ≫
        ((shiftFunctor₁ C x).obj K).ιTotal (up ℤ) a b n h := by
  subst hn'
  obtain rfl : a = a' - x := by lia
  dsimp [totalShift₁Iso, totalShift₁XIso, shiftFunctor₁XXIso, XXIsoOfEq]
  simp only [id_comp, ι_totalDesc]

set_option backward.defeqAttrib.useBackward true in
variable {K L} in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc0cb5af6602eac51cb55d552ec68ee39cf7c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
