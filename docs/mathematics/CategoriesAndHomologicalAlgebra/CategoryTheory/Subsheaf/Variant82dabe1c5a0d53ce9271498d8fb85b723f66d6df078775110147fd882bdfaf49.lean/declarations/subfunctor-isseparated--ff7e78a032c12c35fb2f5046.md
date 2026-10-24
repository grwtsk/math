# Subfunctor.isSeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410d3b42-4407-c64f-c47d-2f6fe99fb3a8",
  "kind": "theorem",
  "lexical_name": "Subfunctor.isSeparated",
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
  "slug": "subfunctor-isseparated--ff7e78a032c12c35fb2f5046",
  "source": {
    "blob": "83c5208ca25e860e9ec029bfbe4ba2a11714749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff7e78a032c12c35fb2f504639b2aa32c5d330643f414473e49cd5e93bd253c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:410d3b42-4407-c64f-c47d-2f6fe99fb3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subfunctor.isSeparated {J : GrothendieckTopology C} (h : Presieve.IsSeparated J F) :
    Presieve.IsSeparated J G.toFunctor :=
  fun _ S hS _ _ _ hx₁ hx₂ ↦ Subtype.ext <| h S hS _ _ _ (hx₁.map G.ι) (hx₂.map G.ι)

set_option backward.defeqAttrib.useBackward true in
/-- The sheafification of a subpresheaf as a subpresheaf.
Note that this is a sheaf only when the whole presheaf is a sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c5208ca25e860e9ec029bfbe4ba2a11714749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
