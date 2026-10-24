# eventually_countable_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e23749c7d2e55ce5ed83a21b279237a700d20a54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e856f82-07e3-c415-f077-0b18bd47f47a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61493762-42fa-efbc-7e06-31a50902e219",
  "kind": "theorem",
  "lexical_name": "eventually_countable_ball",
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
  "slug": "eventually-countable-ball--ed7ad2648a424092dd835a44",
  "source": {
    "blob": "e23749c7d2e55ce5ed83a21b279237a700d20a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed7ad2648a424092dd835a44724749e35df7693fe476fe351e9da3d36c65508b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61493762-42fa-efbc-7e06-31a50902e219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_countable_ball {ι : Type*} {S : Set ι} (hS : S.Countable)
    {p : α → ∀ i ∈ S, Prop} :
    (∀ᶠ x in l, ∀ i hi, p x i hi) ↔ ∀ i hi, ∀ᶠ x in l, p x i hi := by
  simpa only [Filter.Eventually, ofPred_forall] using
    @countable_bInter_mem _ l _ _ _ hS fun i hi => { x | p x i hi }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23749c7d2e55ce5ed83a21b279237a700d20a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
