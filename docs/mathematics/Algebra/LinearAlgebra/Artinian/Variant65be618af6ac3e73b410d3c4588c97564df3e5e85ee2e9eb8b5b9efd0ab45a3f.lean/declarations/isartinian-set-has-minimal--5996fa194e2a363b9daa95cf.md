# IsArtinian.set_has_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1baa57c-b39f-6052-e4cd-b3a8206ce0e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f7d1280-6411-a1ea-ce55-b8bbf197b0ba",
  "kind": "theorem",
  "lexical_name": "IsArtinian.set_has_minimal",
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
  "slug": "isartinian-set-has-minimal--5996fa194e2a363b9daa95cf",
  "source": {
    "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5996fa194e2a363b9daa95cf2de55cc7da95581e4be1c62d2db179eba869b4f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7d1280-6411-a1ea-ce55-b8bbf197b0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsArtinian.set_has_minimal [IsArtinian R M] (a : Set <| Submodule R M) (ha : a.Nonempty) :
    ∃ M' ∈ a, ∀ I ∈ a, ¬I < M' :=
  set_has_minimal_iff_artinian.mpr ‹_› a ha
#align is_artinian.set_has_minimal IsArtinian.set_has_minimal

/-- A module is Artinian iff every decreasing chain of submodules stabilizes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e724beaa9986d7122091e6906db8b3c3be9a6233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
