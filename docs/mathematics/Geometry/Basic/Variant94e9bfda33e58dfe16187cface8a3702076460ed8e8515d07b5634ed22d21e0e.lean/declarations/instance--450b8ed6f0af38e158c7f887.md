# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2f0bb51f145cbdb4a4f801bdf0fe0689ebedcfd4c56b3cb28bfda1f534d1955",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--450b8ed6f0af38e158c7f887",
  "source": {
    "blob": "7756ee06d680a2cb53d78d4399be69426dfe4785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 533,
    "path": "GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:450b8ed6f0af38e158c7f8873d415fab7fcc38027d0bf25315705e662b2d018f",
  "verification": {
    "reference": "docs/verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2f0bb51f145cbdb4a4f801bdf0fe0689ebedcfd4c56b3cb28bfda1f534d1955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [RegularSpace M] :
    letI : PseudoEMetricSpace M := .ofRiemannianMetric I M
    IsRiemannianManifold I M := by
  let : PseudoEMetricSpace M := .ofRiemannianMetric I M
  exact ⟨fun x y ↦ rfl⟩

variable (M) in
/-- The emetric space structure associated to a Riemannian metric on a manifold. Designed
so that the topology is defeq to the original one.

This should only be used when constructing data in specific situations. To develop the theory,
one should rather assume that there is an already existing emetric space structure, which satisfies
additionally the predicate `IsRiemannianManifold I M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Basic/Variant94e9bfda33e58dfe16187cface8a3702076460ed8e8515d07b5634ed22d21e0e.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7756ee06d680a2cb53d78d4399be69426dfe4785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
