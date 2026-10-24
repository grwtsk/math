# IsIso.of_mono_retraction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eda9f5ce-6b56-544f-e0c8-3d7acc2ad560",
  "kind": "theorem",
  "lexical_name": "IsIso.of_mono_retraction'",
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
  "slug": "isiso-of-mono-retraction--1aa3bd22550d4faa81779d52",
  "source": {
    "blob": "08ef1c9bd028d729607ae02aeb05a6e99d310aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa3bd22550d4faa81779d523161645a6eae19f029d3eb9c11e8c0342ba0713c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda9f5ce-6b56-544f-e0c8-3d7acc2ad560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIso.of_mono_retraction' {X Y : C} {f : X ⟶ Y} (hf : SplitMono f) [Mono <| hf.retraction] :
    IsIso f :=
  ⟨⟨hf.retraction, ⟨by simp, (cancel_mono_id <| hf.retraction).mp (by simp)⟩⟩⟩

/-- Every split mono whose retraction is mono is an iso. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant45c548e8c37f7b90f12c0e671e26b19de307bb16ba0fb51ef71f0a9e055008f6.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08ef1c9bd028d729607ae02aeb05a6e99d310aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
