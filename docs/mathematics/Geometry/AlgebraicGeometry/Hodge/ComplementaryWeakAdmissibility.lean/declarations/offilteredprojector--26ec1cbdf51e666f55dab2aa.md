# ofFilteredProjector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3843840eaf06740b272a0a5b4977d86fd6964d43739b4337fcb8114ddd9c764",
  "kind": "def",
  "lexical_name": "ofFilteredProjector",
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
  "slug": "offilteredprojector--26ec1cbdf51e666f55dab2aa",
  "source": {
    "blob": "890c7a88553dad31868b7b0bba24397e75336c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 34,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26ec1cbdf51e666f55dab2aa99fb10ae7eacd2a5f96f26d31ee0754e2362e148",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3843840eaf06740b272a0a5b4977d86fd6964d43739b4337fcb8114ddd9c764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFilteredProjector
    {K D : Type*} [Field K] [AddCommGroup D] [Module K D]
    [FiniteDimensional K D]
    (S : FilteredIdempotent (K := K) (D := D))
    (newtonLeft newtonRight newtonTotal : ℕ)
    (hleft : Module.finrank K S.left ≤ newtonLeft)
    (hright : Module.finrank K S.right ≤ newtonRight)
    (hnewton : newtonLeft + newtonRight = newtonTotal)
    (htotal : Module.finrank K S.F1 = newtonTotal) :
    ComplementaryNumerics where
  hodgeLeft := Module.finrank K S.left
  hodgeRight := Module.finrank K S.right
  hodgeTotal := Module.finrank K S.F1
  newtonLeft := newtonLeft
  newtonRight := newtonRight
  newtonTotal := newtonTotal
  hodgeLeft_le_newtonLeft := hleft
  hodgeRight_le_newtonRight := hright
  hodge_add := S.finrank_left_add_right
  newton_add := hnewton
  total_eq := htotal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `890c7a88553dad31868b7b0bba24397e75336c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
