# ofCocomplex_sq_01_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82593efe-9927-d53b-0645-5f91c385ccba",
  "kind": "theorem",
  "lexical_name": "ofCocomplex_sq_01_comm",
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
  "slug": "ofcocomplex-sq-01-comm--90f11f9827fc4e9bd4e38784",
  "source": {
    "blob": "b8e27831190922dcd4254730a41ee4fd6dc851d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f11f9827fc4e9bd4e38784c9d417099f994014b0d99aba94e13b6ea472b6b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82593efe-9927-d53b-0645-5f91c385ccba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofCocomplex_sq_01_comm (Z : C) :
    Injective.ι Z ≫ HomologicalComplex.d (ofCocomplex Z) 0 1 =
    HomologicalComplex.d ((CochainComplex.single₀ C).obj Z) 0 1 ≫ 0 := by
  simp only [ofCocomplex_d, eq_self_iff_true, eqToHom_refl, Category.comp_id,
    dite_eq_ite, if_true, comp_zero]
  exact (exact_f_d (Injective.ι Z)).w

-- Porting note: the `exact` in `of` was very, very slow. To assist,
-- the whole proof was broken out into a separate result
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/InjectiveResolution/Variant11c88cd12fc2701bd1c62b0a353eec15b9cc421cf8d784592112cc1c320c4384.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e27831190922dcd4254730a41ee4fd6dc851d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
