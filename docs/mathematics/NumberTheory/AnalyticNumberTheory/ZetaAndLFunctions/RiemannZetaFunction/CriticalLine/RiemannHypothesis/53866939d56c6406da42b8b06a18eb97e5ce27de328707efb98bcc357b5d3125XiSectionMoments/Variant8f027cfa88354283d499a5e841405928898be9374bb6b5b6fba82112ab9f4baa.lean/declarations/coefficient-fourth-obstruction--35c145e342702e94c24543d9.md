# coefficient_fourth_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e904f3e-f676-55af-55ba-4b5aff159d72",
  "kind": "theorem",
  "lexical_name": "coefficient_fourth_obstruction",
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
  "slug": "coefficient-fourth-obstruction--35c145e342702e94c24543d9",
  "source": {
    "blob": "0752982356d57261b597f25eb74a9ea7173b8bce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35c145e342702e94c24543d9876fcad235b5f5514effe915f455e48afb9d6462",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e904f3e-f676-55af-55ba-4b5aff159d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_fourth_obstruction (n : ℕ) (hn : 2 ≤ n) :
    coefficient (n + 1) ^ 2 < 2 * coefficient n * coefficient (n + 2) := by
  have h := coefficient_logConvex_factorial n
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hrat : (2 * (n : ℝ) + 4) * (2 * n + 3) <
      2 * ((2 * n + 2) * (2 * n + 1)) := by
    nlinarith [sq_nonneg ((n : ℝ) - 2)]
  have hp : 0 < coefficient n * coefficient (n + 2) := mul_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n)
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))
  have h' := h.trans_lt (mul_lt_mul_of_pos_left hrat hp)
  have hA : 0 < (2 * (n : ℝ) + 2) * (2 * n + 1) := by positivity
  apply (mul_lt_mul_iff_left₀ hA).mp
  convert h' using 1
  ring

end
end FormalResearch.RiemannHypothesis.XiSectionMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant8f027cfa88354283d499a5e841405928898be9374bb6b5b6fba82112ab9f4baa.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0752982356d57261b597f25eb74a9ea7173b8bce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
