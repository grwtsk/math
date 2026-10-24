# fejer_kernel_le_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ea48307-f286-2b36-724b-a3fb0198a5c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd11ba4e-7915-20d0-6276-9d85e878c47f",
  "kind": "theorem",
  "lexical_name": "fejer_kernel_le_quadratic",
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
  "slug": "fejer-kernel-le-quadratic--0da619747759bfc5b939f21f",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 437,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da619747759bfc5b939f21fb274567e6c09ec35b218ef6df6e861e1434122c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd11ba4e-7915-20d0-6276-9d85e878c47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_kernel_le_quadratic (n : ℕ) (t : ℝ) (ht_pos : 0 < t) (ht_le : t ≤ Real.pi) :
    fejer_kernel n t ≤ Real.pi ^ 2 / (2 * (n + 1) * t ^ 2) := by
      -- Using the inequality $\sin u \ge \frac{2}{\pi}u$ for $0 \le u \le \pi/2$, with $u = t/2$, we have $\sin(t/2) \ge \frac{2}{\pi}(t/2) = \frac{t}{\pi}$.
      have h_sin_ineq : Real.sin (t / 2) ≥ t / Real.pi := by
        have := Real.mul_le_sin ( by positivity ) ( by linarith : t / 2 ≤ Real.pi / 2 );
        ring_nf at this ⊢; linarith;
      -- Squaring both sides of the inequality $\sin(t/2) \ge t/\pi$, we get $\sin^2(t/2) \ge t^2/\pi^2$.
      have h_sin_sq_ineq : Real.sin (t / 2) ^ 2 ≥ t^2 / Real.pi^2 := by
        simpa only [ div_pow ] using pow_le_pow_left₀ ( by positivity ) h_sin_ineq 2;
      rw [ fejer_kernel_closed_form ];
      · field_simp at h_sin_sq_ineq ⊢;
        exact div_le_of_le_mul₀ ( sq_nonneg _ ) ( by positivity ) ( by nlinarith [ Real.sin_sq_le_one ( t * ( n + 1 ) / 2 ) ] );
      · exact ne_of_gt ( Real.sin_pos_of_pos_of_lt_pi ( by positivity ) ( by linarith [ Real.pi_pos ] ) )

/-
Lemma: The maximum of the Fejér kernel on [delta, pi] tends to 0 as n tends to infinity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
