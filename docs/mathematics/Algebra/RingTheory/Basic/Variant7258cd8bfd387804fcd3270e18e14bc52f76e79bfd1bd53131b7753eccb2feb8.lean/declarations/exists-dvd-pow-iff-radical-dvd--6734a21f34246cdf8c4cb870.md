# exists_dvd_pow_iff_radical_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9a40d6be7d894fbff62b09327a438ef68d3972a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1dac22f-699c-d1e4-3926-1a5b68496d1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4696e86b-15ab-9e25-9100-c99e386ce6a6",
  "kind": "theorem",
  "lexical_name": "exists_dvd_pow_iff_radical_dvd",
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
  "slug": "exists-dvd-pow-iff-radical-dvd--6734a21f34246cdf8c4cb870",
  "source": {
    "blob": "e9a40d6be7d894fbff62b09327a438ef68d3972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 301,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6734a21f34246cdf8c4cb8700935d665dc4c7b2f0cb077a9dd49655c64ea279e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4696e86b-15ab-9e25-9100-c99e386ce6a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dvd_pow_iff_radical_dvd (ha : a ≠ 0) : (∃ n, a ∣ b ^ n) ↔ radical a ∣ b := by
  rcases eq_or_ne b 0 with (rfl | hb)
  · exact ⟨by simp, fun _ ↦ ⟨1, by simp⟩⟩
  refine ⟨fun ⟨n, hdvd⟩ ↦ ?_, fun h ↦ ⟨normalizedFactors a |>.card, ?_⟩⟩
  · rcases eq_or_ne n 0 with (rfl | hn)
    · simp [radical_of_isUnit <| isUnit_of_dvd_one <| pow_zero b ▸ hdvd]
    grw [radical_dvd_radical hdvd <| pow_ne_zero _ hb, radical_pow b hn, radical_dvd_self]
  · classical
    rwa [dvd_iff_normalizedFactors_le_normalizedFactors ha <| pow_ne_zero _ hb,
      normalizedFactors_pow, Multiset.le_card_smul_iff_subset, ← Multiset.toFinset_subset,
      toFinset_normalizedFactors, toFinset_normalizedFactors,
      ← radical_dvd_iff_primeFactors_subset hb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant7258cd8bfd387804fcd3270e18e14bc52f76e79bfd1bd53131b7753eccb2feb8.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9a40d6be7d894fbff62b09327a438ef68d3972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
