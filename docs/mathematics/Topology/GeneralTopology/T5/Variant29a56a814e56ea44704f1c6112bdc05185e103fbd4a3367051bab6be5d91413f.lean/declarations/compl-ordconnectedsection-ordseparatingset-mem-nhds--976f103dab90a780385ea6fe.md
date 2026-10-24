# compl_ordConnectedSection_ordSeparatingSet_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52589ccb-9c9a-12e9-0754-fd2132990d28",
  "kind": "theorem",
  "lexical_name": "compl_ordConnectedSection_ordSeparatingSet_mem_nhds",
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
  "slug": "compl-ordconnectedsection-ordseparatingset-mem-nhds--976f103dab90a780385ea6fe",
  "source": {
    "blob": "1db091bdbee0477b1d9a3cb455d7495f70a0aefc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/T5/Variant29a56a814e56ea44704f1c6112bdc05185e103fbd4a3367051bab6be5d91413f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:976f103dab90a780385ea6fecac3108f62b06c313cd916a704a34f0244cad194",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/T5/Variant29a56a814e56ea44704f1c6112bdc05185e103fbd4a3367051bab6be5d91413f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52589ccb-9c9a-12e9-0754-fd2132990d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl_ordConnectedSection_ordSeparatingSet_mem_nhds (hd : Disjoint s (closure t))
    (ha : a ∈ s) : (ordConnectedSection <| ordSeparatingSet s t)ᶜ ∈ 𝓝 a := by
  rw [← nhdsLE_sup_nhdsGE, mem_sup]
  exact ⟨compl_ordConnectedSection_ordSeparatingSet_mem_nhdsLE hd ha,
    compl_ordConnectedSection_ordSeparatingSet_mem_nhdsGE hd ha⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/T5/Variant29a56a814e56ea44704f1c6112bdc05185e103fbd4a3367051bab6be5d91413f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/T5/Variant29a56a814e56ea44704f1c6112bdc05185e103fbd4a3367051bab6be5d91413f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db091bdbee0477b1d9a3cb455d7495f70a0aefc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
