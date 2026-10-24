# isOpenImmersion_glueDataObjMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caeeb3ce34ed1d8f69f486fbfea09302d13064e2eb0c7b613c053e9289bb35f0",
  "kind": "instance",
  "lexical_name": "isOpenImmersion_glueDataObjMap",
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
  "slug": "isopenimmersion-gluedataobjmap--b97f5a5f4c375cb9f47b1f75",
  "source": {
    "blob": "807d549eba1105b449311e8bb91afdf0b6f6dd1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 127,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b97f5a5f4c375cb9f47b1f7593140113d135f56561e2efab27f30db6f995e589",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caeeb3ce34ed1d8f69f486fbfea09302d13064e2eb0c7b613c053e9289bb35f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isOpenImmersion_glueDataObjMap {V : X.affineOpens} (f : Γ(X, V.1)) :
    IsOpenImmersion (I.glueDataObjMap (X.affineBasicOpen_le f)) := by
  let := (Ideal.quotientMap _ _ (I.ideal_le_comap_ideal (X.affineBasicOpen_le f))).toAlgebra
  have := I.isLocalization_away (X.affineBasicOpen_le f) f rfl
  exact IsOpenImmersion.of_isLocalization (Ideal.Quotient.mk _ f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant8cce26bf1038828a093a1bee4bc8772776883f1dc63324e547020abc7563ab58.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807d549eba1105b449311e8bb91afdf0b6f6dd1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
