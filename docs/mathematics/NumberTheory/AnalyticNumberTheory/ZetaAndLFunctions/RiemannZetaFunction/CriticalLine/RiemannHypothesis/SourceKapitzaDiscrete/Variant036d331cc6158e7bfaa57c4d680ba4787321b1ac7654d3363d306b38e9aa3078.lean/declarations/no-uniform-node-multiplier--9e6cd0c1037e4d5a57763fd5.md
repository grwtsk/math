# no_uniform_node_multiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1ffc50d-2318-ce25-b2ee-a827ecd8e882",
  "kind": "theorem",
  "lexical_name": "no_uniform_node_multiplier",
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
  "slug": "no-uniform-node-multiplier--9e6cd0c1037e4d5a57763fd5",
  "source": {
    "blob": "b203e708acc3c94ce062bc2d36fcbc85e604b659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e6cd0c1037e4d5a57763fd5e4e486e16f50255d2428e922b6b3c033027d6245",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1ffc50d-2318-ce25-b2ee-a827ecd8e882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_node_multiplier {rho : ℝ} (hrho : rho < 1) :
    ∃ n : ℕ, 1 ≤ n ∧ rho < (n : ℝ) / (n + 1 : ℕ) := by
  have hgap : 0 < 1 - rho := by linarith
  obtain ⟨n, hn⟩ := exists_nat_gt (max 1 (rho / (1 - rho)))
  have hn1 : (1 : ℝ) < n := (le_max_left _ _).trans_lt hn
  have hnratio : rho / (1 - rho) < (n : ℝ) := (le_max_right _ _).trans_lt hn
  have hb := (div_lt_iff₀ hgap).mp hnratio
  refine ⟨n, ?_, ?_⟩
  · exact_mod_cast hn1.le
  · have hnext0 : (0 : ℝ) < (n + 1 : ℕ) := by positivity
    apply (lt_div_iff₀ hnext0).mpr
    push_cast
    nlinarith

/-- Exact accumulated compensated forcing; this is deterministic prefix error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b203e708acc3c94ce062bc2d36fcbc85e604b659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
