# boundaryLE_embeddingUpIntLE_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd42c453-ad13-2241-3bd5-291a02ea3adb",
  "kind": "lemma",
  "lexical_name": "boundaryLE_embeddingUpIntLE_iff",
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
  "slug": "boundaryle-embeddingupintle-iff--e550f373596cd649bc9e6e66",
  "source": {
    "blob": "494578335c26f753f67c60f860e82f98dd7b9c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e550f373596cd649bc9e6e667c6ddc6e40e55ee59ef1d70c9d2be1cd0b235fdc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd42c453-ad13-2241-3bd5-291a02ea3adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundaryLE_embeddingUpIntLE_iff (p : ℤ) (n : ℕ) :
    (embeddingUpIntGE p).BoundaryGE n ↔ n = 0 := by
  constructor
  · intro h
    obtain _|n := n
    · rfl
    · have := h.2 n
      dsimp at this
      omega
  · rintro rfl
    constructor
    · simp
    · intro i hi
      dsimp at hi
      omega

end ComplexShape
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Boundary/Variant1931ff740a967dfe696b286441b620ebdd77b924a2220b1dc8b98a22a7e1623a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494578335c26f753f67c60f860e82f98dd7b9c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
