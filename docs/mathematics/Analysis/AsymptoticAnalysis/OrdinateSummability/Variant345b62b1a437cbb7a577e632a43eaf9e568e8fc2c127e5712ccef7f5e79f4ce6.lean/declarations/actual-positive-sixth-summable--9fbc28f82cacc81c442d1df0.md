# actual_positive_sixth_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:186c49bd-b64e-f42e-a37a-c57f7710533d",
  "kind": "theorem",
  "lexical_name": "actual_positive_sixth_summable",
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
  "slug": "actual-positive-sixth-summable--9fbc28f82cacc81c442d1df0",
  "source": {
    "blob": "f57efc8b9a8245cc29b6a272efedea83c1db5f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fbc28f82cacc81c442d1df05d8aee7b0a5851f08ea0463c507a48c40b912741",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:186c49bd-b64e-f42e-a37a-c57f7710533d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_sixth_summable (T : ℝ) (hT : 3/2 ≤ T) :
    Summable (positiveSixthPowerWeight T) := by
  have h := (ZeroShellCount.zero_summability.subtype
    (fun o => o ∈ zeroPositiveStrictTailSet T)).mul_left 64
  apply Summable.of_nonneg_of_le (fun _ => by unfold positiveSixthPowerWeight; positivity) ?_ h
  intro o
  have hp : 0 < (ZeroObject.shiftedValue o.val).im := by
    have ho : T < (ZeroObject.shiftedValue o.val).im := o.property
    linarith
  have hc := ordinate_weight_comparison T hT o.val hp
  have ht : T ≤ (ZeroObject.shiftedValue o.val).im := o.property.le
  rw [max_eq_right ht] at hc
  exact hc

end CommonMeanStieltjes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OrdinateSummability/Variant345b62b1a437cbb7a577e632a43eaf9e568e8fc2c127e5712ccef7f5e79f4ce6.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f57efc8b9a8245cc29b6a272efedea83c1db5f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
