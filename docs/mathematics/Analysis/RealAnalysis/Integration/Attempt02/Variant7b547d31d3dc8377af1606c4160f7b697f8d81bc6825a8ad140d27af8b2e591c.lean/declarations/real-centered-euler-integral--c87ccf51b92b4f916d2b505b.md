# real_centered_euler_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad2c51fd-dbe7-520e-3ed0-d40ac7e25449",
  "kind": "theorem",
  "lexical_name": "real_centered_euler_integral",
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
  "slug": "real-centered-euler-integral--c87ccf51b92b4f916d2b505b",
  "source": {
    "blob": "4e0d0d185dab22e2f5bc5d0e8be8214f94e1e341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87ccf51b92b4f916d2b505bccd25a3bc43592669398144cf19f5e0b5d053394",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad2c51fd-dbe7-520e-3ed0-d40ac7e25449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_centered_euler_integral {σ : ℝ} (hσ : 0 < σ) :
    (∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) =
      1 / (2 * σ) - ∫ u in Ioi (1 : ℝ), fractionalWeight σ u := by
  have hi : IntegrableOn (fun u : ℝ => u ^ (-σ - 1)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  have he : (fun u : ℝ => ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-σ - 1)) =
      fun u => (1 / 2 : ℝ) * u ^ (-σ - 1) - fractionalWeight σ u := by
    funext u
    simp only [fractionalWeight, Int.fract]
    ring
  rw [he, integral_sub (hi.const_mul _) (fractionalWeight_integrable hσ),
    integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -σ - 1 < -1) (by norm_num)]
  simp
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant7b547d31d3dc8377af1606c4160f7b697f8d81bc6825a8ad140d27af8b2e591c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0d0d185dab22e2f5bc5d0e8be8214f94e1e341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
