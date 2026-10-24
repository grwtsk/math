# isQuotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8958de7bf95ae121a51622e922c2ac1216728348",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d12da758-70e4-6f00-065d-393ce9492e86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80bc6eb8-c5a7-a92f-56a1-ee6fa7c22ee3",
  "kind": "theorem",
  "lexical_name": "isQuotientMap",
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
  "slug": "isquotientmap--a961f48d79e05a4a644c5259",
  "source": {
    "blob": "8958de7bf95ae121a51622e922c2ac1216728348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a961f48d79e05a4a644c52590bbb2d438a42ae9af5af945f91759b1812ba97f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80bc6eb8-c5a7-a92f-56a1-ee6fa7c22ee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isQuotientMap (h : IsOpenQuotientMap f) : IsQuotientMap f :=
  h.isOpenMap.isQuotientMap h.continuous h.surjective

@[deprecated (since := "2024-10-22")]
alias quotientMap := isQuotientMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8958de7bf95ae121a51622e922c2ac1216728348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
