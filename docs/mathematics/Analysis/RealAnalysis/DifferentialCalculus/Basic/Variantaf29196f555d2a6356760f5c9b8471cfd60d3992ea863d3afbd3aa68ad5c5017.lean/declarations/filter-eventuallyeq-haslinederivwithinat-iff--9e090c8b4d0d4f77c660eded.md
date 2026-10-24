# Filter.EventuallyEq.hasLineDerivWithinAt_iff

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
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebbcaa1f-8bcc-c609-449e-25dea2a2913b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebf9e28-4cb6-9f34-e5b7-061916a3e250",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.hasLineDerivWithinAt_iff",
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
  "slug": "filter-eventuallyeq-haslinederivwithinat-iff--9e090c8b4d0d4f77c660eded",
  "source": {
    "blob": "b891e8c52c06fe1ff0248c24d05196656357aaf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 330,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e090c8b4d0d4f77c660ededebc4268afd112f9ce319816f223b06eac9cdd170",
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

Occurrence: `result:bebf9e28-4cb6-9f34-e5b7-061916a3e250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.hasLineDerivWithinAt_iff (h : f₀ =ᶠ[𝓝[s] x] f₁) (hx : f₀ x = f₁ x) :
    HasLineDerivWithinAt 𝕜 f₀ f' s x v ↔ HasLineDerivWithinAt 𝕜 f₁ f' s x v := by
  apply hasDerivWithinAt_iff
  · have A : Continuous (fun (t : 𝕜) ↦ x + t • v) := by fun_prop
    exact A.continuousWithinAt.preimage_mem_nhdsWithin'' h (by simp)
  · simpa using hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantaf29196f555d2a6356760f5c9b8471cfd60d3992ea863d3afbd3aa68ad5c5017.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b891e8c52c06fe1ff0248c24d05196656357aaf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
