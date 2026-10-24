# correctionPrefix_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da8ffdfb-2b28-588c-c4d5-ac72b6aee968",
  "kind": "theorem",
  "lexical_name": "correctionPrefix_tendsto",
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
  "slug": "correctionprefix-tendsto--9b32e8cfbcab48b086ed8106",
  "source": {
    "blob": "a3debc7101743b93b2dec8d9f013aa0e950f4d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 245,
    "path": "GRWTSK/Analysis/Real/TentRationalCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b32e8cfbcab48b086ed81067cbeb47185a7e04a5d88f64ae2e7380c5725ba88",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da8ffdfb-2b28-588c-c4d5-ac72b6aee968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctionPrefix_tendsto (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => correctionPrefix N x h) atTop
      (𝓝 (rationalTentCorrection x h)) := by
  have hsq : 1 < (x - h) ^ 2 := by nlinarith
  have hr0 : 0 ≤ 1 / (x - h) ^ 2 := by positivity
  have hr1 : 1 / (x - h) ^ 2 < 1 := (div_lt_one (by positivity)).2 hsq
  have hp := tendsto_pow_atTop_nhds_zero_of_lt_one hr0 hr1
  have hb : Tendsto
      (fun N : ℕ => h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N)
      atTop (𝓝 0) := by
    simpa using (tendsto_const_nhds
      (x := h / ((x - h) * ((x - h) ^ 2 - 1)))).mul hp
  have he : Tendsto (fun N : ℕ => correctionPrefix N x h - rationalTentCorrection x h)
      atTop (𝓝 0) := squeeze_zero
    (fun N => (correctionPrefix_error N x h hh ha).1)
    (fun N => (correctionPrefix_error N x h hh ha).2) hb
  simpa only [sub_add_cancel, zero_add] using he.add_const (rationalTentCorrection x h)

end
end GRWTSK.Analysis.Real.TentRationalCorrection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/TentRationalCorrection.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3debc7101743b93b2dec8d9f013aa0e950f4d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
