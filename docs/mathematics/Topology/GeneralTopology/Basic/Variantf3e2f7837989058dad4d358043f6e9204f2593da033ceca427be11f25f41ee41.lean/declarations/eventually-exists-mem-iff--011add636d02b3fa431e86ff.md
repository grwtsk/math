# eventually_exists_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a00cc5e3-7084-efce-7ba3-568d818abb5d",
  "kind": "lemma",
  "lexical_name": "eventually_exists_mem_iff",
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
  "slug": "eventually-exists-mem-iff--011add636d02b3fa431e86ff",
  "source": {
    "blob": "1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011add636d02b3fa431e86ff8392ad4aceeffa67f576d45241e79f80e1e277bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a00cc5e3-7084-efce-7ba3-568d818abb5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_exists_mem_iff {is : Set β} {P : β → α → Prop} (his : is.Finite) :
    (∀ᶠ i in f, ∃ a ∈ is, P a i) ↔ ∃ a ∈ is, ∀ᶠ i in f, P a i := by
  simp only [Filter.Eventually, Ultrafilter.mem_coe]
  convert f.finite_biUnion_mem_iff his (s := P) with i
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
