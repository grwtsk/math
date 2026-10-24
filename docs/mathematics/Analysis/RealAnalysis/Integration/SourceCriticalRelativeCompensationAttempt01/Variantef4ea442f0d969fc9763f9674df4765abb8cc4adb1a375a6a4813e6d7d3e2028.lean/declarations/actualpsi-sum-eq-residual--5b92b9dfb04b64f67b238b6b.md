# actualPsi_sum_eq_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41c04aaf-370c-1ca3-c249-61a4e7dfc09d",
  "kind": "theorem",
  "lexical_name": "actualPsi_sum_eq_residual",
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
  "slug": "actualpsi-sum-eq-residual--5b92b9dfb04b64f67b238b6b",
  "source": {
    "blob": "7b4441bad691c1421c789614db2a608a382f59a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b92b9dfb04b64f67b238b6bc18d02ff57c8b984aed2782d461f1083c36f0f90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c04aaf-370c-1ca3-c249-61a4e7dfc09d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsi_sum_eq_residual {A : ℝ} (hA : 1 ≤ A) :
    (∑ n ∈ Finset.Icc 0 ⌊Real.exp (2 * A)⌋₊,
      plainProfile A 1 n * ArithmeticFunction.vonMangoldt n) = mertensResidual A := by
  rw [← integer_cutoff_eq, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  have hz : ArithmeticFunction.vonMangoldt 0 = (0 : ℝ) := by simp
  rw [hz, mul_zero, zero_add, ← Finset.Icc_add_one_left_eq_Ioc]
  rw [mangoldt_integer_inventory hA]
  apply Finset.sum_congr rfl
  intro n _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4441bad691c1421c789614db2a608a382f59a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
