# mem_range_mapToFractionRing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e8d470a564999a7aa6b30e51a82c64ac40372ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98b1829e-b43c-2136-cfb3-a1b55691350f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ab9f3b-b0e3-cf8f-a4e7-a6c5de0ffeea",
  "kind": "theorem",
  "lexical_name": "mem_range_mapToFractionRing_iff",
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
  "slug": "mem-range-maptofractionring-iff--b4c60d0ed0bf3c5b3eafedb1",
  "source": {
    "blob": "8e8d470a564999a7aa6b30e51a82c64ac40372ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4c60d0ed0bf3c5b3eafedb1812c7b631102956cfad905160c3a8e7affd7d0aa",
  "verification": {
    "reference": "docs/verification/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ab9f3b-b0e3-cf8f-a4e7-a6c5de0ffeea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_range_mapToFractionRing_iff (B : Type*) [CommRing B] [Algebra A B] [IsLocalization S B]
    (hS : S ≤ A⁰) (x : K) :
    x ∈ (mapToFractionRing K S B hS).range ↔
      ∃ (a s : A) (hs : s ∈ S), x = IsLocalization.mk' K a ⟨s, hS hs⟩ :=
  ⟨by
    rintro ⟨x, rfl⟩
    obtain ⟨a, s, rfl⟩ := IsLocalization.mk'_surjective S x
    use a, s, s.2
    apply IsLocalization.lift_mk', by
    rintro ⟨a, s, hs, rfl⟩
    use IsLocalization.mk' _ a ⟨s, hs⟩
    apply IsLocalization.lift_mk'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AsSubring/Variant4596e557bf5a24450eb9617c6d229bfb96c80981b7a4b37a54c91a15b013b1ce.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e8d470a564999a7aa6b30e51a82c64ac40372ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
