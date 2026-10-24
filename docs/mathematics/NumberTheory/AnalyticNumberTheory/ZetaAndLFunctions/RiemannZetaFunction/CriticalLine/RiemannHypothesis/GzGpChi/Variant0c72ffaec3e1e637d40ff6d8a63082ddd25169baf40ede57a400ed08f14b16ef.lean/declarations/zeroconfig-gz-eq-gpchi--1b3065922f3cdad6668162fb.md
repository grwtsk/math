# ZeroConfig.Gz_eq_GpChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a9e4eee8176d095c9c019ce1873c280358ce2c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e60c0fca-5f4a-dca7-bc6f-a28b958b2211",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:926dd927-3318-cc72-4d8d-b77bdf0f7e6a",
  "kind": "theorem",
  "lexical_name": "ZeroConfig.Gz_eq_GpChi",
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
  "slug": "zeroconfig-gz-eq-gpchi--1b3065922f3cdad6668162fb",
  "source": {
    "blob": "7a9e4eee8176d095c9c019ce1873c280358ce2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3065922f3cdad6668162fbccddb74a1312c9640cdf471644083c9269add35d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:926dd927-3318-cc72-4d8d-b77bdf0f7e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZeroConfig.Gz_eq_GpChi (Z : ZeroConfig) (P : Params) (κ q : ℕ) (c : ℕ → ℂ) (T : ℝ)
    (hEF : ThmE.ExplicitFormulaPaperChi κ q c Z) (hL : 0 < P.L T)
    (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) :
    Z.Gz P T = ThmE.GpChi P κ q c T := by
  ext k l
  obtain ⟨-, -, hW⟩ := hEF (P.L T) hL (P.fk T k) (P.fk T l) (GzGp.fk_contDiff P T hφC2 k)
    (GzGp.fk_contDiff P T hφC2 l) (GzGp.fk_tsupport P T hφsupp k) (GzGp.fk_tsupport P T hφsupp l)
  rw [GzGp.Gz_eq_W, hW, GzGpChi.EFrhs_eq_GpChi]

/-- Under H-EF(χ) the zero-side entries are absolutely summable (for the χ-tail file). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GzGpChi/Variant0c72ffaec3e1e637d40ff6d8a63082ddd25169baf40ede57a400ed08f14b16ef.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9e4eee8176d095c9c019ce1873c280358ce2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
