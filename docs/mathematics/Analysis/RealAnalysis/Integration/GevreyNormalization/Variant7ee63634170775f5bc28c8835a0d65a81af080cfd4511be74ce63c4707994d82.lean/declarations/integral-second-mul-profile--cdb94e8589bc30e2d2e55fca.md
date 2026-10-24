# integral_second_mul_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e501350caf156b468233ad7ec8bed00798e7f437",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2dfab36-62f7-ee62-4203-db7febc35252",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e4277d5-caf4-40d5-ef2e-9cd260d17ade",
  "kind": "theorem",
  "lexical_name": "integral_second_mul_profile",
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
  "slug": "integral-second-mul-profile--cdb94e8589bc30e2d2e55fca",
  "source": {
    "blob": "e501350caf156b468233ad7ec8bed00798e7f437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb94e8589bc30e2d2e55fca21efadc00837cf6ed7b12bd9c7d1e12b1bfcc1aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4277d5-caf4-40d5-ef2e-9cd260d17ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_second_mul_profile {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) :
    (∫ x : ℝ, deriv (deriv h) x * h x) = -∫ x : ℝ, (deriv h x) ^ 2 := by
  have hc' : Continuous (deriv h) := hc.continuous_deriv (by norm_num)
  have hc'' : Continuous (deriv (deriv h)) := continuous_second hc
  have hprod : Integrable (h * deriv (deriv h)) :=
    (hc.continuous.mul hc'').integrable_of_hasCompactSupport (hs.mul_right)
  have hsquare : Integrable (deriv h * deriv h) :=
    (hc'.mul hc').integrable_of_hasCompactSupport (hs.deriv.mul_right)
  have hmixed : Integrable (h * deriv h) :=
    (hc.continuous.mul hc').integrable_of_hasCompactSupport (hs.mul_right)
  have hi := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := h) (u' := deriv h) (v := deriv h) (v' := deriv (deriv h))
    (fun x _ ↦ (hc.differentiable (by norm_num) x).hasDerivAt)
    (fun x _ ↦ (hc.differentiable_deriv_two x).hasDerivAt)
    hprod hsquare hmixed
  simpa only [pow_two, mul_comm] using hi

/-- The first derivative retains the actual scale factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e501350caf156b468233ad7ec8bed00798e7f437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
