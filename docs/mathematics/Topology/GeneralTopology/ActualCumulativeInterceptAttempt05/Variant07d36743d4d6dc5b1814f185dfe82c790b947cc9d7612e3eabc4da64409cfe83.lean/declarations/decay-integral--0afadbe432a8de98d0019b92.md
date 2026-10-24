# decay_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a333cdcc-acf3-e6b5-0f76-168f7f6710e1",
  "kind": "theorem",
  "lexical_name": "decay_integral",
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
  "slug": "decay-integral--0afadbe432a8de98d0019b92",
  "source": {
    "blob": "12f38318ce88f5b2f5c92710a74eba7654d28d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0afadbe432a8de98d0019b92cd2fc096bf6fb66fdd3b2ce603a8f867256dea4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a333cdcc-acf3-e6b5-0f76-168f7f6710e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decay_integral (u : ℝ) :
    (∫ t in 0..u, criticalDecay t) = 2 - 2*criticalDecay u := by
  have hd (t : ℝ) : HasDerivAt (fun x : ℝ => -2*criticalDecay x) (criticalDecay t) t := by
    have h := (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2:ℝ)
    convert! h using 1
    dsimp [criticalDecay]
    ring
  have hc : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable (μ:=volume) 0 u)
  simpa [criticalDecay,sub_eq_add_neg,add_comm,neg_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant07d36743d4d6dc5b1814f185dfe82c790b947cc9d7612e3eabc4da64409cfe83.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12f38318ce88f5b2f5c92710a74eba7654d28d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
