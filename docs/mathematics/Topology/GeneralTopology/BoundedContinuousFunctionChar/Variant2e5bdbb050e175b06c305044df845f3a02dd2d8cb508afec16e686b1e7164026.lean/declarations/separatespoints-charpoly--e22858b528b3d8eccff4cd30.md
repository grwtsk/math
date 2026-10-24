# separatesPoints_charPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d666db08-af20-c1a4-d616-3bbe88b930f4",
  "kind": "lemma",
  "lexical_name": "separatesPoints_charPoly",
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
  "slug": "separatespoints-charpoly--e22858b528b3d8eccff4cd30",
  "source": {
    "blob": "4cd423dbf0934d2d496b3804a58e88e7c1141a6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e22858b528b3d8eccff4cd30fcfa56f52b640a19e029996e728b5eda7c9438bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d666db08-af20-c1a4-d616-3bbe88b930f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma separatesPoints_charPoly (he : Continuous e) (he' : e ≠ 1)
    (hL : Continuous fun p : V × W ↦ L p.1 p.2) (hL' : ∀ v ≠ 0, L v ≠ 0) :
    ((charPoly he hL).map (toContinuousMapStarₐ ℂ)).SeparatesPoints := by
  intro v v' hvv'
  obtain ⟨w, hw⟩ : ∃ w, char he hL w v ≠ char he hL w v' := by
    contrapose! hvv'
    exact ext_of_char_eq he he' hL hL' hvv'
  use char he hL w
  simp only [StarSubalgebra.coe_toSubalgebra, StarSubalgebra.coe_map, Set.mem_image,
    SetLike.mem_coe, exists_exists_and_eq_and, ne_eq, SetLike.coe_eq_coe]
  exact ⟨⟨char he hL w, char_mem_charPoly w, rfl⟩, hw⟩

end BoundedContinuousFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variant2e5bdbb050e175b06c305044df845f3a02dd2d8cb508afec16e686b1e7164026.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd423dbf0934d2d496b3804a58e88e7c1141a6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
