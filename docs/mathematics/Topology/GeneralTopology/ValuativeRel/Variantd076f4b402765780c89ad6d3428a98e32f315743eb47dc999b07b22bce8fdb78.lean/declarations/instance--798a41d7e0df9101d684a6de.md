# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b95d2f745e8fa72af8b4ebeb96cdc8a98b0f86afb18857c36585a227ce1f1fd",
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
  "slug": "instance--798a41d7e0df9101d684a6de",
  "source": {
    "blob": "b88cbc23effe5a56ec62ff33d73eec2dba2c7da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:798a41d7e0df9101d684a6deba8849737cf8803d22bd8a5161cb660b4dd12e12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b95d2f745e8fa72af8b4ebeb96cdc8a98b0f86afb18857c36585a227ce1f1fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := low) {R : Type*} [Ring R] [ValuativeRel R] [UniformSpace R]
    [IsUniformAddGroup R] [IsValuativeTopology R] :
    Valued R (ValueGroupWithZero R) where
  «v» := valuation R
  is_topological_valuation := by
    simp_rw [Valuation.restrict_lt_iff_lt_embedding]
    convert! mem_nhds_zero_iff (R := R)
    simpa [← Valuation.restrict_lt_iff_lt_embedding] using
      (valuation R).exists_setOfPred_restrict_le_iff 0 _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b88cbc23effe5a56ec62ff33d73eec2dba2c7da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
