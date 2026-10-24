# counitForward_naturality₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf4ab67e-ecf6-6ee9-a615-490eee28dcc1",
  "kind": "lemma",
  "lexical_name": "counitForward_naturality₂",
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
  "slug": "counitforward-naturality--4dc11f9ced48f8c7ddfe3e17",
  "source": {
    "blob": "1fbc2fcda2c4d7aa1dbc2ca4a8dc615b2fba1493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 517,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc11f9ced48f8c7ddfe3e17702a10b57995dfd62039b57b04ac7c47b2b909c2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4ab67e-ecf6-6ee9-a615-490eee28dcc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma counitForward_naturality₂ (s t : (CostructuredArrow yoneda A)ᵒᵖ) (f : t ⟶ s) (x : F.obj t) :
    counitForward F s.unop (F.map f x) =
      OverArrows.map₂ (counitForward F t.unop x) f.unop.left (by simp) := by
  refine OverArrows.ext <| YonedaCollection.ext (by simp) ?_
  have : (CostructuredArrow.mkPrecomp t.unop.hom f.unop.left).op =
      f ≫ eqToHom (by simp [← CostructuredArrow.eq_mk]) := by
    apply Quiver.Hom.unop_inj
    simp
  aesop_cat

/-- Backward direction of the counit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbc2fcda2c4d7aa1dbc2ca4a8dc615b2fba1493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
