# monicQuarticDiscriminant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd8ac06b944cacf34a3b9a5d412412d142813cdc0ec8cb35cf645c5f4d476249",
  "kind": "def",
  "lexical_name": "monicQuarticDiscriminant",
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
  "slug": "monicquarticdiscriminant--393dcfe87433e09b167650d9",
  "source": {
    "blob": "66cf4a70fde1c2ac1ae66a11649ac68711481c8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 23,
    "path": "GRWTSK/Algebra/QuarticCoefficientDiscriminant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:393dcfe87433e09b167650d95fd62e0ffb67dc186bdec02500e473285f378806",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticCoefficientDiscriminant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd8ac06b944cacf34a3b9a5d412412d142813cdc0ec8cb35cf645c5f4d476249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monicQuarticDiscriminant (A B C D : R) : R :=
  256 * D ^ 3 - 192 * A * C * D ^ 2 -
  128 * B ^ 2 * D ^ 2 + 144 * B * C ^ 2 * D -
  27 * C ^ 4 + 144 * A ^ 2 * B * D ^ 2 -
  6 * A ^ 2 * C ^ 2 * D - 80 * A * B ^ 2 * C * D +
  18 * A * B * C ^ 3 + 16 * B ^ 4 * D -
  4 * B ^ 3 * C ^ 2 - 27 * A ^ 4 * D ^ 2 +
  18 * A ^ 3 * B * C * D - 4 * A ^ 3 * C ^ 3 -
  4 * A ^ 2 * B ^ 3 * D + A ^ 2 * B ^ 2 * C ^ 2

/-- The cubic adjacency resolvent has exactly the classical monic
quartic discriminant, as an integral polynomial identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticCoefficientDiscriminant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticCoefficientDiscriminant.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cf4a70fde1c2ac1ae66a11649ac68711481c8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
