# prescribed_horizon_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7794d767-5532-44ca-7f78-0db54403f948",
  "kind": "theorem",
  "lexical_name": "prescribed_horizon_obstruction",
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
  "slug": "prescribed-horizon-obstruction--09f8778a08f6111206551d6a",
  "source": {
    "blob": "bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/Analysis/InnerProductSpace/DilationResponseSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09f8778a08f6111206551d6abd1729150402e52ef877ba12b0484afe87e32551",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7794d767-5532-44ca-7f78-0db54403f948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_horizon_obstruction :
    ∃ A : ℝ, 1 ≤ A ∧ 8 ∈ inventory (2 * A) ∧
      gram (2 * A) 8 8 ≠ SourceGram.sourceGram A 8 8 := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_, ?_⟩
  · rw [horizon]
    exact touching_atom_in_inventory (n := 8) (by norm_num)
  · rw [horizon]
    exact native_touching_ne_prescribed (A := Real.log (8 : ℝ) / 2)
      (by linarith) (n := 8) (by norm_num)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceNativeSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/DilationResponseSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/DilationResponseSeparation.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbafbde79e6536ba1b1e8d1f6d9415db3e94f6b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
