# positivePower_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac2e0b38-52ec-eadb-3ed2-3945717c0ad7",
  "kind": "theorem",
  "lexical_name": "positivePower_contDiff",
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
  "slug": "positivepower-contdiff--a249e619ed09b6870b009544",
  "source": {
    "blob": "8d1c5e02de168b7c548b8591e594e527bcbe3789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchCutoffRegularity/Variant08fd5bbd343a5cad1ea80d32b610e7a7a50fa3485345d904388db00d803a86c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a249e619ed09b6870b009544f7d56963c1dd4a31044005af86f49be52ff600b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchCutoffRegularity/Variant08fd5bbd343a5cad1ea80d32b610e7a7a50fa3485345d904388db00d803a86c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac2e0b38-52ec-eadb-3ed2-3945717c0ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePower_contDiff (n : ℕ) : ContDiff ℝ n (positivePower (n + 1)) := by
  induction n with
  | zero => exact contDiff_zero.mpr (positivePower_continuous (by omega : 0 < 0 + 1))
  | succ n ih =>
    rw [show ((n + 1 : ℕ) : WithTop ℕ∞) = (n : WithTop ℕ∞) + 1 by simp,
      contDiff_succ_iff_deriv]
    refine ⟨fun x ↦ (positivePower_hasDerivAt (by omega : 2 ≤ n + 1 + 1) x).differentiableAt,
      by simp, ?_⟩
    rw [positivePower_deriv (by omega : 2 ≤ n + 1 + 1),
      show n + 1 + 1 - 1 = n + 1 by omega]
    exact contDiff_const.mul ih

/-- The exact fifth-power cutoff is C⁴, including the entry point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchCutoffRegularity/Variant08fd5bbd343a5cad1ea80d32b610e7a7a50fa3485345d904388db00d803a86c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchCutoffRegularity/Variant08fd5bbd343a5cad1ea80d32b610e7a7a50fa3485345d904388db00d803a86c1.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1c5e02de168b7c548b8591e594e527bcbe3789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
