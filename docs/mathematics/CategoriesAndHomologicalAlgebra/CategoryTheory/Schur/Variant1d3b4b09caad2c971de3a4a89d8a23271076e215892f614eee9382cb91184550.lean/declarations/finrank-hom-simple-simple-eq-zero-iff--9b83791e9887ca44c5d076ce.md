# finrank_hom_simple_simple_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dca1d88-3f83-8969-99da-42ef5c01086e",
  "kind": "theorem",
  "lexical_name": "finrank_hom_simple_simple_eq_zero_iff",
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
  "slug": "finrank-hom-simple-simple-eq-zero-iff--9b83791e9887ca44c5d076ce",
  "source": {
    "blob": "8ce90513ceaf92f45a9ef3c2ecc4abc4706f6e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b83791e9887ca44c5d076ce8280e3ed399315f3db3a0ab71c726e755436f1b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dca1d88-3f83-8969-99da-42ef5c01086e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_hom_simple_simple_eq_zero_iff (X Y : C) [FiniteDimensional 𝕜 (X ⟶ X)]
    [FiniteDimensional 𝕜 (X ⟶ Y)] [Simple X] [Simple Y] :
    finrank 𝕜 (X ⟶ Y) = 0 ↔ IsEmpty (X ≅ Y) := by
  rw [← not_nonempty_iff, ← not_congr (finrank_hom_simple_simple_eq_one_iff 𝕜 X Y)]
  have := finrank_hom_simple_simple_le_one 𝕜 X Y
  lia

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant1d3b4b09caad2c971de3a4a89d8a23271076e215892f614eee9382cb91184550.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce90513ceaf92f45a9ef3c2ecc4abc4706f6e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
