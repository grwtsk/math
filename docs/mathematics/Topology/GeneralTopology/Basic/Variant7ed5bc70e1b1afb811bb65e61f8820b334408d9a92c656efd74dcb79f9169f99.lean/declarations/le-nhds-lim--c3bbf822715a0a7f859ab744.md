# le_nhds_lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bce207603a63573751103b7cf27c0c15aab1686a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eef983a5-bfa0-33d5-f0b8-f46a1d1bf7e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a48165b-e94d-ea3b-596b-9d7bdab6c9f3",
  "kind": "theorem",
  "lexical_name": "le_nhds_lim",
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
  "slug": "le-nhds-lim--c3bbf822715a0a7f859ab744",
  "source": {
    "blob": "bce207603a63573751103b7cf27c0c15aab1686a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3bbf822715a0a7f859ab74406d909bee4e20ec267d4530b4533d16c12b49e67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a48165b-e94d-ea3b-596b-9d7bdab6c9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_nhds_lim {f : Filter X} (h : ∃ x, f ≤ 𝓝 x) : f ≤ 𝓝 (@lim _ _ h.nonempty f) :=
  Classical.epsilon_spec h

/-- If `g` tends to some `𝓝 x` along `f`, then it tends to `𝓝 (Filter.limUnder f g)`. We formulate
this lemma with a `[Nonempty X]` argument of `lim` derived from `h` to make it useful for types
without a `[Nonempty X]` instance. Because of the built-in proof irrelevance, Lean will unify this
instance with any other instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce207603a63573751103b7cf27c0c15aab1686a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
