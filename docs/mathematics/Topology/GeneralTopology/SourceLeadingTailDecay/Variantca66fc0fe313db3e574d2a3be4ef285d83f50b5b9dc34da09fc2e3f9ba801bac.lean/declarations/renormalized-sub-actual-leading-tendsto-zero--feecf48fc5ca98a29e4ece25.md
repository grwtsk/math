# renormalized_sub_actual_leading_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3445275-ccc2-68b8-fa27-24de5f5a4fab",
  "kind": "theorem",
  "lexical_name": "renormalized_sub_actual_leading_tendsto_zero",
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
  "slug": "renormalized-sub-actual-leading-tendsto-zero--feecf48fc5ca98a29e4ece25",
  "source": {
    "blob": "57943d87dc1b4cb6d42622c0ba7a0ab9cdfcd81a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feecf48fc5ca98a29e4ece259046e4bd6cebf8bd88ca573062fee51d0bb5361e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3445275-ccc2-68b8-fa27-24de5f5a4fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem renormalized_sub_actual_leading_tendsto_zero :
    Tendsto (fun A : ℝ => renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    fullKappaShortBudget_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact renormalized_tail_sub_actual_leading_abs_le hA

end
end FormalResearch.RiemannHypothesis.SourceLeadingTailDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantca66fc0fe313db3e574d2a3be4ef285d83f50b5b9dc34da09fc2e3f9ba801bac.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57943d87dc1b4cb6d42622c0ba7a0ab9cdfcd81a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
