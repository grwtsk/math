# fourier_surjection_on_schwartz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1841,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:855a5f3f-47a8-78bd-559e-a8dff5b557a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:755d1321-66ba-17eb-b7bb-2f075f8495f8",
  "kind": "lemma",
  "lexical_name": "fourier_surjection_on_schwartz",
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
  "slug": "fourier-surjection-on-schwartz--b14d435507a6c01dd7c6f2dd",
  "source": {
    "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1847,
    "line": 1841,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b14d435507a6c01dd7c6f2dddbe4222b0412de7f44926ba31cb1a37f1bddd4e3",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755d1321-66ba-17eb-b7bb-2f075f8495f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1841–1847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fourier_surjection_on_schwartz (f : 𝓢(ℝ, ℂ)) : ∃ g : 𝓢(ℝ, ℂ), 𝓕 g = f := by
  refine ⟨𝓕⁻ f, ?_⟩
  exact FourierTransform.fourier_fourierInv_eq f




```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean#L1841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
