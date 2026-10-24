# associatesEquivIsPrincipal_map_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:105f20d8-5ebc-cea9-fce2-06e03f93b012",
  "kind": "theorem",
  "lexical_name": "associatesEquivIsPrincipal_map_one",
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
  "slug": "associatesequivisprincipal-map-one--5b5cb9b36d8bbdd06da295dc",
  "source": {
    "blob": "4db8c977a50e921d011186d5fc5014c97a19f129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b5cb9b36d8bbdd06da295dccd3a168ff5de062b6a05ad7373fbd46444b11c4d",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:105f20d8-5ebc-cea9-fce2-06e03f93b012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associatesEquivIsPrincipal_map_one :
    (associatesEquivIsPrincipal R 1 : Ideal R) = 1 := by
  rw [one_eq_mk_one, associatesEquivIsPrincipal_apply, span_singleton_one, one_eq_top]

variable (R) in
/-- The `MulEquiv` version of `Ideal.associatesEquivIsPrincipal`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4db8c977a50e921d011186d5fc5014c97a19f129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
