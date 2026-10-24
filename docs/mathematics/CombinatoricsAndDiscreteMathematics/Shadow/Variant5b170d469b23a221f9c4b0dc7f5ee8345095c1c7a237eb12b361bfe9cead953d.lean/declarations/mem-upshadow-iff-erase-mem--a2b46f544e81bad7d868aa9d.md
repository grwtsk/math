# mem_upShadow_iff_erase_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80de82f4-759d-4492-8f2e-eede55750b56",
  "kind": "theorem",
  "lexical_name": "mem_upShadow_iff_erase_mem",
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
  "slug": "mem-upshadow-iff-erase-mem--a2b46f544e81bad7d868aa9d",
  "source": {
    "blob": "f364e12f95e6a7105a9c49ecd761f72dda12494b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2b46f544e81bad7d868aa9dff7a7bcd1e0942207b0d2cee6968e28e1b62622f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80de82f4-759d-4492-8f2e-eede55750b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_upShadow_iff_erase_mem : s ∈ ∂⁺ 𝒜 ↔ ∃ a ∈ s, s.erase a ∈ 𝒜 := by
  refine' mem_upShadow_iff.trans ⟨_, _⟩
  · rintro ⟨s, hs, a, ha, rfl⟩
    refine' ⟨a, mem_insert_self a s, _⟩
    rwa [erase_insert ha]
  · rintro ⟨a, ha, hs⟩
    exact ⟨s.erase a, hs, a, not_mem_erase _ _, insert_erase ha⟩
#align finset.mem_up_shadow_iff_erase_mem Finset.mem_upShadow_iff_erase_mem

/-- `s ∈ ∂⁺ 𝒜` iff `s` is exactly one element less than something from `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5b170d469b23a221f9c4b0dc7f5ee8345095c1c7a237eb12b361bfe9cead953d.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f364e12f95e6a7105a9c49ecd761f72dda12494b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
