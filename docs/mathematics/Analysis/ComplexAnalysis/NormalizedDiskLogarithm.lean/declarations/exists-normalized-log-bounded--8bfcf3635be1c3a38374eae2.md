# exists_normalized_log_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01bc325f-9444-9891-207d-b55bf48f55a2",
  "kind": "theorem",
  "lexical_name": "exists_normalized_log_bounded",
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
  "slug": "exists-normalized-log-bounded--8bfcf3635be1c3a38374eae2",
  "source": {
    "blob": "aaf1fb8d46341790cb57331e575174e918657c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfcf3635be1c3a38374eae295b712afa95cf823de691174aee05b010125c1c0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01bc325f-9444-9891-207d-b55bf48f55a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalized_log_bounded (g : ℂ → ℂ) (r M η : ℝ)
    (hr : 0 < r) (hM : 0 < M) (hη : 0 < η)
    (hg : DifferentiableOn ℂ g (ball 0 r))
    (hn : ∀ z ∈ ball 0 r, g z ≠ 0)
    (hbound : ∀ z ∈ ball 0 r, ‖g z‖ ≤ M) (hfloor : η ≤ ‖g 0‖) :
    ∃ L : ℂ → ℂ, L 0 = 0 ∧ DifferentiableOn ℂ L (ball 0 r) ∧
      (∀ z ∈ ball 0 r, HasDerivAt L (logDeriv g z) z) ∧
      (∀ z ∈ ball 0 r, g z = g 0 * Complex.exp (L z)) ∧
      (∀ z ∈ ball 0 r, (L z).re ≤ Real.log (M / η)) := by
  obtain ⟨L, h0, hd, he⟩ := exists_normalized_log g r hr hg hn
  exact ⟨L, h0, differentiableOn_of_log_derivative g L r hd, hd, he,
    fun z hz => re_log_le_of_modulus g L M η hM hη hfloor z (hbound z hz) (he z hz)⟩

end
end GRWTSK.Analysis.Complex.NormalizedDiskLogarithm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf1fb8d46341790cb57331e575174e918657c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
