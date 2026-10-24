# topology_eq_iff_same_sheaves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df53b04b-0702-ff0b-a52a-f224a6af666f",
  "kind": "theorem",
  "lexical_name": "topology_eq_iff_same_sheaves",
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
  "slug": "topology-eq-iff-same-sheaves--4c97d17123f482a437b54b9c",
  "source": {
    "blob": "3e747bc9800c1664f63d0a2d294931606f5e88bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c97d17123f482a437b54b9c8afaaafab31c681da2a1181203d44a15bb4b121e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df53b04b-0702-ff0b-a52a-f224a6af666f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topology_eq_iff_same_sheaves {J₁ J₂ : GrothendieckTopology C} :
    J₁ = J₂ ↔ ∀ P : Cᵒᵖ ⥤ Type max v u, Presieve.IsSheaf J₁ P ↔ Presieve.IsSheaf J₂ P := by
  constructor
  · rintro rfl
    intro P
    rfl
  · intro h
    apply le_antisymm
    · apply le_topology_of_closedSieves_isSheaf
      rw [h]
      apply classifier_isSheaf
    · apply le_topology_of_closedSieves_isSheaf
      rw [← h]
      apply classifier_isSheaf

/--
A closure (increasing, inflationary and idempotent) operation on sieves that commutes with pullback
induces a Grothendieck topology.
In fact, such operations are in bijection with Grothendieck topologies.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e747bc9800c1664f63d0a2d294931606f5e88bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
