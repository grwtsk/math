# largest_pd_blocks_have_failing_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea7dad10-5f82-ca60-4dbc-067e0076e6fc",
  "kind": "theorem",
  "lexical_name": "largest_pd_blocks_have_failing_extension",
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
  "slug": "largest-pd-blocks-have-failing-extension--8049d4a0fe1dae6d696db922",
  "source": {
    "blob": "53d6284b7a18af2d7b6743e7947fae334b0eb993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8049d4a0fe1dae6d696db92278a8dd05eeb7d7594f55b9becaa8e19604ada2cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea7dad10-5f82-ca60-4dbc-067e0076e6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem largest_pd_blocks_have_failing_extension (s : ℕ → ℝ) (d : ℕ)
    (hs0 : Matrix.PosDef (Matrix.of (fun i j : Fin (d+1) => s (i.val+j.val))))
    (hs1 : Matrix.PosDef (Matrix.of (fun i j : Fin (d+1) => s (i.val+j.val+1)))) :
    ∃ t : ℕ → ℝ, (∀ n ≤ 2*d+1, t n = s n) ∧
      (∀ r ≤ d,
        Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val))) ∧
        Matrix.PosDef (Matrix.of (fun i j : Fin (r+1) => t (i.val+j.val+1)))) ∧
      ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d+2) => t (i.val+j.val))) := by
  apply pd_prefix_has_failing_extension s d
  intro r hr
  exact ⟨by simpa only [Nat.add_zero] using smaller_order_posDef s hr 0 hs0,
    smaller_order_posDef s hr 1 hs1⟩

#check other_moments_unchanged
#check complete_prefix_unchanged
#check tower_unchanged
#check both_towers_unchanged
#check next_order_last_basis_value
#check next_order_fails
#check next_order_other_entries_unchanged
#check psd_prefix_has_failing_extension
#check pd_prefix_has_failing_extension
#check smaller_order_posDef
#check largest_pd_blocks_have_failing_extension
#check changeDiagonal
#print axioms other_moments_unchanged
#print axioms complete_prefix_unchanged
#print axioms tower_unchanged
#print axioms both_towers_unchanged
#print axioms next_order_last_basis_value
#print axioms next_order_fails
#print axioms next_order_other_entries_unchanged
#print axioms psd_prefix_has_failing_extension
#print axioms pd_prefix_has_failing_extension
#print axioms smaller_order_posDef
#print axioms largest_pd_blocks_have_failing_extension
#print axioms changeDiagonal

end ContinuousResearch.ArbitraryHankelPrefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d6284b7a18af2d7b6743e7947fae334b0eb993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
