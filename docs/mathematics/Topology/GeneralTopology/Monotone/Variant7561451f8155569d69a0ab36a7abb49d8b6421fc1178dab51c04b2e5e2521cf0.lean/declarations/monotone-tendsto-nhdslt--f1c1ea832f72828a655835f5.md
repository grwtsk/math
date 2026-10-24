# Monotone.tendsto_nhdsLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e7af174-a864-4ffb-aac4-5c2c105ab0dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd218549-9a53-a84e-2de2-9f147bdbfe63",
  "kind": "theorem",
  "lexical_name": "Monotone.tendsto_nhdsLT",
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
  "slug": "monotone-tendsto-nhdslt--f1c1ea832f72828a655835f5",
  "source": {
    "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 312,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1c1ea832f72828a655835f57b5ddda02184029208bc081fabaf97b1360de5d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd218549-9a53-a84e-2de2-9f147bdbfe63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.tendsto_nhdsLT {α β : Type*} [LinearOrder α] [TopologicalSpace α] [OrderTopology α]
    [ConditionallyCompleteLinearOrder β] [TopologicalSpace β] [OrderTopology β] {f : α → β}
    (Mf : Monotone f) (x : α) : Tendsto f (𝓝[<] x) (𝓝 (sSup (f '' Iio x))) :=
  MonotoneOn.tendsto_nhdsLT (Mf.monotoneOn _) (Mf.map_bddAbove bddAbove_Iio)

@[deprecated (since := "2024-12-22")]
alias Monotone.tendsto_nhdsWithin_Iio := Monotone.tendsto_nhdsLT

/-- A monotone map has a limit to the right of any point `x`, equal to `sInf (f '' (Ioi x))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
