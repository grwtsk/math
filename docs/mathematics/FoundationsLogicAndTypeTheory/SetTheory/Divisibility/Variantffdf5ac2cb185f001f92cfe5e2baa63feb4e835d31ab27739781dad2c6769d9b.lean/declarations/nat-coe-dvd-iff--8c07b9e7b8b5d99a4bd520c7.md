# nat_coe_dvd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9979cc3-ae63-5ea6-76e7-3708da21c200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a88ad04f-c628-9637-7b13-1ceceedf9d5a",
  "kind": "theorem",
  "lexical_name": "nat_coe_dvd_iff",
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
  "slug": "nat-coe-dvd-iff--8c07b9e7b8b5d99a4bd520c7",
  "source": {
    "blob": "0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c07b9e7b8b5d99a4bd520c7ce4f07d084770bb9f3c5db27a680ec16514cb116",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a88ad04f-c628-9637-7b13-1ceceedf9d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_coe_dvd_iff : (n : Cardinal) ∣ m ↔ n ∣ m := by
  refine' ⟨_, fun ⟨h, ht⟩ => ⟨h, by exact_mod_cast ht⟩⟩
  rintro ⟨k, hk⟩
  have : ↑m < ℵ₀ := nat_lt_aleph0 m
  rw [hk, mul_lt_aleph0_iff] at this
  rcases this with (h | h | ⟨-, hk'⟩)
  iterate 2 simp only [h, mul_zero, zero_mul, Nat.cast_eq_zero] at hk; simp [hk]
  lift k to ℕ using hk'
  exact ⟨k, by exact_mod_cast hk⟩
#align cardinal.nat_coe_dvd_iff Cardinal.nat_coe_dvd_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
