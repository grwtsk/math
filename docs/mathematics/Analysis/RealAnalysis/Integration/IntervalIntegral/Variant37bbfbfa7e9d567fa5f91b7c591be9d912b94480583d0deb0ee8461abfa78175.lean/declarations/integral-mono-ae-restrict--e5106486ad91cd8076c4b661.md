# integral_mono_ae_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695a9112542db70e1ac3085b50b76d4586b6e358",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d1f368c-ecf0-504e-c230-6aafb8af6842",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1abe235-9703-1d8b-8a83-1b6213398485",
  "kind": "theorem",
  "lexical_name": "integral_mono_ae_restrict",
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
  "slug": "integral-mono-ae-restrict--e5106486ad91cd8076c4b661",
  "source": {
    "blob": "695a9112542db70e1ac3085b50b76d4586b6e358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1386,
    "line": 1381,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5106486ad91cd8076c4b661e279c0d3e2f6ecfda6cd5c11c43cd48bf58338b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1abe235-9703-1d8b-8a83-1b6213398485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1381–1386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mono_ae_restrict (h : f ≤ᵐ[μ.restrict (Icc a b)] g) :
    (∫ u in a..b, f u ∂μ) ≤ ∫ u in a..b, g u ∂μ := by
  let H := h.filter_mono <| ae_mono <| Measure.restrict_mono Ioc_subset_Icc_self <| le_refl μ
  simpa only [integral_of_le hab] using set_integral_mono_ae_restrict hf.1 hg.1 H
#align interval_integral.integral_mono_ae_restrict intervalIntegral.integral_mono_ae_restrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean#L1381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695a9112542db70e1ac3085b50b76d4586b6e358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
