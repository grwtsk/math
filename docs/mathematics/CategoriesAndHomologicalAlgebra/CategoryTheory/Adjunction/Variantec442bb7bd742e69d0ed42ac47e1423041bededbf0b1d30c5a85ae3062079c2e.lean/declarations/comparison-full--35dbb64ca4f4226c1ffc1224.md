# comparison_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64ebf5bb-ac4b-161d-e163-83780e8787b6",
  "kind": "lemma",
  "lexical_name": "comparison_full",
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
  "slug": "comparison-full--35dbb64ca4f4226c1ffc1224",
  "source": {
    "blob": "75b8b4de092ad8b99ed9dcc83b953575d957cfed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 402,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35dbb64ca4f4226c1ffc1224d4e7a58ea0247d4932e02e37535a82892b7a585a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64ebf5bb-ac4b-161d-e163-83780e8787b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comparison_full [R.Full] {L : C ⥤ D} (adj : R ⊣ L) :
    (Comonad.comparison adj).Full where
  map_surjective f := ⟨R.preimage f.f, by cat_disch⟩

end Coreflective

-- It is possible to do this computably since the construction gives the data of the inverse, not
-- just the existence of an inverse on each object.
-- see Note [lower instance priority]
/-- Any reflective inclusion has a monadic right adjoint.
cf Prop 5.3.3 of [Riehl][riehl2017] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantec442bb7bd742e69d0ed42ac47e1423041bededbf0b1d30c5a85ae3062079c2e.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b8b4de092ad8b99ed9dcc83b953575d957cfed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
