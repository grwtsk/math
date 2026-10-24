# factorThru_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b778230-129e-157b-45dc-305ab464e3b6",
  "kind": "theorem",
  "lexical_name": "factorThru_right",
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
  "slug": "factorthru-right--99260abe71114e452d8188f2",
  "source": {
    "blob": "84a08228a2582da495dcc2ea51b3e32214ff7c35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99260abe71114e452d8188f2c56b3d8cecd6c8b6209e30177b66c3c17c5af237",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b778230-129e-157b-45dc-305ab464e3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorThru_right {X Y Z : C} {P : Subobject Z} (f : X ⟶ Y) (g : Y ⟶ Z) (h : P.Factors g) :
    f ≫ P.factorThru g h = P.factorThru (f ≫ g) (factors_of_factors_right f h) := by
  apply (cancel_mono P.arrow).mp
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a08228a2582da495dcc2ea51b3e32214ff7c35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
