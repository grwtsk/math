# wOppSide_vadd_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae0a5224baf6893de503a4ee59332117570d4b36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4e78dfd-6de4-e811-e675-cf09ccb4c383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05e08ee6-e0f8-4002-add0-ec9253bd9d09",
  "kind": "theorem",
  "lexical_name": "wOppSide_vadd_left_iff",
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
  "slug": "woppside-vadd-left-iff--a59429e9884e00cfea194481",
  "source": {
    "blob": "ae0a5224baf6893de503a4ee59332117570d4b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 256,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a59429e9884e00cfea194481d04e60d81f26b95e424fce0a38442d5de12e08ab",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05e08ee6-e0f8-4002-add0-ec9253bd9d09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wOppSide_vadd_left_iff {s : AffineSubspace R P} {x y : P} {v : V} (hv : v ∈ s.direction) :
    s.WOppSide (v +ᵥ x) y ↔ s.WOppSide x y := by
  constructor
  · rintro ⟨p₁, hp₁, p₂, hp₂, h⟩
    refine
      ⟨-v +ᵥ p₁, AffineSubspace.vadd_mem_of_mem_direction (Submodule.neg_mem _ hv) hp₁, p₂, hp₂, ?_⟩
    rwa [vsub_vadd_eq_vsub_sub, sub_neg_eq_add, add_comm, ← vadd_vsub_assoc]
  · rintro ⟨p₁, hp₁, p₂, hp₂, h⟩
    refine ⟨v +ᵥ p₁, AffineSubspace.vadd_mem_of_mem_direction hv hp₁, p₂, hp₂, ?_⟩
    rwa [vadd_vsub_vadd_cancel_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0a5224baf6893de503a4ee59332117570d4b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
