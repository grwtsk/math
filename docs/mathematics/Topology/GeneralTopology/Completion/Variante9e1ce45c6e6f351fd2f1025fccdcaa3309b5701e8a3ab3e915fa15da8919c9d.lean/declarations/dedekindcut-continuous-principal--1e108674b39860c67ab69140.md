# DedekindCut.continuous_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feea0d1b33e762e590409a1610bdb5d5cfd7cd49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f89287cc-2cbe-962a-e693-c87f82a1c89d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63532e31-b6c7-14a0-f352-e2116bfb0147",
  "kind": "theorem",
  "lexical_name": "DedekindCut.continuous_principal",
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
  "slug": "dedekindcut-continuous-principal--1e108674b39860c67ab69140",
  "source": {
    "blob": "feea0d1b33e762e590409a1610bdb5d5cfd7cd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Completion/Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e108674b39860c67ab691404e277f676c3a14f3adaffcbfba378373c6889322",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completion/Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63532e31-b6c7-14a0-f352-e2116bfb0147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DedekindCut.continuous_principal [TopologicalSpace α] [OrderTopology α]
    [TopologicalSpace (DedekindCut α)] [OrderTopology (DedekindCut α)] :
    Continuous (fun a : α ↦ principal a) := by
  rw [OrderTopology.continuous_iff]
  refine fun c ↦ ⟨?_, ?_⟩
  · have : IsOpen (⋃ a ∈ c.right, Ioi a) := isOpen_biUnion fun _ _ ↦ isOpen_Ioi
    convert this
    ext
    simp [lt_principal_iff]
  · have : IsOpen (⋃ a ∈ c.left, Iio a) := isOpen_biUnion fun _ _ ↦ isOpen_Iio
    convert this
    ext
    simp [principal_lt_iff]

namespace Order

/-- A dense linear order into which α embeds continuously, formed by "filling in" the blanks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completion/Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completion/Variante9e1ce45c6e6f351fd2f1025fccdcaa3309b5701e8a3ab3e915fa15da8919c9d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feea0d1b33e762e590409a1610bdb5d5cfd7cd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
