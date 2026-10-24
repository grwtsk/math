# norm_integral_le_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4cd6d51dc28138c2a2aa05ca63204735a9a5c22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 774,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38cf4f90-7772-1a91-d402-7b2889667c36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75d53036-c141-a182-ef7c-0d09b49e146c",
  "kind": "theorem",
  "lexical_name": "norm_integral_le_of_norm_le_const",
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
  "slug": "norm-integral-le-of-norm-le-const--1da52aa4fcc065a2dc899aa5",
  "source": {
    "blob": "e4cd6d51dc28138c2a2aa05ca63204735a9a5c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 774,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1da52aa4fcc065a2dc899aa504f2c2dd21f03cafc11d9a57899355505dce6a4c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d53036-c141-a182-ef7c-0d09b49e146c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_le_of_norm_le_const [IsFiniteMeasure μ.variation]
    {C : ℝ} (h : ∀ᵐ x ∂μ.variation, ‖f x‖ ≤ C) :
    ‖∫ᵛ x, f x ∂[B; μ]‖ ≤ C * ‖B‖ * μ.variation.real univ := calc
  ‖∫ᵛ x, f x ∂[B; μ]‖
  _ ≤ ‖B‖ * (∫⁻ a, ENNReal.ofReal ‖f a‖ ∂μ.variation).toReal :=
    norm_integral_le_lintegral_norm
  _ ≤ ‖B‖ * (∫⁻ a, ENNReal.ofReal C ∂μ.variation).toReal := by
    gcongr 1
    apply ENNReal.toReal_mono
    · simp only [lintegral_const, ne_eq]
      finiteness
    · apply lintegral_mono_ae
      filter_upwards [h] with x hx using ENNReal.ofReal_mono hx
  _ = ‖B‖ * (C * μ.variation.real univ) := by
    by_cases hμ : μ.variation = 0
    · simp [hμ]
    have : (ae μ.variation).NeBot := ae_neBot.mpr hμ
    have hC : 0 ≤ C := by
      obtain ⟨x, hx⟩ := h.exists
      exact (norm_nonneg _).trans hx
    simp [ENNReal.toReal_ofReal hC, Measure.real]
  _ = C * ‖B‖ * μ.variation.real univ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cd6d51dc28138c2a2aa05ca63204735a9a5c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
