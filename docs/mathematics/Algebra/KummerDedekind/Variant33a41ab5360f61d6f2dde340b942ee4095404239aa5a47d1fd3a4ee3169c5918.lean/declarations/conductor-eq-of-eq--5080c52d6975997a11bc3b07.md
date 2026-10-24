# conductor_eq_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b50331f-b502-9bdf-0efc-e6335a0511dc",
  "kind": "theorem",
  "lexical_name": "conductor_eq_of_eq",
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
  "slug": "conductor-eq-of-eq--5080c52d6975997a11bc3b07",
  "source": {
    "blob": "8465d52f7ad404b9b02559befe9525d01d3a6cb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 79,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5080c52d6975997a11bc3b07b5ab95198a63349dbeba0d0e4164c00494c2c881",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b50331f-b502-9bdf-0efc-e6335a0511dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductor_eq_of_eq {y : S} (h : (R<x> : Set S) = R<y>) : conductor R x = conductor R y :=
  Ideal.ext fun _ => forall_congr' fun _ => Set.ext_iff.mp h _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant33a41ab5360f61d6f2dde340b942ee4095404239aa5a47d1fd3a4ee3169c5918.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8465d52f7ad404b9b02559befe9525d01d3a6cb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
