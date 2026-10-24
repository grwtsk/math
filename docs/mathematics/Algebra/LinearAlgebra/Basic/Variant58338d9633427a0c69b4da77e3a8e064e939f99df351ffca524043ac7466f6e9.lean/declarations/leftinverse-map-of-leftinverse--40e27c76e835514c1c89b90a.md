# leftInverse_map_of_leftInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ce3631d-5b91-5c1b-a470-b0556b50ad0f",
  "kind": "lemma",
  "lexical_name": "leftInverse_map_of_leftInverse",
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
  "slug": "leftinverse-map-of-leftinverse--40e27c76e835514c1c89b90a",
  "source": {
    "blob": "471ff73b1f3315f7f5bc94a08015c01e62e1356a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 371,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e27c76e835514c1c89b90a6241481a8859cc27842696e7c6a2bf06e1ac9510",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ce3631d-5b91-5c1b-a470-b0556b50ad0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftInverse_map_of_leftInverse {Q₁ : QuadraticForm R M₁} {Q₂ : QuadraticForm R M₂}
    (f : Q₁ →qᵢ Q₂) (g : Q₂ →qᵢ Q₁) (h : LeftInverse g f) : LeftInverse (map g) (map f) := by
  intro x
  replace h : g.comp f = QuadraticMap.Isometry.id Q₁ := DFunLike.ext _ _ h
  rw [← AlgHom.comp_apply, map_comp_map, h, map_id, AlgHom.coe_id, id_eq]

/-- If a linear map preserves the quadratic forms and is surjective, then the algebra
maps it induces between Clifford algebras is also surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant58338d9633427a0c69b4da77e3a8e064e939f99df351ffca524043ac7466f6e9.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `471ff73b1f3315f7f5bc94a08015c01e62e1356a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
