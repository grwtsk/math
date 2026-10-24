# dft_even_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:455aa42b-87b6-9f7a-9c22-6e23abe5c7c5",
  "kind": "lemma",
  "lexical_name": "dft_even_iff",
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
  "slug": "dft-even-iff--47037f75050bfa07a29d0b0e",
  "source": {
    "blob": "48b93d45b1d17a9379277cc9fa5b5c7dd670fbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47037f75050bfa07a29d0b0e3b1f70708d443530f7a74bdf64c7bef438118ba2",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:455aa42b-87b6-9f7a-9c22-6e23abe5c7c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dft_even_iff {Φ : ZMod N → ℂ} : (𝓕 Φ).Even ↔ Φ.Even := by
  have h {f : ZMod N → ℂ} (hf : f.Even) : (𝓕 f).Even := by
    simp only [Function.Even, ← congr_fun (dft_comp_neg f), funext hf, implies_true]
  refine ⟨fun hΦ x ↦ ?_, h⟩
  simpa only [neg_neg, smul_right_inj (NeZero.ne (N : ℂ)), dft_dft] using h hΦ (-x)

/-- The discrete Fourier transform of `Φ` is odd if and only if `Φ` itself is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZMod/Variant9814a91550ea63646a0a5b55b4b314a96113b4586babe252ab33c63ae334499e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b93d45b1d17a9379277cc9fa5b5c7dd670fbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
