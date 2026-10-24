# infiniteTimeRepresentable_covered_by_extendedEML

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d822426eb88c8f3cd092e00798e4b7aae4e396",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/320663a30e74da876670f4571ef50a50e48e0ee3963ca124cd30f4ce79ac9157.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d497544-23ba-7c51-c198-06d2508a5aac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a72a9b6b-029c-4308-4151-5e921cce2a94",
  "kind": "theorem",
  "lexical_name": "infiniteTimeRepresentable_covered_by_extendedEML",
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
  "slug": "infinitetimerepresentable-covered-by-extendedeml--47da4f26ed59c27c8209602f",
  "source": {
    "blob": "d3d822426eb88c8f3cd092e00798e4b7aae4e396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 215,
    "path": "GRWTSK/Analysis/SpecialFunctions/CoverageProofs/Variant320663a30e74da876670f4571ef50a50e48e0ee3963ca124cd30f4ce79ac9157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47da4f26ed59c27c8209602fb23a0969a9e48602fd7d4ac2af38a0de2ed3e074",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CoverageProofs/Variant320663a30e74da876670f4571ef50a50e48e0ee3963ca124cd30f4ce79ac9157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a72a9b6b-029c-4308-4151-5e921cce2a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infiniteTimeRepresentable_covered_by_extendedEML :
    ∀ Γ,
      Gamma.Valid Γ ->
      LogicalFoundation.infiniteTime ≤ Γ.logicalFoundation ->
        ∀ f : InfiniteTimeRepresentableFunction,
          CoveredByExtendedEMLAt Γ
            (DeclaredSurfaceObject.infiniteTime f) := by
  intro Γ hΓ h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ hΓ (DeclaredSurfaceObject.infiniteTime f) h

end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CoverageProofs/Variant320663a30e74da876670f4571ef50a50e48e0ee3963ca124cd30f4ce79ac9157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CoverageProofs/Variant320663a30e74da876670f4571ef50a50e48e0ee3963ca124cd30f4ce79ac9157.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d822426eb88c8f3cd092e00798e4b7aae4e396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
