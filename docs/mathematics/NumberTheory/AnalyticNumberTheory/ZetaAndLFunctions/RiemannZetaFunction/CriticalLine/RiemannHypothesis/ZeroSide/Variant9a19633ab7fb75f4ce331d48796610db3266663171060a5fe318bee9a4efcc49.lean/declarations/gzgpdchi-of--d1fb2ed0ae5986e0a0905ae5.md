# GzGpDChi_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:713dedf5-66bf-e386-d441-3f5235d82576",
  "kind": "theorem",
  "lexical_name": "GzGpDChi_of",
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
  "slug": "gzgpdchi-of--d1fb2ed0ae5986e0a0905ae5",
  "source": {
    "blob": "36ca378882fde287aa5cb10747149ab8f8486fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variant9a19633ab7fb75f4ce331d48796610db3266663171060a5fe318bee9a4efcc49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1fb2ed0ae5986e0a0905ae5b0f87e68aebc12d1b45d28799e90279b638793dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variant9a19633ab7fb75f4ce331d48796610db3266663171060a5fe318bee9a4efcc49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:713dedf5-66bf-e386-d441-3f5235d82576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GzGpDChi_of (Z : ZeroConfig) {κ q : ℕ} {c : ℕ → ℂ} (hP : P.Valid)
    (hEF : ExplicitFormulaPaperChi κ q c Z) {T : ℝ} (h8 : 8 * P.w ≤ P.L T) :
    Z.Gz (P.atD T) T = GpChi (P.atD T) κ q c T := by
  have hW := admWindow_params hP h8
  have hL : 0 < P.L T := by linarith [hP.one_le_w]
  refine Z.Gz_eq_GpChi (P.atD T) κ q c T hEF hL ?_ ?_
  · rw [Params.atD_phi_valid T hP]; exact hW.vC_contDiff
  · rw [Params.atD_phi_valid T hP]
    exact closure_minimal hW.support_subset isClosed_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variant9a19633ab7fb75f4ce331d48796610db3266663171060a5fe318bee9a4efcc49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Variant9a19633ab7fb75f4ce331d48796610db3266663171060a5fe318bee9a4efcc49.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36ca378882fde287aa5cb10747149ab8f8486fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
