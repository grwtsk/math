# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de36783bc5e3ec2de11001d6ee2acd050ae975cf036de4429daa7f89c75c5a8",
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
  "slug": "instance--2e42f69b385f6d034bf5d37e",
  "source": {
    "blob": "1f097e01eb5684989f8140d0c579ede72e7f17db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/UniformConvergence/Variant50d404746227dbb3d37b77b416e3836696effbcbbcf5730c18ec3757728c1953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e42f69b385f6d034bf5d37eb4802d6ccbac4843d998c6ea99e68e7d14949434",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/UniformConvergence/Variant50d404746227dbb3d37b77b416e3836696effbcbbcf5730c18ec3757728c1953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de36783bc5e3ec2de11001d6ee2acd050ae975cf036de4429daa7f89c75c5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Group β] : Group (α →ᵤ[𝔖] β) :=
  Pi.group

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/UniformConvergence/Variant50d404746227dbb3d37b77b416e3836696effbcbbcf5730c18ec3757728c1953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/UniformConvergence/Variant50d404746227dbb3d37b77b416e3836696effbcbbcf5730c18ec3757728c1953.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f097e01eb5684989f8140d0c579ede72e7f17db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
