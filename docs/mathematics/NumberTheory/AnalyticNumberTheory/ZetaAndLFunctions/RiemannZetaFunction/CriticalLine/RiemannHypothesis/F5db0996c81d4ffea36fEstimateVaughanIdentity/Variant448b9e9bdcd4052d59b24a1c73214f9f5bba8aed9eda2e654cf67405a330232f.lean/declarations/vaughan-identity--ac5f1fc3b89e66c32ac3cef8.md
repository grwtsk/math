# vaughan_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b66cf2d-5d9c-3c2a-7817-2cb72493f9fa",
  "kind": "theorem",
  "lexical_name": "vaughan_identity",
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
  "slug": "vaughan-identity--ac5f1fc3b89e66c32ac3cef8",
  "source": {
    "blob": "4aa3662eecdd5b7be72a5a3e32847c1956ad55b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac5f1fc3b89e66c32ac3cef82a8acfa478f10ff9b1b9fcf1aeb38d298f12ba8c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b66cf2d-5d9c-3c2a-7817-2cb72493f9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vaughan_identity (U V : ℕ) :
    vonMangoldt = shortPart V vonMangoldt +
      shortPart U (moebius : ArithmeticFunction ℝ) * log -
      shortPart U (moebius : ArithmeticFunction ℝ) * shortPart V vonMangoldt *
        (zeta : ArithmeticFunction ℝ) +
      longPart U (moebius : ArithmeticFunction ℝ) * longPart V vonMangoldt *
        (zeta : ArithmeticFunction ℝ) := by
  have hi := coe_moebius_mul_coe_zeta (R := ℝ)
  have hl := vonMangoldt_mul_zeta
  have hm := moebius_mul_log_eq_vonMangoldt
  dsimp only [longPart]
  rw [← hl]
  calc
    vonMangoldt = (moebius : ArithmeticFunction ℝ) * vonMangoldt *
        (zeta : ArithmeticFunction ℝ) := by
      rw [mul_assoc, hl, hm]
    _ = _ := by
      have hshort : (moebius : ArithmeticFunction ℝ) * shortPart V vonMangoldt *
          (zeta : ArithmeticFunction ℝ) =
          shortPart V vonMangoldt := by
        rw [mul_right_comm, hi, one_mul]
      linear_combination hshort

/-- The exact signed long-divisor coefficient, including its value at one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F5db0996c81d4ffea36fEstimateVaughanIdentity/Variant448b9e9bdcd4052d59b24a1c73214f9f5bba8aed9eda2e654cf67405a330232f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa3662eecdd5b7be72a5a3e32847c1956ad55b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
