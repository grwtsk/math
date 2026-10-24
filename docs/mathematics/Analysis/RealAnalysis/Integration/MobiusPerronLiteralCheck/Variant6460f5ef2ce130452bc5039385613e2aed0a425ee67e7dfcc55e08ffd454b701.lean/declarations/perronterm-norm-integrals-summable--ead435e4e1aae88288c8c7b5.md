# perronTerm_norm_integrals_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57285338a8e48d13e635158ddd5e72d38ccf42d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37a4c134-9497-edea-f197-265277e60e8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc30e3d6-becf-8d45-1447-91e6f03abc36",
  "kind": "theorem",
  "lexical_name": "perronTerm_norm_integrals_summable",
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
  "slug": "perronterm-norm-integrals-summable--ead435e4e1aae88288c8c7b5",
  "source": {
    "blob": "57285338a8e48d13e635158ddd5e72d38ccf42d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead435e4e1aae88288c8c7b5f6bdb3ec2dc4e425fe2e407910aff468428eb23d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc30e3d6-becf-8d45-1447-91e6f03abc36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perronTerm_norm_integrals_summable (c x : ℝ) (hc : 0 < c) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖perronTerm c x n t‖) := by
  have hs : Summable (LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
      (1 + (c : ℂ))) :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr (by simpa using hc)
  simpa only [perronTerm_norm, integral_const_mul] using
    hs.norm.mul_right (∫ t : ℝ, ‖perronIntegrand c x t‖)

/-- The pointwise sum is the original actual zeta Perron integrand in the initial half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57285338a8e48d13e635158ddd5e72d38ccf42d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
