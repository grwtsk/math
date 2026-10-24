# isTopologicalBasis_basic_opens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad08528038d2e903d3398363c01a78edbe04382c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f484006d-af03-b29a-90cc-c20f39cdc4b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ed8685-3dcb-3ab5-9a6a-1db75f2e4136",
  "kind": "theorem",
  "lexical_name": "isTopologicalBasis_basic_opens",
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
  "slug": "istopologicalbasis-basic-opens--8ca22d6b555f05f89172ecd6",
  "source": {
    "blob": "ad08528038d2e903d3398363c01a78edbe04382c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca22d6b555f05f89172ecd6e0d9de2d597917665ee75b6dc5268a7e646d82fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ed8685-3dcb-3ab5-9a6a-1db75f2e4136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicalBasis_basic_opens :
    TopologicalSpace.IsTopologicalBasis
      (Set.range fun r : A => (basicOpen 𝒜 r : Set (ProjectiveSpectrum 𝒜))) := by
  apply TopologicalSpace.isTopologicalBasis_of_isOpen_of_nhds
  · rintro _ ⟨r, rfl⟩
    exact isOpen_basicOpen 𝒜
  · rintro p U hp ⟨s, hs⟩
    rw [← compl_compl U, Set.mem_compl_iff, ← hs, mem_zeroLocus, Set.not_subset] at hp
    obtain ⟨f, hfs, hfp⟩ := hp
    refine ⟨basicOpen 𝒜 f, ⟨f, rfl⟩, hfp, ?_⟩
    rw [← Set.compl_subset_compl, ← hs, basicOpen_eq_zeroLocus_compl, compl_compl]
    exact zeroLocus_anti_mono 𝒜 (Set.singleton_subset_iff.mpr hfs)

end BasicOpen

section Order

/-!
## The specialization order

We endow `ProjectiveSpectrum 𝒜` with a partial order,
where `x ≤ y` if and only if `y ∈ closure {x}`.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf94dd875d16851749163618617ebc0ee519d1ac76fad1b5048fdc0c2e9e04e4e.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad08528038d2e903d3398363c01a78edbe04382c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
