# nullHomotopy'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d43420283ea297c9e7cf77453075bd08c5f5b6c7d4d8c47c8420ba04c602ace",
  "kind": "def",
  "lexical_name": "nullHomotopy'",
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
  "slug": "nullhomotopy--2f674f404b0e9572deced058",
  "source": {
    "blob": "19fe5f5dcfb35c38458e3137c3be93b6e0818cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f674f404b0e9572deced0583b072e03b85ca256e84c5b5c3ac8bd0e102bb6e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d43420283ea297c9e7cf77453075bd08c5f5b6c7d4d8c47c8420ba04c602ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nullHomotopy' (h : ∀ i j, c.Rel j i → (C.X i ⟶ D.X j)) : Homotopy (nullHomotopicMap' h) 0 := by
  apply nullHomotopy fun i j => dite (c.Rel j i) (h i j) fun _ => 0
  intro i j hij
  rw [dite_eq_right_iff]
  intro hij'
  exfalso
  exact hij hij'
#align homotopy.null_homotopy' Homotopy.nullHomotopy'

/-! This lemma and the following ones can be used in order to compute
the degreewise morphisms induced by the null homotopic maps constructed
with `nullHomotopicMap` or `nullHomotopicMap'` -/


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant48308faf4f82954702ace9e1e3c81c0b6094cb5a0325dd50870a2fbe03cd8845.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19fe5f5dcfb35c38458e3137c3be93b6e0818cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
