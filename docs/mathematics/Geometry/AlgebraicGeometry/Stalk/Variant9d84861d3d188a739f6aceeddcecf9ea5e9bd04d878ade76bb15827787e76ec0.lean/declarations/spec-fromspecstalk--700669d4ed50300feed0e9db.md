# Spec_fromSpecStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:444a0321-092b-74dc-fc12-8791d079759e",
  "kind": "lemma",
  "lexical_name": "Spec_fromSpecStalk",
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
  "slug": "spec-fromspecstalk--700669d4ed50300feed0e9db",
  "source": {
    "blob": "22ef2229574d1a86a051c065d170f01f4e725f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:700669d4ed50300feed0e9db047e5c53b28ebda66c37a23298b698f1840ba595",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:444a0321-092b-74dc-fc12-8791d079759e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Spec_fromSpecStalk (R : CommRingCat) (x) :
    (Spec R).fromSpecStalk x =
      Spec.map ((ΓSpecIso R).inv ≫ (Spec R).presheaf.germ ⊤ x trivial) := by
  rw [← (isAffineOpen_top (Spec R)).fromSpecStalk_eq_fromSpecStalk (x := x) trivial,
    IsAffineOpen.fromSpecStalk, IsAffineOpen.fromSpec_top, isoSpec_Spec_inv,
    ← Spec.map_comp]

-- This is not a simp lemma to respect the abstraction boundaries
/-- A variant of `Spec_fromSpecStalk` that breaks abstraction boundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant9d84861d3d188a739f6aceeddcecf9ea5e9bd04d878ade76bb15827787e76ec0.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22ef2229574d1a86a051c065d170f01f4e725f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
