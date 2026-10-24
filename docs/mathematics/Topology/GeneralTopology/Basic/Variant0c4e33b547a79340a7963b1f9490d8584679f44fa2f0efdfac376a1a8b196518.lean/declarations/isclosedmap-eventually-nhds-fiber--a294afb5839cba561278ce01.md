# IsClosedMap.eventually_nhds_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "363703f1c317ab357689082bc3ba98132f3f1cfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 660,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68756bd1-c4c1-91c3-759e-54d852e0bd8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e2161e1-7b82-2562-979c-b3ee68f51b65",
  "kind": "theorem",
  "lexical_name": "IsClosedMap.eventually_nhds_fiber",
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
  "slug": "isclosedmap-eventually-nhds-fiber--a294afb5839cba561278ce01",
  "source": {
    "blob": "363703f1c317ab357689082bc3ba98132f3f1cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 660,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a294afb5839cba561278ce01e9e8e201c3874cf2b86b94fa6940bafda79526d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e2161e1-7b82-2562-979c-b3ee68f51b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosedMap.eventually_nhds_fiber (hf : IsClosedMap f) {p : X → Prop} (y₀ : Y)
    (H : ∀ x₀ ∈ f ⁻¹' {y₀}, ∀ᶠ x in 𝓝 x₀, p x) :
    ∀ᶠ y in 𝓝 y₀, ∀ x ∈ f ⁻¹' {y}, p x := by
  rw [← eventually_nhdsSet_iff_forall] at H
  replace H := H.filter_mono hf.comap_nhds_le
  rwa [eventually_comap] at H

/-- Assume `f` is a closed map. If there are points `y` arbitrarily close to `y₀` such that `p`
holds for at least some `x ∈ f ⁻¹' {y}`, then one can find `x₀ ∈ f ⁻¹' {y₀}` such that there
are points `x` arbitrarily close to `x₀` which satisfy `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363703f1c317ab357689082bc3ba98132f3f1cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
