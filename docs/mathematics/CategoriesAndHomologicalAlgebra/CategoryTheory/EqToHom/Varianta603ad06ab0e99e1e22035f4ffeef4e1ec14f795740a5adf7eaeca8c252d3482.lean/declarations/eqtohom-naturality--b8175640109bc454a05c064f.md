# eqToHom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d75d3a4-c525-41d5-53d4-c5938724a8b0",
  "kind": "theorem",
  "lexical_name": "eqToHom_naturality",
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
  "slug": "eqtohom-naturality--b8175640109bc454a05c064f",
  "source": {
    "blob": "56cbf571df78188430cf2dd96e3f7327d1963692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8175640109bc454a05c064f6f3fbab8e8fcc300e4199ced43c8a39c20e3aab8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d75d3a4-c525-41d5-53d4-c5938724a8b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqToHom_naturality {f g : β → C} (z : ∀ b, f b ⟶ g b) {j j' : β} (w : j = j') :
    z j ≫ eqToHom (by simp [w]) = eqToHom (by simp [w]) ≫ z j' := by
  cases w
  simp

/-- A variant on `eqToHom_naturality` that helps Lean identify the families `f` and `g`. -/
-- The simpNF linter incorrectly claims that this will never apply.
-- https://github.com/leanprover-community/mathlib4/issues/5049
@[reassoc (attr := simp, nolint simpNF)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqToHom/Varianta603ad06ab0e99e1e22035f4ffeef4e1ec14f795740a5adf7eaeca8c252d3482.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cbf571df78188430cf2dd96e3f7327d1963692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
