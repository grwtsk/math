# IsPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47e669b0853194104f86371b9b716ee3946e9b1b095e84228348f81d05387c67",
  "kind": "class",
  "lexical_name": "IsPrincipal",
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
  "slug": "isprincipal--d62e2f63ac0c1f2fab374cc6",
  "source": {
    "blob": "46784503b9910f8e9c9f022b4018bdb56a515b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d62e2f63ac0c1f2fab374cc60894a7120b09380ce8f0987d952180db5c124fb3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47e669b0853194104f86371b9b716ee3946e9b1b095e84228348f81d05387c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsPrincipal (S : Submodule R M) : Prop where
  principal (S) : ∃ a, S = span R {a}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46784503b9910f8e9c9f022b4018bdb56a515b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
