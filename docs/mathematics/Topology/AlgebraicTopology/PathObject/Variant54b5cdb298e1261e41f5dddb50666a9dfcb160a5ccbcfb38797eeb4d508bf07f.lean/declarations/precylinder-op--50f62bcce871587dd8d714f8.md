# Precylinder.op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c49ffe9dc7593d4067f7d1caffb01d6c6949683ce1cdfac86f0063c25004486e",
  "kind": "def",
  "lexical_name": "Precylinder.op",
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
  "slug": "precylinder-op--50f62bcce871587dd8d714f8",
  "source": {
    "blob": "59b53975adda92724ea86cf0347a907358b2677e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 337,
    "path": "GRWTSK/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50f62bcce871587dd8d714f873cd696ae0b95f37fef7f1889c63df03346d2478",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c49ffe9dc7593d4067f7d1caffb01d6c6949683ce1cdfac86f0063c25004486e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Precylinder.op {A : C} (P : Precylinder A) :
    PrepathObject (op A) where
  P := op P.I
  p₀ := P.i₀.op
  p₁ := P.i₁.op
  ι := P.π.op
  ι_p₀ := Quiver.Hom.unop_inj (by simp)
  ι_p₁ := Quiver.Hom.unop_inj (by simp)

/-- The pre-path object object obtained from a cylinder in the opposite category. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b53975adda92724ea86cf0347a907358b2677e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
