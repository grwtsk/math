# IsPrecongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:442c20413631b1eb03c44b6d4c8f3648b65a0827bc5c17993bc6a27b56a9ce2f",
  "kind": "def",
  "lexical_name": "IsPrecongr",
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
  "slug": "isprecongr--349fa165ad1a0bca6bc1aba3",
  "source": {
    "blob": "17ed4e364a2fb6984086b1c44df55c025c11692a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:349fa165ad1a0bca6bc1aba3d19caec3f71f83bb7342a123d875373ad1cf8941",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:442c20413631b1eb03c44b6d4c8f3648b65a0827bc5c17993bc6a27b56a9ce2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsPrecongr (r : q.P.M → q.P.M → Prop) : Prop :=
  ∀ ⦃x y⦄, r x y →
    abs (q.P.map (Quot.mk r) (PFunctor.M.dest x)) = abs (q.P.map (Quot.mk r) (PFunctor.M.dest y))

/-- The maximal congruence on `q.P.M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a9b4f244a9da2842daf2c584f6b78bebe5fc928131bdfec7b21d0c2dc3bafe9.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17ed4e364a2fb6984086b1c44df55c025c11692a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
