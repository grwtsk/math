# primitive_round

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4395a33-0c44-f739-8570-f6e8a53a42e6",
  "kind": "theorem",
  "lexical_name": "primitive_round",
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
  "slug": "primitive-round--793685afa2f9bb4246214069",
  "source": {
    "blob": "71b48708f6fdedf4bf0f8a618c26248b7a90c6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:793685afa2f9bb42462140690da3dbfcf8f3d7a0b3b04c6cfa21fac9602a035f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4395a33-0c44-f739-8570-f6e8a53a42e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_round (hT : SortedAt P Γ T I) (mT : WellModed γ T .data) {a : Expr S}
    (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data)
    (ha : HasType P Γ a T) (ma : WellModed γ a .data) :
    Equivalent P Γ γ (R.logical.observe T (R.round T y) a) (R.logical.observe T y a) := by
  have hraw := h.toRaw_typed hT mT hy my
  have hround := h.round_typed hT mT hy my
  have he₁ := h.raw.reencode_evaluation h.logical hT mT hraw.1 hraw.2 ha ma
  have he₂ := h.logical.reencode_evaluation h.raw hT mT hy my ha ma
  have hf₁ := (h.logical.sound hT mT).2 _ a hround.1 hround.2 ⟨ha,ma⟩
  have hf₂ := (h.raw.sound hT mT).2 _ a hraw.1 hraw.2 ⟨ha,ma⟩
  have hf₃ := (h.logical.sound hT mT).2 _ a hy my ⟨ha,ma⟩
  obtain ⟨s,hs⟩ := L.triple.codomain.1
  exact he₁.trans he₂ (hf₁.1 s hs) (hf₂.1 s hs) (hf₃.1 s hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b48708f6fdedf4bf0f8a618c26248b7a90c6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
