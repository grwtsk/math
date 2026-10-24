# Γ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d4f09152e4d75c9362a877af431c12e4282363a3d9fb46e527b18a93ddf6fe",
  "kind": "def",
  "lexical_name": "Γ",
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
  "slug": "anonymous--3f9bbeb55f3b6b9e2ac573b1",
  "source": {
    "blob": "2f2684686e03ab830512f885d0a66d0a54a2f393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceAdditive/Variant6441c97b0f9805c8ed9237bb34f50673e1df24667387ebc2c57d9cb4b9ddd70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f9bbeb55f3b6b9e2ac573b114259cefd472b677de1de5b41c7d215fa421c5b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceAdditive/Variant6441c97b0f9805c8ed9237bb34f50673e1df24667387ebc2c57d9cb4b9ddd70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9d4f09152e4d75c9362a877af431c12e4282363a3d9fb46e527b18a93ddf6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Γ : Karoubi (ChainComplex C ℕ) ⥤ Karoubi (SimplicialObject C) :=
  Γ₂

/-- The Dold-Kan equivalence `Karoubi (SimplicialObject C) ≌ Karoubi (ChainComplex C ℕ)`
for additive categories. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceAdditive/Variant6441c97b0f9805c8ed9237bb34f50673e1df24667387ebc2c57d9cb4b9ddd70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceAdditive/Variant6441c97b0f9805c8ed9237bb34f50673e1df24667387ebc2c57d9cb4b9ddd70e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2684686e03ab830512f885d0a66d0a54a2f393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
