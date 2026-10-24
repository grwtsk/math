# compression_idem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81665587-0012-f7f8-c3ce-8ac4a2967ad4",
  "kind": "theorem",
  "lexical_name": "compression_idem",
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
  "slug": "compression-idem--2aa737801d94f1089ecb41dc",
  "source": {
    "blob": "9e5c161ed6a5d5cd4f75f303c9df4715c577a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa737801d94f1089ecb41dc04a2f3073ccc81bc19e69e365963dfcf61f5046b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81665587-0012-f7f8-c3ce-8ac4a2967ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compression_idem (a : α) (𝒜 : Finset (Finset α)) : 𝓓 a (𝓓 a 𝒜) = 𝓓 a 𝒜 := by
  ext s
  refine mem_compression.trans ⟨?_, fun h => Or.inl ⟨h, erase_mem_compression_of_mem_compression h⟩⟩
  rintro (h | h)
  · exact h.1
  · cases h.1 (mem_compression_of_insert_mem_compression h.2)

/-- Down-compressing a family doesn't change its size. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e5c161ed6a5d5cd4f75f303c9df4715c577a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
