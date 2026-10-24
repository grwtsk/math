# lintegral_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceab01e59c172258e6c530cb297917c73e13f525",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8d63031-712a-40a0-98b3-e6ffd7fdf3fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3082eeb5-20f3-d2bb-f8a8-d43bbff10f42",
  "kind": "theorem",
  "lexical_name": "lintegral_map",
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
  "slug": "lintegral-map--8b9232f0f23e2b9cd26dbf99",
  "source": {
    "blob": "ceab01e59c172258e6c530cb297917c73e13f525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b9232f0f23e2b9cd26dbf99d311556c1ce5e2a64776b46f1823629cdb308e93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3082eeb5-20f3-d2bb-f8a8-d43bbff10f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_map {f : β → ℝ≥0∞} {g : α → β} (hf : Measurable f)
    (hg : Measurable g) : ∫⁻ a, f a ∂map g μ = ∫⁻ a, f (g a) ∂μ := by
  rw [lintegral_eq_iSup_eapprox_lintegral hf]
  simp only [← Function.comp_apply (f := f) (g := g)]
  rw [lintegral_eq_iSup_eapprox_lintegral (hf.comp hg)]
  congr with n : 1
  convert SimpleFunc.lintegral_map _ hg
  ext1 x; simp only [eapprox_comp hf hg, coe_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceab01e59c172258e6c530cb297917c73e13f525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
