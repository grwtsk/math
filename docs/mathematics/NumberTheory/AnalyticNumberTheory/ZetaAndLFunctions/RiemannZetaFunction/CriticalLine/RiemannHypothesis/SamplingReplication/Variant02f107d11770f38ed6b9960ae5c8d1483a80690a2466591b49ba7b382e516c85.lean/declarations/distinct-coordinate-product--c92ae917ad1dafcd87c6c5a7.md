# distinct_coordinate_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f5ed4e1-04dc-cf4c-d5f5-f00bf66a85bf",
  "kind": "theorem",
  "lexical_name": "distinct_coordinate_product",
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
  "slug": "distinct-coordinate-product--c92ae917ad1dafcd87c6c5a7",
  "source": {
    "blob": "af30ade169fd873c479caa7e32b5a37b7ea4b499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c92ae917ad1dafcd87c6c5a7bf1dd542875a50b826da2cc8644aed7096afe35b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f5ed4e1-04dc-cf4c-d5f5-f00bf66a85bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_coordinate_product {κ : Type*} [Fintype κ] {m : ℕ}
    (p f g : κ → ℝ) (hsum : (∑ j, p j) = 1) (i j : Fin m) (hij : i ≠ j) :
    expectation m p (fun ω ↦ f (ω i) * g (ω j)) =
      (∑ k, p k * f k) * (∑ k, p k * g k) := by
  classical
  have h := tensor_expectation m p
    (fun k a ↦ (if k = i then f a else 1) * (if k = j then g a else 1))
  have hleft (ω : Fin m → κ) :
      (∏ k, (if k = i then f (ω k) else 1) * (if k = j then g (ω k) else 1)) =
        f (ω i) * g (ω j) := by rw [Finset.prod_mul_distrib]; simp
  have hright (k : Fin m) :
      (∑ a, p a * ((if k = i then f a else 1) * (if k = j then g a else 1))) =
      (if k = i then (∑ a, p a * f a) else 1) *
        (if k = j then (∑ a, p a * g a) else 1) := by
    by_cases hki : k = i
    · subst k
      simp [hij]
    · by_cases hkj : k = j
      · subst k
        simp [hki]
      · simp [hki, hkj, hsum]
  simp only [hleft, hright, Finset.prod_mul_distrib] at h
  simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af30ade169fd873c479caa7e32b5a37b7ea4b499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
