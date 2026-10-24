# Localization.r_iff_of_le_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c75d890-579e-d0bf-b768-dccc4617dce2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27fdfee5-823c-e7fc-889e-f3799b25f9f5",
  "kind": "theorem",
  "lexical_name": "Localization.r_iff_of_le_nonZeroDivisors",
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
  "slug": "localization-r-iff-of-le-nonzerodivisors--7cc91aa565ad75272dd77155",
  "source": {
    "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 656,
    "path": "GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc91aa565ad75272dd77155b57177bd5e70090bda7c15229e9f6c054f26383a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27fdfee5-823c-e7fc-889e-f3799b25f9f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Localization.r_iff_of_le_nonZeroDivisors (hM : M ≤ nonZeroDivisors R) (a c : R) (b d : M) :
    Localization.r _ (a, b) (c, d) ↔ a * d = b * c := by
  simp only [Localization.r_eq_r', Localization.r', Subtype.exists, exists_prop, Con.rel_mk]
  refine ⟨fun ⟨u, hu, h⟩ ↦ ?_,
    fun h ↦ ⟨1, Submonoid.one_mem M, by simpa only [one_mul, mul_comm a] using h⟩⟩
  have hu' : u ∈ nonZeroDivisors R := hM hu
  simp only [mem_nonZeroDivisors_iff, mul_comm, and_self] at hu'
  rw [← sub_eq_zero]
  apply hu'
  rwa [mul_sub, sub_eq_zero, mul_comm a]

end CommRing

section Algebra

-- This is not tagged with `@[ext]` because `A` and `W` cannot be inferred.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8767d1701d07bd76ecfeb5459c51d21566a06b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
