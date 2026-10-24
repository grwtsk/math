# exists_eq_const_mul_intervalIntegral_of_nonneg_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05547f99-e007-45f3-8913-3e29aeb16ace",
  "kind": "theorem",
  "lexical_name": "exists_eq_const_mul_intervalIntegral_of_nonneg_of_monotoneOn",
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
  "slug": "exists-eq-const-mul-intervalintegral-of-nonneg-of-monotoneon--78b0bcd146c9b28bcaeb64ba",
  "source": {
    "blob": "29c357cf0e2b1d9bde45be61d96d6a760bf04d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78b0bcd146c9b28bcaeb64ba5d575f6192a2d16a84aedd2784cd9239607d9da6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05547f99-e007-45f3-8913-3e29aeb16ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_const_mul_intervalIntegral_of_nonneg_of_monotoneOn
    (hab : a ≤ b) (hf : 0 ≤ f a) (hf_mon : MonotoneOn f (Icc a b))
    (hg : IntervalIntegrable g volume a b) :
    ∃ ξ ∈ Icc a b, ∫ x in a..b, f x * g x = f b * ∫ x in ξ..b, g x := by
  obtain ⟨ξ, hξ_mem, hξ⟩ := exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn
    (f := fun x ↦ f (-x)) (by simpa) (by simpa)
    (by intro x hx y hy hxy; apply hf_mon <;> grind)
    <| (IntervalIntegrable.iff_comp_neg).mp hg.symm
  refine ⟨-ξ, by grind, ?_⟩
  simpa using (intervalIntegral.integral_comp_neg (fun x ↦ f (-x) * g (-x))).trans hξ

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {g : ℝ → E}

/-- An inequality version of the second mean value theorem for interval integrals
for vector-valued functions with a nonnegative antitone weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c357cf0e2b1d9bde45be61d96d6a760bf04d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
