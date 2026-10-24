# sum_secondMomentMajorant_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d854b6f9-3233-ef85-6156-8e9aa9b3eb0c",
  "kind": "theorem",
  "lexical_name": "sum_secondMomentMajorant_integrals",
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
  "slug": "sum-secondmomentmajorant-integrals--53a29f9dc80d2575a57e1578",
  "source": {
    "blob": "65e18f1d491c96715ad5b59315239f5d495fb15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a29f9dc80d2575a57e15788cf14f11348d90b02eece2e29d33a11d906f3127",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d854b6f9-3233-ef85-6156-8e9aa9b3eb0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_secondMomentMajorant_integrals (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      ∫ x in (n : ℝ)..((n : ℝ) + 1), secondMomentMajorant x) =
      ∫ x in (1 : ℝ)..((N : ℝ) + 1), secondMomentMajorant x := by
  have h := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun k : ℕ => (k : ℝ)) (m := 1) (n := N + 1) (by omega)
    (f := secondMomentMajorant) (μ := volume) (fun k hk => by
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (Nat.zero_lt_of_lt hk.1)
      apply secondMomentMajorant_intervalIntegrable hk0
      simp only [Nat.cast_add, Nat.cast_one]
      linarith)
  simpa only [Finset.Ico_add_one_right_eq_Icc, Nat.cast_add, Nat.cast_one] using h

/-- An unconditional payment independent of the finite natural inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variantd53cf57a3103f8e0d82d6a74eeff71ef65021d392f22819f382ef9fa5574f302.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e18f1d491c96715ad5b59315239f5d495fb15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
