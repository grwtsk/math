# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f49a02f8ca660fb17cf52f8d3b948118d52d9542f4258ac39932ae9932a00183",
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
  "slug": "instance--cf625578a0fdee099a3359e0",
  "source": {
    "blob": "6c5507bcef5900f1cbd60ad35ee429a73aa3f631",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 107,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf625578a0fdee099a3359e046aa288d638d8f942d184d882e47934b7c668dc0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f49a02f8ca660fb17cf52f8d3b948118d52d9542f4258ac39932ae9932a00183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) isOpenImmersion_of_isEmpty {X Y : Scheme} (f : X ⟶ Y)
    [IsEmpty X] : IsOpenImmersion f := by
  apply +allowSynthFailures IsOpenImmersion.of_isIso_stalkMap
  · exact .of_isEmpty (X := X) _
  · intro (i : X); exact isEmptyElim i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5507bcef5900f1cbd60ad35ee429a73aa3f631` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
