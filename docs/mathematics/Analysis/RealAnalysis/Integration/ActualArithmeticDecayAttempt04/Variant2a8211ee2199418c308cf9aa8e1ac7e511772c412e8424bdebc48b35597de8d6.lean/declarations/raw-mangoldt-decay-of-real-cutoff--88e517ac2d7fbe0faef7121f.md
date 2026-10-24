# raw_mangoldt_decay_of_real_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd9b190e-4fbe-792b-489c-6626d0a72d8b",
  "kind": "theorem",
  "lexical_name": "raw_mangoldt_decay_of_real_cutoff",
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
  "slug": "raw-mangoldt-decay-of-real-cutoff--88e517ac2d7fbe0faef7121f",
  "source": {
    "blob": "7f6ebbfbff5dcf6b73d5e4bf50dff21654259add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e517ac2d7fbe0faef7121f01b6009a579889419aac9d876544f4b05d3346a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd9b190e-4fbe-792b-489c-6626d0a72d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_mangoldt_decay_of_real_cutoff {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ x : ℝ, 1 < x →
      |FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt
        (Nat.floor x)-Real.log x+Real.eulerMascheroniConstant| ≤ C/(Real.log x)^2) :
    RawMangoldtDecay C := by
  refine ⟨hC,fun t ht => ?_⟩
  have he : 1 < Real.exp t := Real.one_lt_exp_iff.mpr (by linarith)
  simpa only [actualRemainder,
    FormalResearch.RiemannHypothesis.SourceMangoldtAbel.mangoldtLogError,
    FormalResearch.RiemannHypothesis.SourceMangoldtAbel.mangoldtLogPrefix,
    Real.log_exp] using h (Real.exp t) he

end ContinuousResearch.ActualArithmeticDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt04/Variant2a8211ee2199418c308cf9aa8e1ac7e511772c412e8424bdebc48b35597de8d6.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f6ebbfbff5dcf6b73d5e4bf50dff21654259add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
