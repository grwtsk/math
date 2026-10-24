# erase_mem_compression_of_mem_compression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa89f8e9-a5b0-f79f-b9ba-ac39184d3644",
  "kind": "theorem",
  "lexical_name": "erase_mem_compression_of_mem_compression",
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
  "slug": "erase-mem-compression-of-mem-compression--05b74d550d49e31a5dcffa14",
  "source": {
    "blob": "3fb917ec1cb0575bd6b693f37e279c3270ac072f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b74d550d49e31a5dcffa14b53773f5a6ab65a5182bace39d30dc4a5f5b7ccc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa89f8e9-a5b0-f79f-b9ba-ac39184d3644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_mem_compression_of_mem_compression : s ∈ 𝓓 a 𝒜 → s.erase a ∈ 𝓓 a 𝒜 := by
  simp_rw [mem_compression, erase_idem]
  refine' Or.imp (fun h => ⟨h.2, h.2⟩) fun h => _
  rwa [erase_eq_of_not_mem (insert_ne_self.1 <| ne_of_mem_of_not_mem h.2 h.1)]
#align down.erase_mem_compression_of_mem_compression Down.erase_mem_compression_of_mem_compression

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variant28e2307af73238136a7be409f74cc6e531d16cf4c341b18cab740554ab15698c.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb917ec1cb0575bd6b693f37e279c3270ac072f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
