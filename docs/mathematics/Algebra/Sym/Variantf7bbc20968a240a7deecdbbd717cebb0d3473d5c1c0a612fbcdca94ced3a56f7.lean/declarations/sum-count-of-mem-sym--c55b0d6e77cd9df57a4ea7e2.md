# sum_count_of_mem_sym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3d66eed-c0c5-e8d2-2a88-7579b22f7ed0",
  "kind": "theorem",
  "lexical_name": "sum_count_of_mem_sym",
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
  "slug": "sum-count-of-mem-sym--c55b0d6e77cd9df57a4ea7e2",
  "source": {
    "blob": "fc67ff12da8b68decf09ed87ae44cb30ae9ff0e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c55b0d6e77cd9df57a4ea7e2c4719f325c279fa67205a068f329f863a51be177",
  "verification": {
    "reference": "docs/verification/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3d66eed-c0c5-e8d2-2a88-7579b22f7ed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_count_of_mem_sym {α} [DecidableEq α] {m : ℕ} {k : Sym α m} {s : Finset α}
    (hk : k ∈ s.sym m) : (∑ i ∈ s, count i k) = m := by
  simp_rw [← k.prop, ← toFinset_sum_count_eq, eq_comm]
  refine sum_subset_zero_on_sdiff (fun _ _ ↦ ?_) ?_ (fun _ _ ↦ rfl)
  all_goals aesop

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Sym/Variantf7bbc20968a240a7deecdbbd717cebb0d3473d5c1c0a612fbcdca94ced3a56f7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc67ff12da8b68decf09ed87ae44cb30ae9ff0e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
