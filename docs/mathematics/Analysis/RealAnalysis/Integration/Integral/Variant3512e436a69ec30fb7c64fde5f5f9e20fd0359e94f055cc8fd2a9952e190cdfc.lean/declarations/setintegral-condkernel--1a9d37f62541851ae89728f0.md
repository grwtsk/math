# setIntegral_condKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a31ff181c79a08e50fc9489a66a11be45402a6d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2797058d-818e-e264-ceb5-8efd64c71ef6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:478c9dbd-9fd4-9a4b-df81-a0ef9079a22e",
  "kind": "lemma",
  "lexical_name": "setIntegral_condKernel",
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
  "slug": "setintegral-condkernel--1a9d37f62541851ae89728f0",
  "source": {
    "blob": "a31ff181c79a08e50fc9489a66a11be45402a6d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a9d37f62541851ae89728f0ef999a76960fd23950a53f3218ebc4fe69075f25",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:478c9dbd-9fd4-9a4b-df81-a0ef9079a22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_condKernel (a : α) {s : Set β} (hs : MeasurableSet s)
    {t : Set Ω} (ht : MeasurableSet t) (hf : IntegrableOn f (s ×ˢ t) (κ a)) :
    ∫ b in s, ∫ ω in t, f (b, ω) ∂(Kernel.condKernel κ (a, b)) ∂(Kernel.fst κ a)
      = ∫ x in s ×ˢ t, f x ∂(κ a) := by
  conv_rhs => rw [← κ.disintegrate κ.condKernel]
  rw [← κ.disintegrate κ.condKernel] at hf
  rw [setIntegral_compProd hs ht hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31ff181c79a08e50fc9489a66a11be45402a6d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
