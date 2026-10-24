# actualResidual_reducedOffAxis_signed_error_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4264d0e5-2057-dbda-2df4-c6af07cac44e",
  "kind": "theorem",
  "lexical_name": "actualResidual_reducedOffAxis_signed_error_tendsto",
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
  "slug": "actualresidual-reducedoffaxis-signed-error-tendsto--d073c28899d81edf6817e6c5",
  "source": {
    "blob": "3379b6f734df11e373c0982602bd430eca5f52de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d073c28899d81edf6817e6c5269e7066c86326b8a57ec241fb3ebe626b9eee88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4264d0e5-2057-dbda-2df4-c6af07cac44e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_reducedOffAxis_signed_error_tendsto :
    Tendsto (fun A : ℝ => mertensResidual A - (archimedeanMultiplier 0 -
      (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) / 2)
        atTop (𝓝 0) := by
  have hc := (Complex.continuous_re.tendsto 0).comp
    (actualCriticalZeroHead_anyHeight_tendsto_zero actualReducedZeroHeight)
  have hh := actualResidual_reducedHead_signed_error_tendsto.sub (hc.div_const 2)
  have hz : Tendsto (fun A : ℝ =>
      (mertensResidual A - (archimedeanMultiplier 0 -
        (SourceActualZeroTailBudget.actualZeroHeightHead A (actualReducedZeroHeight A)).re) / 2) -
          (actualCriticalZeroHeightHead A (actualReducedZeroHeight A)).re / 2)
            atTop (𝓝 0) := by
    simpa only [Complex.zero_re, zero_div, sub_zero, Function.comp_apply] using hh
  convert hz using 1
  ext A
  rw [actualZeroHeightHead_re_eq_critical_add_offAxis]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualOffAxisReducedLimit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3379b6f734df11e373c0982602bd430eca5f52de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
