# centralCharacter_section

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:609c5a78-1db8-b5a3-5571-5f9bc6de61b7",
  "kind": "theorem",
  "lexical_name": "centralCharacter_section",
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
  "slug": "centralcharacter-section--9d654b9851c659c47590d7f5",
  "source": {
    "blob": "31342111b6ab5d6376be16c6dde2f9fe4a371121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 304,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d654b9851c659c47590d7f591b5809f452580af36d5e9188767732ba14e2b07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:609c5a78-1db8-b5a3-5571-5f9bc6de61b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centralCharacter_section (b : Vector → ℝ) (hb : b 0 = 0)
    (p : ℕ) [NeZero p] (a c : ℕ) :
    changedMatrix b (central ((a * c : ℕ) : ℝ)) =
      Heisenberg.central ((a * c : ℕ) : ℝ) ∧
    Heisenberg.centralCharacter p ((a : ℤ) * c) = phase p (a * c) := by
  constructor
  · rw [changedMatrix, sectionEquiv_central b hb, matrix_central]
  · exact Heisenberg.centralCharacter_product p a c

/-- The actual modular kernel survives permitted section changes of tally coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31342111b6ab5d6376be16c6dde2f9fe4a371121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
