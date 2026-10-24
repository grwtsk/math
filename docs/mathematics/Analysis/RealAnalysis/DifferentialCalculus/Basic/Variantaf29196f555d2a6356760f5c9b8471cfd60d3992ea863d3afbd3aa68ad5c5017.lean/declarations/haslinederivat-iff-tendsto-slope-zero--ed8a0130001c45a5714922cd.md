# hasLineDerivAt_iff_tendsto_slope_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b891e8c52c06fe1ff0248c24d05196656357aaf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:264e50dd-bc3b-5ed8-53af-38340a66e8ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:216bf063-9323-ba29-2b26-3b2fc27e9a13",
  "kind": "theorem",
  "lexical_name": "hasLineDerivAt_iff_tendsto_slope_zero",
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
  "slug": "haslinederivat-iff-tendsto-slope-zero--ed8a0130001c45a5714922cd",
  "source": {
    "blob": "b891e8c52c06fe1ff0248c24d05196656357aaf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed8a0130001c45a5714922cdfb6cf762a9a75b11d9e0fd1f6862cf7967335d16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:216bf063-9323-ba29-2b26-3b2fc27e9a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasLineDerivAt_iff_tendsto_slope_zero :
    HasLineDerivAt 𝕜 f f' x v ↔
      Tendsto (fun (t : 𝕜) ↦ t⁻¹ • (f (x + t • v) - f x)) (𝓝[≠] 0) (𝓝 f') := by
  simp only [HasLineDerivAt, hasDerivAt_iff_tendsto_slope_zero, zero_add,
    zero_smul, add_zero]

alias ⟨HasLineDerivAt.tendsto_slope_zero, _⟩ := hasLineDerivAt_iff_tendsto_slope_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b891e8c52c06fe1ff0248c24d05196656357aaf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
