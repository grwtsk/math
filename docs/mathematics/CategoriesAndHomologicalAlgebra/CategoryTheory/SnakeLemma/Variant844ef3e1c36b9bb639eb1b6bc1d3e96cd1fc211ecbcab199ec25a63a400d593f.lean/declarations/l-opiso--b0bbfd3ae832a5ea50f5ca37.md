# L₂'OpIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a2a597296e665ed0c56cdbd151b757ca1c83ff34f77d68a3a28e54e941b5398",
  "kind": "def",
  "lexical_name": "L₂'OpIso",
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
  "slug": "l-opiso--b0bbfd3ae832a5ea50f5ca37",
  "source": {
    "blob": "5fc6b896808d7b0e4e57a75e81126ec356fb2550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 349,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0bbfd3ae832a5ea50f5ca37e693299236f52be35b8e9f3eee389906f2618d83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a2a597296e665ed0c56cdbd151b757ca1c83ff34f77d68a3a28e54e941b5398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def L₂'OpIso : S.L₂'.op ≅ S.op.L₁' :=
  ShortComplex.isoMk (Iso.refl _) (Iso.refl _) (Iso.refl _) (by simp)
    (by dsimp; simp only [id_comp, comp_id, S.op_δ])

/-- Exactness of `L₀.X₃ ⟶ L₃.X₁ ⟶ L₃.X₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc6b896808d7b0e4e57a75e81126ec356fb2550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
