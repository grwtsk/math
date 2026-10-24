# extendMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7fa3a4b86a01042efd432d44088c84e22b4a8e8c6ed9ccb4bf1239c2455f095",
  "kind": "def",
  "lexical_name": "extendMap",
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
  "slug": "extendmap--08ce2fbcf2efb309226f633e",
  "source": {
    "blob": "b0adf7dc0c7e33ae40b1fd9361634a2aaefe1d7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08ce2fbcf2efb309226f633e9165c6831c1103c8a54f143556666a5c25448445",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7fa3a4b86a01042efd432d44088c84e22b4a8e8c6ed9ccb4bf1239c2455f095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extendMap : K.extend e ⟶ L.extend e where
  f _ := extend.mapX φ _
  comm' i' j' _ := by
    by_cases hi : ∃ i, e.f i = i'
    · obtain ⟨i, hi⟩ := hi
      by_cases hj : ∃ j, e.f j = j'
      · obtain ⟨j, hj⟩ := hj
        rw [K.extend_d_eq e hi hj, L.extend_d_eq e hi hj,
          extend.mapX_some φ (e.r_eq_some hi),
          extend.mapX_some φ (e.r_eq_some hj)]
        simp only [extendXIso, assoc, Iso.inv_hom_id_assoc, Hom.comm_assoc]
      · have hj' := e.r_eq_none j' (fun j'' hj'' => hj ⟨j'', hj''⟩)
        dsimp [extend]
        rw [extend.d_none_eq_zero' _ _ _ hj', extend.d_none_eq_zero' _ _ _ hj',
          comp_zero, zero_comp]
    · have hi' := e.r_eq_none i' (fun i'' hi'' => hi ⟨i'', hi''⟩)
      dsimp [extend]
      rw [extend.d_none_eq_zero _ _ _ hi', extend.d_none_eq_zero _ _ _ hi',
        comp_zero, zero_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0adf7dc0c7e33ae40b1fd9361634a2aaefe1d7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
