# dividedDifference_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8595fba-693f-ab60-4f29-dc9b25659656",
  "kind": "theorem",
  "lexical_name": "dividedDifference_bound",
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
  "slug": "divideddifference-bound--a6eab8b16974807389c2fb0f",
  "source": {
    "blob": "d3a5a015e85b6e477f0b7ee5bb344cd6310eee41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6eab8b16974807389c2fb0f79e4b9d68b9385a7da22719b98af2d898d89ea43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8595fba-693f-ab60-4f29-dc9b25659656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dividedDifference_bound {a b t : ℝ} (_ha : 0 < a) (_hb : 0 < b) (ht : 0 < t) :
    ‖dividedDifference a b t‖ ≤ |a - b| * Real.exp (-min a b * t) := by
  have hder (u : ℝ) : HasDerivAt (fun v : ℝ ↦ Real.exp (-v * t))
      (Real.exp (-u * t) * (-t)) u := by
    convert ((hasDerivAt_id u).neg.mul_const t).exp using 1 <;> simp
  have hbound (u : ℝ) (hu : u ∈ Ici (min a b)) :
      ‖Real.exp (-u * t) * (-t)‖ ≤ t * Real.exp (-min a b * t) := by
    rw [norm_mul, Real.norm_of_nonneg (Real.exp_pos _).le, norm_neg, Real.norm_of_nonneg ht.le]
    have he : Real.exp (-u * t) ≤ Real.exp (-min a b * t) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_right (neg_le_neg hu) ht.le
    nlinarith [Real.exp_pos (-u * t), Real.exp_pos (-min a b * t)]
  have hv := (convex_Ici (min a b)).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u _ ↦ (hder u).hasDerivWithinAt) hbound
    (show b ∈ Ici (min a b) from min_le_right a b)
    (show a ∈ Ici (min a b) from min_le_left a b)
  rw [dividedDifference, norm_div, Real.norm_of_nonneg ht.le]
  apply (div_le_iff₀ ht).2
  simpa only [Real.norm_eq_abs, mul_comm, mul_left_comm, mul_assoc] using hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a5a015e85b6e477f0b7ee5bb344cd6310eee41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
