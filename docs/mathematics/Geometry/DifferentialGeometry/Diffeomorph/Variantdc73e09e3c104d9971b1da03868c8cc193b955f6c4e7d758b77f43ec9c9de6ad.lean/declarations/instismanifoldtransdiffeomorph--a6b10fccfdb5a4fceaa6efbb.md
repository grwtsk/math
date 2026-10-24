# instIsManifoldTransDiffeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed368a97aa1f8558414581026ef016f58ee1cee78d7cd2f4d3e19c1afbbee4c1",
  "kind": "instance",
  "lexical_name": "instIsManifoldTransDiffeomorph",
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
  "slug": "instismanifoldtransdiffeomorph--a6b10fccfdb5a4fceaa6efbb",
  "source": {
    "blob": "580997ba3ae378113e1ed2f2cf5d817c247fd0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 446,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6b10fccfdb5a4fceaa6efbb77be4cd6ffc70b3732969f4c5ff4ebc009ef0675",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed368a97aa1f8558414581026ef016f58ee1cee78d7cd2f4d3e19c1afbbee4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsManifoldTransDiffeomorph [IsManifold I n M] :
    IsManifold (I.transDiffeomorph e) n M := by
  refine isManifold_of_contDiffOn (I.transDiffeomorph e) n M fun e₁ e₂ h₁ h₂ => ?_
  refine e.contDiff.comp_contDiffOn
      (((contDiffGroupoid n I).compatible h₁ h₂).1.comp e.symm.contDiff.contDiffOn ?_)
  simp only [mapsTo_iff_subset_preimage]
  mfld_set_tac

variable (I M)

/-- The identity diffeomorphism between a manifold with model `I` and the same manifold
with model `I.trans_diffeomorph e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Diffeomorph/Variantdc73e09e3c104d9971b1da03868c8cc193b955f6c4e7d758b77f43ec9c9de6ad.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `580997ba3ae378113e1ed2f2cf5d817c247fd0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
