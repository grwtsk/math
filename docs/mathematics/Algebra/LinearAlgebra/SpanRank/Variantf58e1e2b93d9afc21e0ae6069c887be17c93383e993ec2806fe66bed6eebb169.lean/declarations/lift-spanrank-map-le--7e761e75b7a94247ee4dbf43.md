# lift_spanRank_map_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b4d2de-e8b6-1bfa-e485-01ef8dd9c4a9",
  "kind": "lemma",
  "lexical_name": "lift_spanRank_map_le",
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
  "slug": "lift-spanrank-map-le--7e761e75b7a94247ee4dbf43",
  "source": {
    "blob": "712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e761e75b7a94247ee4dbf439769fe9ab47dd3c2454ee67f9cf0dd5354d95225",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b4d2de-e8b6-1bfa-e485-01ef8dd9c4a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_spanRank_map_le [RingHomSurjective σ] (f : M →ₛₗ[σ] L) (p : Submodule R M) :
    Cardinal.lift.{u} (p.map f).spanRank ≤ Cardinal.lift.{v} p.spanRank := by
  rw [← generators_card p, lift_spanRank_le_iff_exists_span_set_card_le]
  exact ⟨f '' p.generators, Cardinal.mk_image_le_lift, le_antisymm (span_le.2 (fun n ⟨m, hm, h⟩ ↦
    ⟨m, span_generators p ▸ subset_span hm, h⟩)) (by simp [span_generators])⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
