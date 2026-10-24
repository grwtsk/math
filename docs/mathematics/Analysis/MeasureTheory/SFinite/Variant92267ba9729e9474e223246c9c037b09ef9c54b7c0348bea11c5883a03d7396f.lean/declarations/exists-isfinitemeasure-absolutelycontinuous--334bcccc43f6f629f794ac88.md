# exists_isFiniteMeasure_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9aff6da0a146029080804678d1230413d44bca3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f394f0cc-3e91-311f-48cd-ab5977d7f6e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d2c1ee5-df16-3c21-f1d9-9326e2f6819b",
  "kind": "theorem",
  "lexical_name": "exists_isFiniteMeasure_absolutelyContinuous",
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
  "slug": "exists-isfinitemeasure-absolutelycontinuous--334bcccc43f6f629f794ac88",
  "source": {
    "blob": "9aff6da0a146029080804678d1230413d44bca3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:334bcccc43f6f629f794ac88a28a5d94e2119a86b3977d5fe109add50e0cf206",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d2c1ee5-df16-3c21-f1d9-9326e2f6819b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isFiniteMeasure_absolutelyContinuous [SFinite μ] :
    ∃ ν : Measure α, IsFiniteMeasure ν ∧ μ ≪ ν ∧ ν ≪ μ := by
  rcases ENNReal.exists_pos_tsum_mul_lt_of_countable top_ne_zero (sfiniteSeq μ · univ)
    fun _ ↦ measure_ne_top _ _ with ⟨c, hc₀, hc⟩
  have {s : Set α} : sum (fun n ↦ c n • sfiniteSeq μ n) s = 0 ↔ μ s = 0 := by
    conv_rhs => rw [← sum_sfiniteSeq μ, sum_apply_of_countable]
    simp [(hc₀ _).ne']
  refine ⟨.sum fun n ↦ c n • sfiniteSeq μ n, ⟨?_⟩, fun _ ↦ this.1, fun _ ↦ this.2⟩
  simpa [mul_comm] using hc

end SFinite

/-- A measure `μ` is called σ-finite if there is a countable collection of sets
`{ A i | i ∈ ℕ }` such that `μ (A i) < ∞` and `⋃ i, A i = s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aff6da0a146029080804678d1230413d44bca3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
