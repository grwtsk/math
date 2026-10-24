# Q_f_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20eb7090-7562-676f-497e-f2cc152f0994",
  "kind": "theorem",
  "lexical_name": "Q_f_naturality",
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
  "slug": "q-f-naturality--77630fbdc8f890cfb55c9619",
  "source": {
    "blob": "c796eb42feeda35287d701c459c98a9783ad48ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant2091c67ccc23a81e7d3896594030803487baaed83d95eb7aa4dd59bcb2139c4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77630fbdc8f890cfb55c96199c642d1e5a1858889851336e1c249289553ed175",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant2091c67ccc23a81e7d3896594030803487baaed83d95eb7aa4dd59bcb2139c4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20eb7090-7562-676f-497e-f2cc152f0994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Q_f_naturality (q n : ℕ) {X Y : SimplicialObject C} (f : X ⟶ Y) :
    f.app (op ⦋n⦌) ≫ (Q q).f n = (Q q).f n ≫ f.app (op ⦋n⦌) := by
  simp only [Q, HomologicalComplex.sub_f_apply, HomologicalComplex.id_f, comp_sub, P_f_naturality,
    sub_comp, sub_left_inj]
  dsimp
  simp only [comp_id, id_comp]

/-- For each `q`, `Q q` is a natural transformation. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant2091c67ccc23a81e7d3896594030803487baaed83d95eb7aa4dd59bcb2139c4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant2091c67ccc23a81e7d3896594030803487baaed83d95eb7aa4dd59bcb2139c4f.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c796eb42feeda35287d701c459c98a9783ad48ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
