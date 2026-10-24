# limitSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60528ac5e5092bd481598e58e0a5ba806a95df04671ac74e3907007762d15d3b",
  "kind": "instance",
  "lexical_name": "limitSemiring",
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
  "slug": "limitsemiring--054ecc4dcb59afebe4b9cd87",
  "source": {
    "blob": "a1123d13a527e3f18b324b58b76ce0a47cb9da95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:054ecc4dcb59afebe4b9cd87cf9c3a88669726516312e5b7ed6b71172f6f495c",
  "verification": {
    "reference": "docs/verification/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60528ac5e5092bd481598e58e0a5ba806a95df04671ac74e3907007762d15d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance limitSemiring (F : J ⥤ AlgebraCatMax.{v, w} R) :
    Ring.{max v w} (Types.limitCone.{v, w} (F ⋙ forget (AlgebraCatMax.{v, w} R))).pt :=
  inferInstanceAs <| Ring (sectionsSubalgebra F)
#align Algebra.limit_semiring AlgebraCat.limitSemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Limits/Variant37397ffbac1fc3f747b5b79be73e619af1c06787bbad0c0245a5d93da9dc0b38.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1123d13a527e3f18b324b58b76ce0a47cb9da95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
