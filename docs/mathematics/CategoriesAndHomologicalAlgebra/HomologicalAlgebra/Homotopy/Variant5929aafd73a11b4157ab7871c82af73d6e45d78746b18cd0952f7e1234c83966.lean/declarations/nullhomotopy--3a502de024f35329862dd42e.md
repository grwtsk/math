# nullHomotopy'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb8f0b7ecf03665c98b0b28a9ab64354adfcd50e727b4ab14dc90f331c3a7049",
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
  "slug": "nullhomotopy--3a502de024f35329862dd42e",
  "source": {
    "blob": "8fcd279cc14596e19dc6634845551fbd0729615c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 339,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a502de024f35329862dd42eb5a80fd5e3a05900c33ca3c1c181aa6fc527d214",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb8f0b7ecf03665c98b0b28a9ab64354adfcd50e727b4ab14dc90f331c3a7049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nullHomotopy' (h : ∀ i j, c.Rel j i → (C.X i ⟶ D.X j)) : Homotopy (nullHomotopicMap' h) 0 := by
  apply nullHomotopy fun i j => dite (c.Rel j i) (h i j) fun _ => 0
  intro i j hij
  rw [dite_eq_right_iff]
  intro hij'
  exfalso
  exact hij hij'

/-! This lemma and the following ones can be used in order to compute
the degreewise morphisms induced by the null homotopic maps constructed
with `nullHomotopicMap` or `nullHomotopicMap'` -/


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcd279cc14596e19dc6634845551fbd0729615c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
