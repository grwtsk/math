# argLocalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbc4e309929dcacf1dcdf496e3476b48a4d3a7f7b11331123964ff9e0ff75442",
  "kind": "def",
  "lexical_name": "argLocalEquiv",
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
  "slug": "arglocalequiv--f35334c57395ef33fd833671",
  "source": {
    "blob": "bab2ff105264b016bce208fa40cde944fa592aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 59,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f35334c57395ef33fd833671821a21ec036ca93910aa7d1db643ae9e09a3f359",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbc4e309929dcacf1dcdf496e3476b48a4d3a7f7b11331123964ff9e0ff75442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def argLocalEquiv : LocalEquiv circle ℝ where
  toFun := arg ∘ (↑)
  invFun := expMapCircle
  source := univ
  target := Ioc (-π) π
  map_source' _ _ := ⟨neg_pi_lt_arg _, arg_le_pi _⟩
  map_target' := mapsTo_univ _ _
  left_inv' z _ := expMapCircle_arg z
  right_inv' _ hx := arg_expMapCircle hx.1 hx.2
#align circle.arg_local_equiv circle.argLocalEquiv

/-- `Complex.arg` and `expMapCircle` define an equivalence between `circle` and `(-π, π]`. -/
@[simps (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circle/Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab2ff105264b016bce208fa40cde944fa592aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
