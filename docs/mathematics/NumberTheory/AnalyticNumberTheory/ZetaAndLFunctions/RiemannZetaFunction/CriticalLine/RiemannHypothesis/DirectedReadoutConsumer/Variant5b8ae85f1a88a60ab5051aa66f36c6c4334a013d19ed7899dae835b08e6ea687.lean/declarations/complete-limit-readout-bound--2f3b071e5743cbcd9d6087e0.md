# complete_limit_readout_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff61dcf2-fd51-abab-cd28-8818119da91e",
  "kind": "theorem",
  "lexical_name": "complete_limit_readout_bound",
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
  "slug": "complete-limit-readout-bound--2f3b071e5743cbcd9d6087e0",
  "source": {
    "blob": "31d93dd9c7db43cdc0b570dd2ee403df95a7ac45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3b071e5743cbcd9d6087e060087e49a8b0ae9b94babee0af376ccfa98c126c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff61dcf2-fd51-abab-cd28-8818119da91e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_limit_readout_bound (ell : E →L[ℝ] ℝ) (v : ℕ → E) (x : E)
    (residual : ℕ → ℝ) (B : ℝ)
    (hv : Tendsto v atTop (𝓝 x)) (hr : Tendsto residual atTop (𝓝 0))
    (hcap : ∀ n, ell (v n) ≤ B + residual n) : ell x ≤ B := by
  have hupper : Tendsto (fun n ↦ B + residual n) atTop (𝓝 B) := by
    simpa only [add_zero] using tendsto_const_nhds.add hr
  exact le_of_tendsto_of_tendsto'
    (continuous_readout_of_strong_approximants ell v x hv) hupper hcap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DirectedReadoutConsumer/Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d93dd9c7db43cdc0b570dd2ee403df95a7ac45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
