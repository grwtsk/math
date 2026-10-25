# Finite.encard_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4ae045e-501b-2e8b-9c07-bb92bd09f26d",
  "kind": "lemma",
  "lexical_name": "Finite.encard_biUnion",
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
  "slug": "finite-encard-biunion--b8651a3ac62e830ae3685603",
  "source": {
    "blob": "1f1849f4abae0c8e4621710462476dcf0eafc48d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8651a3ac62e830ae36856033515a95cccefa04c664c974afd8c30ff24ade882",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ae045e-501b-2e8b-9c07-bb92bd09f26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finite.encard_biUnion {t : Set ι} (ht : t.Finite) {s : ι → Set α}
    (hs : t.PairwiseDisjoint s) : (⋃ i ∈ t, s i).encard = ∑ᶠ i ∈ t, (s i).encard := by
  by_cases! h : ∀ i ∈ t, (s i).Finite
  · have : (⋃ i ∈ t, s i).Finite := ht.biUnion (fun i hi ↦ h i hi)
    rw [← this.cast_ncard_eq, ncard_biUnion ht h hs,
      ← finsum_mem_congr rfl fun i hi ↦ (h i hi).cast_ncard_eq, Nat.cast_finsum_mem ht]
  · obtain ⟨i, hi, (hn : (s i).Infinite)⟩ := h
    rw [← Set.insert_sdiff_self_of_mem hi,
      finsum_mem_insert _ (notMem_sdiff_of_mem <| mem_singleton i) ht.sdiff]
    simp [hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1849f4abae0c8e4621710462476dcf0eafc48d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
