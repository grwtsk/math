# map_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34341cb2-d5c3-2176-3bd7-ec8f4a70971f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21fa1442-48eb-05a0-02cb-cf450bbc6047",
  "kind": "theorem",
  "lexical_name": "map_eq_zero",
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
  "slug": "map-eq-zero--7cf248e6e4f5867356b8fc20",
  "source": {
    "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 566,
    "path": "GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf248e6e4f5867356b8fc20bcf7a6f65e4f4f35f4525286d252323f5a0185a2",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21fa1442-48eb-05a0-02cb-cf450bbc6047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_eq_zero {f : PreTilt O p} : val K v O hv p f = 0 ↔ f = 0 := by
  by_cases hf0 : f = 0
  · rw [hf0]; exact iff_of_true (Valuation.map_zero _) rfl
  obtain ⟨n, hn⟩ : ∃ n, coeff _ _ n f ≠ 0 := not_forall.1 fun h => hf0 <| Perfection.ext h
  show valAux K v O p f = 0 ↔ f = 0; refine iff_of_false (fun hvf => hn ?_) hf0
  rw [valAux_eq hv hn] at hvf; replace hvf := pow_eq_zero hvf; rwa [ModP.preVal_eq_zero hv] at hvf

end Classical

include hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `557787c8f32425dd40b7442d9826510c08600c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
