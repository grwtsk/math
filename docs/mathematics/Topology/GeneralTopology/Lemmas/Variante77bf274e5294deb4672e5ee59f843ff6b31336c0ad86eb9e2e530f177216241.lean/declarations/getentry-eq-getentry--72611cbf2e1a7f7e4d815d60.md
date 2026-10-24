# getEntryₘ_eq_getEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10d10d23-381e-aa72-655e-bf460b9ddfbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0eaf002-e200-e6e0-4156-a2c40f4413aa",
  "kind": "theorem",
  "lexical_name": "getEntryₘ_eq_getEntry",
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
  "slug": "getentry-eq-getentry--72611cbf2e1a7f7e4d815d60",
  "source": {
    "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 758,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72611cbf2e1a7f7e4d815d604204d6dd805a42c751997dc7045e4e3e849690f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0eaf002-e200-e6e0-4156-a2c40f4413aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getEntryₘ_eq_getEntry [Ord α] [TransOrd α] [BEq α] [LawfulBEqOrd α] {k : α} {t : Impl α β} (h)
    {h'} (hto : t.Ordered) : t.getEntryₘ k h' = List.getEntry k t.toListModel h := by
  simp only [getEntryₘ]
  revert h'
  rw [getEntry?ₘ_eq_getEntry? hto]
  simp [getEntry?_eq_some_getEntry ‹_›]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc6135c55a9da254fb5401996378c149a5caf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
