# fiber_in_connected_component

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bee288b-feaf-45fc-5854-009c44829924",
  "kind": "lemma",
  "lexical_name": "fiber_in_connected_component",
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
  "slug": "fiber-in-connected-component--2ae21fb41c906b81d7fff136",
  "source": {
    "blob": "b885b0ae48c94dd2ebf96c1b42dcb173ceeb33d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ae21fb41c906b81d7fff1364e77525589e8cf1cf91f8851a1a3d4731393991b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bee288b-feaf-45fc-5854-009c44829924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fiber_in_connected_component (X : C) (x : F.obj X) : ∃ (Y : C) (i : Y ⟶ X) (y : F.obj Y),
    F.map i y = x ∧ IsConnected Y ∧ Mono i := by
  obtain ⟨ι, f, g, hl, hc, he⟩ := has_decomp_connected_components X
  have : Fintype ι := Fintype.ofFinite ι
  let s : Cocone (Discrete.functor f ⋙ F) := F.mapCocone (Cofan.mk X g)
  let s' : IsColimit s := isColimitOfPreserves F hl
  obtain ⟨⟨j⟩, z, h⟩ := Concrete.isColimit_exists_rep _ s' x
  refine ⟨f j, g j, z, ⟨?_, hc j, MonoCoprod.mono_inj _ (Cofan.mk X g) hl j⟩⟩
  subst h
  rfl

/-- Up to isomorphism an element of the fiber of `X` only lies in one connected component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b885b0ae48c94dd2ebf96c1b42dcb173ceeb33d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
