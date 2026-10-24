# ι_totalShift₂Iso_inv_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f04b61e9-153f-395a-4ccb-b4a1a205541c",
  "kind": "lemma",
  "lexical_name": "ι_totalShift₂Iso_inv_f",
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
  "slug": "totalshift-iso-inv-f--ec96d00b8cfc3ec1355d73e3",
  "source": {
    "blob": "abc0cb5af6602eac51cb55d552ec68ee39cf7c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 337,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec96d00b8cfc3ec1355d73e398079866d1456ca4cc317d7a6913b005748e0352",
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

Occurrence: `result:f04b61e9-153f-395a-4ccb-b4a1a205541c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_totalShift₂Iso_inv_f (a b n : ℤ) (h : a + b = n) (b' n' : ℤ)
    (hb' : a + b' = n') (hn' : n' = n + y) :
    K.ιTotal (up ℤ) a b' n' hb' ≫
      (CochainComplex.shiftFunctorObjXIso (K.total (up ℤ)) y n n' hn').inv ≫
        (K.totalShift₂Iso y).inv.f n =
      (a * y).negOnePow • (K.shiftFunctor₂XXIso a b y b' (by lia)).inv ≫
        ((shiftFunctor₂ C y).obj K).ιTotal (up ℤ) a b n h := by
  subst hn'
  obtain rfl : b = b' - y := by lia
  dsimp [totalShift₂Iso, totalShift₂XIso, shiftFunctor₂XXIso, XXIsoOfEq]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc0cb5af6602eac51cb55d552ec68ee39cf7c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
