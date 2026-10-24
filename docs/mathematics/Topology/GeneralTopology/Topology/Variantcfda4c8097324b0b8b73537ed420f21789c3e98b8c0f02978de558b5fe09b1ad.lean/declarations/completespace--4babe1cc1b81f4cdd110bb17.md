# completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:571935fb-26d2-aaa7-40ae-9483c341c322",
  "kind": "theorem",
  "lexical_name": "completeSpace",
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
  "slug": "completespace--4babe1cc1b81f4cdd110bb17",
  "source": {
    "blob": "360f251c122bc58349a4de4fd10b69e16028234a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4babe1cc1b81f4cdd110bb17c72a66214d0936dd79eee3899d51503c0b417c20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:571935fb-26d2-aaa7-40ae-9483c341c322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeSpace (h : IsCoherentWith {s : Set (ι → E) | IsVonNBounded 𝕜 s}) :
    CompleteSpace (E [⋀^ι]→L[𝕜] F) := by
  wlog hF : T2Space F generalizing F
  · rw [(isUniformInducing_postcomp (SeparationQuotient.mkCLM _ _)
      SeparationQuotient.isUniformInducing_mk).completeSpace_congr]
    · exact this inferInstance
    · intro f
      use (SeparationQuotient.outCLM _ _).compContinuousAlternatingMap f
      ext
      simp
  have := ContinuousMultilinearMap.completeSpace (F := F) h
  rw [completeSpace_iff_isComplete_range
    isUniformEmbedding_toContinuousMultilinearMap.isUniformInducing]
  apply isClosed_range_toContinuousMultilinearMap.isComplete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360f251c122bc58349a4de4fd10b69e16028234a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
