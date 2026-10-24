# CompactlyGeneratedSpace.isOpen'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32039f2cc8000d4d6a2ac875271bedbdfbe3019d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c319a1f-fb5c-2f4c-f25d-b3854b71c7c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfa0dda4-36a5-9b96-adcf-1c67fcc39134",
  "kind": "theorem",
  "lexical_name": "CompactlyGeneratedSpace.isOpen'",
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
  "slug": "compactlygeneratedspace-isopen--84ab2323d8a9892a27186d68",
  "source": {
    "blob": "32039f2cc8000d4d6a2ac875271bedbdfbe3019d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ab2323d8a9892a27186d682eea558840914518bb980f8513d3f504e9be1b08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa0dda4-36a5-9b96-adcf-1c67fcc39134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompactlyGeneratedSpace.isOpen' [CompactlyGeneratedSpace X] {s : Set X}
    (hs : ∀ (K : Type u) [TopologicalSpace K], [CompactSpace K] → [T2Space K] →
      ∀ (f : K → X), Continuous f → IsOpen (f ⁻¹' s)) : IsOpen s :=
  UCompactlyGeneratedSpace.isOpen fun S ⟨f, hf⟩ ↦ hs S f hf

/-- In a compactly generated space `X`, a set `s` is open when `s ∩ K` is
closed for every open set `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant941a2f0b12eb143ee8e26641eccd4737e321f85b735c008305a15cfbf230d3d1.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32039f2cc8000d4d6a2ac875271bedbdfbe3019d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
