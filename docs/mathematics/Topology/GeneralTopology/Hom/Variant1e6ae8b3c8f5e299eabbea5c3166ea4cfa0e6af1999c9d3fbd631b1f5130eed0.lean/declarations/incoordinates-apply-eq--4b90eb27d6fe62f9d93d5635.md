# inCoordinates_apply_eq₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d468e17-f4f3-3290-0a9d-33d50dacd345",
  "kind": "theorem",
  "lexical_name": "inCoordinates_apply_eq₂",
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
  "slug": "incoordinates-apply-eq--4b90eb27d6fe62f9d93d5635",
  "source": {
    "blob": "3993c8dae956b9a125f3a0e350bd97dba3fe97cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 522,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b90eb27d6fe62f9d93d5635bd4a35e4c5ce7efac70acb9e4d75b6993e4647ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d468e17-f4f3-3290-0a9d-33d50dacd345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inCoordinates_apply_eq₂
    {x₀ x : B} {ϕ : E₁ x →L[𝕜] E₂ x →L[𝕜] E₃ x} {v : F₁} {w : F₂}
    (h₁x : x ∈ (trivializationAt F₁ E₁ x₀).baseSet)
    (h₂x : x ∈ (trivializationAt F₂ E₂ x₀).baseSet)
    (h₃x : x ∈ (trivializationAt F₃ E₃ x₀).baseSet) :
    inCoordinates F₁ E₁ (F₂ →L[𝕜] F₃) (fun x ↦ E₂ x →L[𝕜] E₃ x) x₀ x x₀ x ϕ v w =
    (trivializationAt F₃ E₃ x₀).linearMapAt 𝕜 x
      (ϕ ((trivializationAt F₁ E₁ x₀).symm x v) ((trivializationAt F₂ E₂ x₀).symm x w)) := by
  rw [inCoordinates_eq h₁x (by simp [h₂x, h₃x])]
  simp [hom_trivializationAt, Trivialization.continuousLinearMap_apply, h₂x]

end TwoVariables

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3993c8dae956b9a125f3a0e350bd97dba3fe97cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
