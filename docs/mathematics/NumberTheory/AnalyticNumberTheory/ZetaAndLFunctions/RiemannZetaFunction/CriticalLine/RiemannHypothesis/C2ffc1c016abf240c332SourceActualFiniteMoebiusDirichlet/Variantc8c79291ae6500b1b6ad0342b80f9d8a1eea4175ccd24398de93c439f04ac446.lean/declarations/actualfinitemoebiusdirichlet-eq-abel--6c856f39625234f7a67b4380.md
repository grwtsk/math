# actualFiniteMoebiusDirichlet_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8829411e-0cd4-b456-9491-900c5b3e5a79",
  "kind": "theorem",
  "lexical_name": "actualFiniteMoebiusDirichlet_eq_abel",
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
  "slug": "actualfinitemoebiusdirichlet-eq-abel--6c856f39625234f7a67b4380",
  "source": {
    "blob": "90ca2f9a8a21c25182626f7c10f27dc8614915c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c856f39625234f7a67b4380640876db64bcd101019fe277fa69ed7559078ae2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8829411e-0cd4-b456-9491-900c5b3e5a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFiniteMoebiusDirichlet_eq_abel (N : ℕ) (sigma : ℝ) :
    actualFiniteMoebiusDirichlet N sigma =
      alpha N * (N : ℝ) ^ (1 - sigma) +
        ∑ n ∈ Finset.Icc 1 (N - 1),
          alpha n * ((n : ℝ) ^ (1 - sigma) - (n + 1 : ℕ) ^ (1 - sigma : ℝ)) := by
  have he : actualFiniteMoebiusDirichlet N sigma =
      ∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * (n : ℝ) ^ (1 - sigma) := by
    unfold actualFiniteMoebiusDirichlet
    apply Finset.sum_congr rfl
    intro n hn
    have hp : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    rw [Real.rpow_sub hp, Real.rpow_one]
    field_simp
  rw [he, actual_weighted_alpha_identity]

/-- Actual signed prefix control gives a uniform unit bound for every real exponent at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C2ffc1c016abf240c332SourceActualFiniteMoebiusDirichlet/Variantc8c79291ae6500b1b6ad0342b80f9d8a1eea4175ccd24398de93c439f04ac446.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ca2f9a8a21c25182626f7c10f27dc8614915c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
