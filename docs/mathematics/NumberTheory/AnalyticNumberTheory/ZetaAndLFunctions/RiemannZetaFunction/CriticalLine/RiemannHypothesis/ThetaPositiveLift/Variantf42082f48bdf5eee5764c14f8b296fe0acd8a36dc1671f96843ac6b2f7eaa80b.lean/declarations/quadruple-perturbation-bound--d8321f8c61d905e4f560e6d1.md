# quadruple_perturbation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa99092b-9318-126d-6fa4-41e0effbe021",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96d48a44-4151-01fb-5fc2-38c2d3b8eda4",
  "kind": "theorem",
  "lexical_name": "quadruple_perturbation_bound",
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
  "slug": "quadruple-perturbation-bound--d8321f8c61d905e4f560e6d1",
  "source": {
    "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8321f8c61d905e4f560e6d15b226c17fb2184bb7f34487cc7619efcf4f6796e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96d48a44-4151-01fb-5fc2-38c2d3b8eda4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem quadruple_perturbation_bound
    {a b c d e f g h A B C D E F G H : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) (hc : |c| ≤ C) (hd : |d| ≤ D)
    (he : |e| ≤ E) (hf : |f| ≤ F) (hg : |g| ≤ G) (hh : |h| ≤ H) :
    |(a + e) * (b + f) * (c + g) * (d + h) - a * b * c * d| ≤
      (A + E) * (B + F) * (C + G) * (D + H) - A * B * C * D := by
  have hABC := triple_perturbation_bound4 ha hb hc he hf hg
  have hdSum : |d + h| ≤ D + H :=
    (abs_add_le d h).trans (add_le_add hd hh)
  have hA0 : 0 ≤ A := (abs_nonneg a).trans ha
  have hB0 : 0 ≤ B := (abs_nonneg b).trans hb
  have hC0 : 0 ≤ C := (abs_nonneg c).trans hc
  have hAB0 : 0 ≤ A * B := mul_nonneg hA0 hB0
  have hABC0 : |a * b * c| ≤ A * B * C := by
    rw [abs_mul, abs_mul]
    exact mul_le_mul (mul_le_mul ha hb (abs_nonneg b) hA0) hc
      (abs_nonneg c) hAB0
  have hABCnonneg :
      0 ≤ (A + E) * (B + F) * (C + G) - A * B * C :=
    (abs_nonneg _).trans hABC
  have hABCboxnonneg : 0 ≤ A * B * C :=
    mul_nonneg hAB0 hC0
  calc
    _ = |(((a + e) * (b + f) * (c + g) - a * b * c) * (d + h)) +
          (a * b * c) * h| := by
      congr 1
      ring
    _ ≤ |(a + e) * (b + f) * (c + g) - a * b * c| * |d + h| +
          |a * b * c| * |h| := by
      simpa only [abs_mul] using
        (abs_add_le
          (((a + e) * (b + f) * (c + g) - a * b * c) * (d + h))
          ((a * b * c) * h))
    _ ≤ ((A + E) * (B + F) * (C + G) - A * B * C) * (D + H) +
          (A * B * C) * H := by
      exact add_le_add
        (mul_le_mul hABC hdSum (abs_nonneg _) hABCnonneg)
        (mul_le_mul hABC0 hh (abs_nonneg _) hABCboxnonneg)
    _ = _ := by ring

/-- The quartic polynomial with the absolute coefficients of the rank-four
Hankel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e770407f13829d4031059c9ab07b18ca41aeac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
