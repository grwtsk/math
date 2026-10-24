# actualShortFirstPrime_unweighted_eq_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc2d4b94-bd56-1eae-bee4-794fb7f9ddc4",
  "kind": "theorem",
  "lexical_name": "actualShortFirstPrime_unweighted_eq_theta",
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
  "slug": "actualshortfirstprime-unweighted-eq-theta--d3779c834c8371791c40a10a",
  "source": {
    "blob": "7efaa1dad81f5d220105b42884cd5a24fb80e3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3779c834c8371791c40a10a3d70a5ea8ee0265b98e6341cd5d951187d9a5813",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2d4b94-bd56-1eae-bee4-794fb7f9ddc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortFirstPrime_unweighted_eq_theta {A : ℝ} (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime, (vonMangoldt p : ℝ)) =
      Chebyshev.theta (A ^ 2) := by
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  calc
    _ = ∑ p ∈ (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime, Real.log (p : ℝ) := by
      apply Finset.sum_congr rfl
      intro p hp
      exact vonMangoldt_apply_prime (Finset.mem_filter.mp hp).2
    _ = Chebyshev.theta (A ^ 2) := by
      rw [Chebyshev.theta, show ⌊A ^ 2⌋₊ = vaughanCutoff A from rfl, hI]
      rw [Finset.filter_insert]
      norm_num

/-- Every true short prime keeps the source correlation lower bound before any sum estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/15d85079900b890a6f4c75d9a0899536eba4ec1823980fce3b10555c52698abaSourceActualShor/Variant1b7b544f97eecf9b781d44c0d5614defcf141de395feb1bd72529d6b2cc6e151.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efaa1dad81f5d220105b42884cd5a24fb80e3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
