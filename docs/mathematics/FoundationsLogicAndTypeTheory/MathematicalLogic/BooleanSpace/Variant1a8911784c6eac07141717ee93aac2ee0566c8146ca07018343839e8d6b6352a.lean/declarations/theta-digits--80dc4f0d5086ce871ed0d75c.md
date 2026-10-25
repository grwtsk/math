# theta_digits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b468b91-bf18-8302-fbdb-ab9b128d46ff",
  "kind": "theorem",
  "lexical_name": "theta_digits",
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
  "slug": "theta-digits--80dc4f0d5086ce871ed0d75c",
  "source": {
    "blob": "f556fc89a447c35d472b48aed39fa4d93d410faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80dc4f0d5086ce871ed0d75c106c3bc0e40909fed2be54c7f8fee980bcb47be6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b468b91-bf18-8302-fbdb-ab9b128d46ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_digits
    (representation : DesignatedCantorRepresentation)
    (scalar : representation.Scalar) :
    representation.theta (representation.digits scalar) = scalar :=
  representation.theta.apply_symm_apply scalar

end DesignatedCantorRepresentation

/--
The designated scalar represented by the all-false digit stream.  This is a
representation-relative distinguished point; it does not assert that the
carrier scalar type has an independently chosen additive zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variant1a8911784c6eac07141717ee93aac2ee0566c8146ca07018343839e8d6b6352a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f556fc89a447c35d472b48aed39fa4d93d410faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
