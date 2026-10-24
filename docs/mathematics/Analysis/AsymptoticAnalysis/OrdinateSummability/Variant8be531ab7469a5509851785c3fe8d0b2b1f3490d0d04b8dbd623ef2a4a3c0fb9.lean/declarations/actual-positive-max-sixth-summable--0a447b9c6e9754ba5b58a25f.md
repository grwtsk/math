# actual_positive_max_sixth_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67beaf1b-9319-e918-8876-8adfaa7693cd",
  "kind": "theorem",
  "lexical_name": "actual_positive_max_sixth_summable",
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
  "slug": "actual-positive-max-sixth-summable--0a447b9c6e9754ba5b58a25f",
  "source": {
    "blob": "9a1f89f32dbd3ffd44d6292540614cc969aa0abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 45,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant8be531ab7469a5509851785c3fe8d0b2b1f3490d0d04b8dbd623ef2a4a3c0fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a447b9c6e9754ba5b58a25f3784f542cc82f1b82dd5fdce715669ae1b79a557",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant8be531ab7469a5509851785c3fe8d0b2b1f3490d0d04b8dbd623ef2a4a3c0fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67beaf1b-9319-e918-8876-8adfaa7693cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_max_sixth_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (fun o : {o : ZeroObject.ZeroOccurrence //
      0 < (ZeroObject.shiftedValue o).im} =>
        1/(max T (ZeroObject.shiftedValue o.val).im)^6) := by
  have hm : Summable (fun o : {o : ZeroObject.ZeroOccurrence //
      0 < (ZeroObject.shiftedValue o).im} =>
        64*(1+‖ZeroObject.shiftedValue o.val‖)^(-6 : ℝ)) :=
    (ZeroShellCount.zero_summability.subtype
      (fun o => 0 < (ZeroObject.shiftedValue o).im)).mul_left 64
  exact Summable.of_nonneg_of_le (fun _ => by positivity)
    (fun o => ordinate_weight_comparison T hT o.val o.property) hm

/-- The actual strict positive-ordinate sixth-power sum has no sharp-count
or verified-height premise. The cutoff assumption holds at T=3e12. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant8be531ab7469a5509851785c3fe8d0b2b1f3490d0d04b8dbd623ef2a4a3c0fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant8be531ab7469a5509851785c3fe8d0b2b1f3490d0d04b8dbd623ef2a4a3c0fb9.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a1f89f32dbd3ffd44d6292540614cc969aa0abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
