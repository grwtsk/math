# strArrowMk₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6e07c40dc689643e2ba8e1253c017d6e460f5d09e1edb4307ff78bae1f7615b",
  "kind": "abbrev",
  "lexical_name": "strArrowMk₂",
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
  "slug": "strarrowmk--2e98ebc82f18d11dee4f2f42",
  "source": {
    "blob": "4aecdf33ca0ae03a6ddc9a4a797b02c223acd2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant12d1617a17b88d7450a955bc0d03323a17bba5353dcfde5b5ac2abd1b84b9b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e98ebc82f18d11dee4f2f42ef86f0f6058e1b0084dcd91ad6b7f47b5ccdfe5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant12d1617a17b88d7450a955bc0d03323a17bba5353dcfde5b5ac2abd1b84b9b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6e07c40dc689643e2ba8e1253c017d6e460f5d09e1edb4307ff78bae1f7615b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev strArrowMk₂ {i : ℕ} {n : ℕ} (φ : ⦋i⦌ ⟶ ⦋n⦌) (hi : i ≤ 2 := by lia) :
    StructuredArrow (op ⦋n⦌) (Truncated.inclusion 2).op :=
  StructuredArrow.mk (Y := op ⦋i⦌₂) φ.op

/-- Given a term in the cone over the diagram
`(proj (op ⦋n⦌) ((Truncated.inclusion 2).op ⋙ (Truncated.inclusion 2).op ⋙ X)` where `X` is
Strict Segal, one can produce an `n`-simplex in `X`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant12d1617a17b88d7450a955bc0d03323a17bba5353dcfde5b5ac2abd1b84b9b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant12d1617a17b88d7450a955bc0d03323a17bba5353dcfde5b5ac2abd1b84b9b5e.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aecdf33ca0ae03a6ddc9a4a797b02c223acd2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
