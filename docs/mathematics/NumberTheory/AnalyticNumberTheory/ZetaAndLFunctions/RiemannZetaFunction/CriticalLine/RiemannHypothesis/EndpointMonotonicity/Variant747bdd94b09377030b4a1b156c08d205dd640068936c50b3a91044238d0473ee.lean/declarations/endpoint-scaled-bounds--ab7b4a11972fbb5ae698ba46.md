# endpoint_scaled_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2984eeff-c6cc-220e-9ce7-2f06aa51f92d",
  "kind": "theorem",
  "lexical_name": "endpoint_scaled_bounds",
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
  "slug": "endpoint-scaled-bounds--ab7b4a11972fbb5ae698ba46",
  "source": {
    "blob": "665d7d03535646164c39ebe4579068ea75c5debd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7b4a11972fbb5ae698ba46cf8dd028a5a714326278e1f8e41a993974734429",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2984eeff-c6cc-220e-9ce7-2f06aa51f92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_scaled_bounds (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Icc (A - 3 / 4) A) :
    3 / 4 ≤ x / A ∧ x / A ≤ 1 ∧ A ^ 2 * (1 - (x / A) ^ 2) ^ 2 ≤ 9 / 4 := by
  have hA0 : 0 < A := by linarith
  have hlow : 3 / 4 ≤ x / A := (le_div_iff₀ hA0).mpr (by nlinarith [hx.1])
  have hupp : x / A ≤ 1 := (div_le_one hA0).mpr hx.2
  refine ⟨hlow, hupp, ?_⟩
  have hzero : 0 ≤ (A - x) * (1 + x / A) := mul_nonneg (by linarith [hx.2])
    (by linarith)
  have hbound : (A - x) * (1 + x / A) ≤ 3 / 2 := by
    nlinarith [hx.1, hx.2]
  have he : A ^ 2 * (1 - (x / A) ^ 2) ^ 2 = ((A - x) * (1 + x / A)) ^ 2 := by
    field_simp
    ring
  rw [he]
  nlinarith

/-- The exact actual normalized interior factors without changing its pole-annihilating term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665d7d03535646164c39ebe4579068ea75c5debd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
