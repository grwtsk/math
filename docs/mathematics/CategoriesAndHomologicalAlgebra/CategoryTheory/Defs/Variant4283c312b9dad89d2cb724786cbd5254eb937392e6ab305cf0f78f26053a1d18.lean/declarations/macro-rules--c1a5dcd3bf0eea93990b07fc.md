# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beb99f80d4b93537ac7aa9cedc20ac3859b9ca396e17883bd85acf715c48e596",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--c1a5dcd3bf0eea93990b07fc",
  "source": {
    "blob": "273be70d9aa496c4018c50848720695adabf113a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1a5dcd3bf0eea93990b07fc444ebd4793ba38ecb5180070036039ec6a1bca8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beb99f80d4b93537ac7aa9cedc20ac3859b9ca396e17883bd85acf715c48e596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped macro_rules
  | `(⦋$m:term⦌$n:subscript) =>
    `((⟨SimplexCategory.mk $m, by first | trunc |
      fail "Failed to prove truncation property. Try writing `⦋m, by ...⦌ₙ`."⟩ :
      SimplexCategory.Truncated $n))
  | `(⦋$m:term, $p:term⦌$n:subscript) =>
    `((⟨SimplexCategory.mk $m, $p⟩ : SimplexCategory.Truncated $n))

/-- Make a morphism in `Truncated n` from a morphism in `SimplexCategory`. This
is equivalent to `@id (⦋a⦌ₙ ⟶ ⦋b⦌ₙ) f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant4283c312b9dad89d2cb724786cbd5254eb937392e6ab305cf0f78f26053a1d18.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `273be70d9aa496c4018c50848720695adabf113a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
