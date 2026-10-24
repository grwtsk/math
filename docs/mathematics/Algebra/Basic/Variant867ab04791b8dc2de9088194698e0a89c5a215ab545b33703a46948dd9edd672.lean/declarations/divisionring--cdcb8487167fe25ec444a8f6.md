# divisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:857d72cc3fac07ae57b8ad52c9d65b0476ef18438ec97631ef46f90594bb8318",
  "kind": "abbrev",
  "lexical_name": "divisionRing",
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
  "slug": "divisionring--cdcb8487167fe25ec444a8f6",
  "source": {
    "blob": "b351bcd53eb1daa38d9a0c11d41074414e24b400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdcb8487167fe25ec444a8f60fb8b53a1182280e880f44fed5b4af6a0d89f5a7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:857d72cc3fac07ae57b8ad52c9d65b0476ef18438ec97631ef46f90594bb8318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable abbrev divisionRing [I.IsMaximal] : DivisionRing (R ⧸ I) := fast_instance%
  { __ := ring _
    __ := Quotient.groupWithZero _
    nnqsmul := _
    nnqsmul_def _ _ := rfl
    qsmul := _
    qsmul_def _ _ := rfl }

/-- The quotient of a commutative ring by a maximal ideal is a field.
This is a `def` rather than `instance`, since users
will have computable inverses (and `qsmul`, `ratCast`) in some applications.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant867ab04791b8dc2de9088194698e0a89c5a215ab545b33703a46948dd9edd672.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b351bcd53eb1daa38d9a0c11d41074414e24b400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
