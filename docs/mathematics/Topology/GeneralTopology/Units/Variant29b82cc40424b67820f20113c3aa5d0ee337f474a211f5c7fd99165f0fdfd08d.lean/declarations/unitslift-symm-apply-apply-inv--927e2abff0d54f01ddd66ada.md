# unitsLift_symm_apply_apply_inv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b3f1c22-6451-6c98-ceb6-725db596fea3",
  "kind": "lemma",
  "lexical_name": "unitsLift_symm_apply_apply_inv'",
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
  "slug": "unitslift-symm-apply-apply-inv--927e2abff0d54f01ddd66ada",
  "source": {
    "blob": "48f36b02ad5331409f9a76d0f00eddac5c6decf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:927e2abff0d54f01ddd66ada601b25c971a1499442ab38dabcd46e078c3ba7a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3f1c22-6451-6c98-ceb6-725db596fea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unitsLift_symm_apply_apply_inv' (f : C(X, M)ˣ) (x : X) :
    (ContinuousMap.unitsLift.symm f x)⁻¹ = (↑f⁻¹ : C(X, M)) x := by
  rfl

end Monoid

section NormedRing

variable [NormedRing R] [CompleteSpace R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant29b82cc40424b67820f20113c3aa5d0ee337f474a211f5c7fd99165f0fdfd08d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f36b02ad5331409f9a76d0f00eddac5c6decf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
