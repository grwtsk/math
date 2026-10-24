# IsSeparated.hasAffineProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:978ea933e4603b280df5dc3469c6dbff896895145f8c22e2fcd6415b5c8a16b5",
  "kind": "instance",
  "lexical_name": "IsSeparated.hasAffineProperty",
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
  "slug": "isseparated-hasaffineproperty--8856fc735ee6b4e275ee1212",
  "source": {
    "blob": "9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 298,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8856fc735ee6b4e275ee12129cd0348a582cacf58ba5aed94f7c7a4884ed05fd",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:978ea933e4603b280df5dc3469c6dbff896895145f8c22e2fcd6415b5c8a16b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsSeparated.hasAffineProperty :
    HasAffineProperty @IsSeparated fun X _ _ _ ↦ X.IsSeparated := by
  convert HasAffineProperty.of_isLocalAtTarget @IsSeparated with X Y f hY
  rw [Scheme.isSeparated_iff, ← terminal.comp_from f, IsSeparated.comp_iff]
  rfl

/--
Suppose `f g : X ⟶ Y` where `X` is a reduced scheme and `Y` is a separated scheme.
Then `f = g` if `ι ≫ f = ι ≫ g` for some dominant `ι`.

Also see `ext_of_isDominant_of_isSeparated` for the general version over arbitrary bases.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant922a14e68ae1f51d0aa2da237a3f7a1e5987ec61bff5982c2c6741bcf9e7a974.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e96c65ac1366435e8ef2e9a8a7e1bd570101ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
