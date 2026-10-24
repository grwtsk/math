# integral_rawClassicalHead_tendsto_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edda6eb4-58e8-7d7d-455c-b7745d3b91b3",
  "kind": "theorem",
  "lexical_name": "integral_rawClassicalHead_tendsto_source",
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
  "slug": "integral-rawclassicalhead-tendsto-source--310253ca73253e3240c4a016",
  "source": {
    "blob": "74db95b6f866bf20c6abbed0f97e63aafb143151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:310253ca73253e3240c4a0160e2fa8c5cd7b3859f3d9786ae9d9c6880d382cea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edda6eb4-58e8-7d7d-455c-b7745d3b91b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_rawClassicalHead_tendsto_source (N : ℕ) (a b : ℝ) (hN : 3 ≤ N)
    (ha : 1 < a) (hb : 1 < b) (haN : a ≤ N) (hbN : b ≤ N) :
    Tendsto (fun T => ∫ t in a..b, rawClassicalHead t T) atTop
      (𝓝 ((firstRieszPrefix N b-firstRieszPrefix N a:ℝ):ℂ)) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := (firstRieszTailBudget_tendsto_zero b).add (firstRieszTailBudget_tendsto_zero a)
  have he := (show Tendsto (fun T => firstRieszTailBudget b T+firstRieszTailBudget a T) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2:ℝ)] with T heT hT
  rw [dist_eq_norm, norm_sub_rev]
  exact (norm_integral_error_le N a b T hN ha hb haN hbN hT).trans_lt heT
end GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/FirstRieszWeakRawLimit.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74db95b6f866bf20c6abbed0f97e63aafb143151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
