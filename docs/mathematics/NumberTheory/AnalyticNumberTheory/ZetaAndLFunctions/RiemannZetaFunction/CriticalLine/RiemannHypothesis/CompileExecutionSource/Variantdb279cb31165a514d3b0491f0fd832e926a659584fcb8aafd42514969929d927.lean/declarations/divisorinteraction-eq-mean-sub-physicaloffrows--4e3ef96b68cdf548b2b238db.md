# divisorInteraction_eq_mean_sub_physicalOffRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c792a6b5-004f-7874-ccda-fd191215af6b",
  "kind": "theorem",
  "lexical_name": "divisorInteraction_eq_mean_sub_physicalOffRows",
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
  "slug": "divisorinteraction-eq-mean-sub-physicaloffrows--4e3ef96b68cdf548b2b238db",
  "source": {
    "blob": "ca95e22f8a5b91c9285cb5c71da7302a010f3695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 226,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variantdb279cb31165a514d3b0491f0fd832e926a659584fcb8aafd42514969929d927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3ef96b68cdf548b2b238db5315c1d8e92aa84a080d9414898453caa5222b1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variantdb279cb31165a514d3b0491f0fd832e926a659584fcb8aafd42514969929d927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c792a6b5-004f-7874-ccda-fd191215af6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorInteraction_eq_mean_sub_physicalOffRows (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 0 < d) :
    divisorInteraction A d = plainTypeTwoOffDiagonal A / (d : ℝ) -
      physicalQuotientOffRowsAt A d (vaughanCutoff A) := by
  rw [divisorInteraction_eq_mean_sub_multiples A hA d,
    divisorMultiplesInteraction_eq_physicalOffRows A d hd]

/-- Generic carrier only: k=2 lies in the physical row and in the required strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variantdb279cb31165a514d3b0491f0fd832e926a659584fcb8aafd42514969929d927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompileExecutionSource/Variantdb279cb31165a514d3b0491f0fd832e926a659584fcb8aafd42514969929d927.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca95e22f8a5b91c9285cb5c71da7302a010f3695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
