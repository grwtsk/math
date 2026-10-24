# isEmpty_of_commSq_sigmaι_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37aed295-5c31-ae36-158b-97501a8c223b",
  "kind": "lemma",
  "lexical_name": "isEmpty_of_commSq_sigmaι_of_ne",
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
  "slug": "isempty-of-commsq-sigma-of-ne--44f0c08b48598dcb5ac262ed",
  "source": {
    "blob": "b005adb113bc71f9946915f4ae7137fe6dff3b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 215,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f0c08b48598dcb5ac262ed9b3938d148303a23a739c5c7c52c9c4a18b78856",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37aed295-5c31-ae36-158b-97501a8c223b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmpty_of_commSq_sigmaι_of_ne [Small.{u} σ] {i j : σ} {Z : Scheme.{u}} {a : Z ⟶ g i}
    {b : Z ⟶ g j} (h : CommSq a b (Sigma.ι g i) (Sigma.ι g j)) (hij : i ≠ j) :
    IsEmpty Z := by
  refine ⟨fun z ↦ ?_⟩
  fapply eq_bot_iff.mp <| disjoint_iff.mp <| disjoint_opensRange_sigmaι g i j hij
  · exact (a ≫ Sigma.ι g i).base z
  · exact ⟨⟨a.base z, rfl⟩, ⟨b.base z, by rw [← Scheme.Hom.comp_apply, h.w]⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b005adb113bc71f9946915f4ae7137fe6dff3b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
