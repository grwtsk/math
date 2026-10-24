# multiforkLift_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3566c83b-9b9d-4473-b6c5-1041d85660aa",
  "kind": "lemma",
  "lexical_name": "multiforkLift_map",
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
  "slug": "multiforklift-map--2f64e244c198a7558b5d73df",
  "source": {
    "blob": "b563e46e301338f7394357cdd0e776a0a288fe9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 206,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f64e244c198a7558b5d73df6c9cf8e5b74de77a0c3f899d809c485718392be0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3566c83b-9b9d-4473-b6c5-1041d85660aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multiforkLift_map (i₀ : E.I₀) : multiforkLift c ≫ F.val.map (E.f i₀).op = c.ι i₀ := by
  simp [multiforkLift]

end

/-- If `E : J.OneHypercover S` and `F : Sheaf J A`, then `F.obj (op S)` is
a multiequalizer of suitable maps `F.obj (op (E.X i)) ⟶ F.obj (op (E.Y j))`
induced by `E.p₁ j` and `E.p₂ j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercover/Variant586d9303bbad89b7dcf46b3b91230646fed0992a509e8536ff19a3893d2b430c.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b563e46e301338f7394357cdd0e776a0a288fe9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
