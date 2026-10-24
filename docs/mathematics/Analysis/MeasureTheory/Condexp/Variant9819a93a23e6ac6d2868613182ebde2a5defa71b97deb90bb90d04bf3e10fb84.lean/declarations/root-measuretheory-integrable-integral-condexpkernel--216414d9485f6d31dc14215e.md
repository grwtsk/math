# _root_.MeasureTheory.Integrable.integral_condExpKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66619490154c031ff8f1a001d358753cf58448e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd9a237d-bf8c-db2d-3848-de9490831687",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06a893d1-40dd-69d8-a66b-0fc49e2777d8",
  "kind": "theorem",
  "lexical_name": "_root_.MeasureTheory.Integrable.integral_condExpKernel",
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
  "slug": "root-measuretheory-integrable-integral-condexpkernel--216414d9485f6d31dc14215e",
  "source": {
    "blob": "66619490154c031ff8f1a001d358753cf58448e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:216414d9485f6d31dc14215e593dd2d18e454ec3000f0da9cbd8a90057ff8c85",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a893d1-40dd-69d8-a66b-0fc49e2777d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasureTheory.Integrable.integral_condExpKernel [NormedSpace ℝ F]
    (hf_int : Integrable f μ) :
    Integrable (fun ω => ∫ y, f y ∂condExpKernel μ m ω) μ := by
  nontriviality Ω
  rw [condExpKernel_eq]
  convert!
    Integrable.integral_condDistrib (aemeasurable_id'' μ (inf_le_right : m ⊓ mΩ ≤ mΩ))
      aemeasurable_id (hf_int.comp_snd_map_prod_id inf_le_right) using 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant9819a93a23e6ac6d2868613182ebde2a5defa71b97deb90bb90d04bf3e10fb84.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66619490154c031ff8f1a001d358753cf58448e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
