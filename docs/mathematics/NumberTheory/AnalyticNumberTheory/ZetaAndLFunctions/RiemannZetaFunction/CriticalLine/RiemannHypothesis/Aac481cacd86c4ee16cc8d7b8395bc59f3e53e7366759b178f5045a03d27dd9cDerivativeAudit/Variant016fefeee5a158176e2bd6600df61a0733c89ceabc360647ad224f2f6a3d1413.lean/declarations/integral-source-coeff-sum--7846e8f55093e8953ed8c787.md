# integral_source_coeff_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec0096e2-3ca3-c12b-fa9c-24ac539e7bb4",
  "kind": "theorem",
  "lexical_name": "integral_source_coeff_sum",
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
  "slug": "integral-source-coeff-sum--7846e8f55093e8953ed8c787",
  "source": {
    "blob": "85ad922c7a85164bd02ce37a3095840fb1b9fcf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7846e8f55093e8953ed8c7878763dddb5e7ed431e5154d4bd0d888b185f7a449",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0096e2-3ca3-c12b-fa9c-24ac539e7bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_source_coeff_sum (r : ℕ) (c : ℕ → ℝ) (t : ℝ) :
    (∫ u in Ici t, thetaPhi u * ∑ i ∈ Finset.range (r + 1), c i * u ^ i) =
      ∑ i ∈ Finset.range (r + 1), c i * sourcePowerTail i t := by
  simp_rw [Finset.mul_sum, show ∀ u i, thetaPhi u * (c i * u ^ i) =
    c i * (thetaPhi u * u ^ i) by intro u i; ring]
  rw [integral_finsetSum _ (fun i _ => (source_power_integrable i t).const_mul (c i))]
  apply Finset.sum_congr rfl
  intro i _
  unfold sourcePowerTail
  rw [← integral_const_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variant016fefeee5a158176e2bd6600df61a0733c89ceabc360647ad224f2f6a3d1413.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ad922c7a85164bd02ce37a3095840fb1b9fcf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
