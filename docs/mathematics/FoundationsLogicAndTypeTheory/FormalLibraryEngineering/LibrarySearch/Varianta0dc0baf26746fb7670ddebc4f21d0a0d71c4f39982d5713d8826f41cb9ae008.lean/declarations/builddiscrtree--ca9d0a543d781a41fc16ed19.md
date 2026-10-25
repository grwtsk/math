# buildDiscrTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38d35c077148d53ae08ef1cd340aa50c35244a67bc7d29c557987a0e5b34cbeb",
  "kind": "def",
  "lexical_name": "buildDiscrTree",
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
  "slug": "builddiscrtree--ca9d0a543d781a41fc16ed19",
  "source": {
    "blob": "5a9431afaa4b9078a4923ccc5c56da4cafd5b333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca9d0a543d781a41fc16ed191c5c1a6fefb8bae32337983b60f50433ae95542d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38d35c077148d53ae08ef1cd340aa50c35244a67bc7d29c557987a0e5b34cbeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildDiscrTree : IO (DiscrTreeCache (Name × DeclMod)) :=
  DiscrTreeCache.mk "apply?: init cache" processLemma
    -- Sort so lemmas with longest names come first.
    -- This is counter-intuitive, but the way that `DiscrTree.getMatch` returns results
    -- means that the results come in "batches", with more specific matches *later*.
    -- Thus we're going to call reverse on the result of `DiscrTree.getMatch`,
    -- so if we want to try lemmas with shorter names first,
    -- we need to put them into the `DiscrTree` backwards.
    (post? := some fun A =>
      A.map (fun (n, m) => (n.toString.length, n, m)) |>.qsort (fun p q => p.1 > q.1) |>.map (·.2))

open System (FilePath)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a9431afaa4b9078a4923ccc5c56da4cafd5b333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
