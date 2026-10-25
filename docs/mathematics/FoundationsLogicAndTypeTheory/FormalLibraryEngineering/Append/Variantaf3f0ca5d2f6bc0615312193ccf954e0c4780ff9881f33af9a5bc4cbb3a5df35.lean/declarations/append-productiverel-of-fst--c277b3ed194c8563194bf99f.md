# Append.productiveRel_of_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5e5ac3-5c7f-a771-4b02-7e810c7aa1e9",
  "kind": "theorem",
  "lexical_name": "Append.productiveRel_of_fst",
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
  "slug": "append-productiverel-of-fst--c277b3ed194c8563194bf99f",
  "source": {
    "blob": "43bbd837dc9952333d537dc4e237a611f2b61778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c277b3ed194c8563194bf99f9e03fefb21a3169407ae2c95c1d2a0c631d14a39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5e5ac3-5c7f-a771-4b02-7e810c7aa1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Append.productiveRel_of_fst [Monad m] [Iterator α₁ m β] [Iterator α₂ m β]
    [Productive α₁ m] [Productive α₂ m] {it₁ it₁' : IterM (α := α₁) m β}
    {it₂ : IterM (α := α₂) m β}
    (h : it₁'.finitelyManySkips.Rel it₁.finitelyManySkips) :
    Append.ProductiveRel α₁ α₂ m β (it₁'.append it₂) (it₁.append it₂) := by
  exact Prod.Lex.left _ _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantaf3f0ca5d2f6bc0615312193ccf954e0c4780ff9881f33af9a5bc4cbb3a5df35.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bbd837dc9952333d537dc4e237a611f2b61778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
