# finite_primes_mem_full_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e797151f-23e6-c57a-5a62-434b8e7d6769",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94f54407-7bb8-f108-db71-d4f991360908",
  "kind": "theorem",
  "lexical_name": "finite_primes_mem_full_inventory",
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
  "slug": "finite-primes-mem-full-inventory--557bf0a2950a02b8af471811",
  "source": {
    "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557bf0a2950a02b8af4718112c349c286309f2af090e451d22f9128daefd5086",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f54407-7bb8-f108-db71-d4f991360908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_primes_mem_full_inventory (s : Finset Nat.Primes) :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ p ∈ s, (p : ℕ) ∈ primeIndices A := by
  classical
  let N := s.sup (fun p ↦ (p : ℕ))
  let A : ℝ := max 1 (Real.log ((N : ℝ) + 1))
  refine ⟨A, le_max_left _ _, ?_⟩
  intro p hp
  rw [mem_primeIndices_iff]
  refine ⟨p.prop.two_le, ?_⟩
  have hpN : (p : ℝ) ≤ N := by
    exact_mod_cast (Finset.le_sup (f := fun p : Nat.Primes ↦ (p : ℕ)) hp)
  have hA : Real.log ((N : ℝ) + 1) ≤ 2 * A := by
    have hA1 : 1 ≤ A := le_max_left _ _
    have hAl : Real.log ((N : ℝ) + 1) ≤ A := le_max_right _ _
    linarith
  calc
    (p : ℝ) < (N : ℝ) + 1 := by linarith
    _ = Real.exp (Real.log ((N : ℝ) + 1)) :=
      (Real.exp_log (by positivity)).symm
    _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr hA

/-- The complete finite prime-power budget has no radius-uniform upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ab86063897381fe485ab3c4b941308d99fd919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
