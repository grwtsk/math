# IsAffineOpen.preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:414d80f3-4d2b-3b1c-1d93-0dd868ef46cb",
  "kind": "lemma",
  "lexical_name": "IsAffineOpen.preimage",
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
  "slug": "isaffineopen-preimage--e1c312e78f978dff981c4957",
  "source": {
    "blob": "dea6c437957ea7fd2b57d799152db8e6ea3cb2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 53,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1c312e78f978dff981c49573acd379c587d5a1aaea01c715eee6291f59c1165",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:414d80f3-4d2b-3b1c-1d93-0dd868ef46cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsAffineOpen.preimage {X Y : Scheme} {U : Y.Opens} (hU : IsAffineOpen U)
    (f : X ⟶ Y) [IsAffineHom f] :
    IsAffineOpen (f ⁻¹ᵁ U) :=
  IsAffineHom.isAffine_preimage _ hU

/-- The preimage of an affine open as an `Scheme.affine_opens`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea6c437957ea7fd2b57d799152db8e6ea3cb2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
