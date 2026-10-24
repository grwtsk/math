# IsReflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:372a1edaf7166051fb63b5b1e8fc5369ec10d2755a64041d61947de4cd0c5d9c",
  "kind": "structure",
  "lexical_name": "IsReflective",
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
  "slug": "isreflective--ecb380c58cc14eb32fe72028",
  "source": {
    "blob": "b2112d15e3d39e20b417b0b4fa5d018dbc6268ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecb380c58cc14eb32fe720284f069c10b68a3a71eb8f216f2db0925477cf17f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:372a1edaf7166051fb63b5b1e8fc5369ec10d2755a64041d61947de4cd0c5d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsReflective (B : M →ₗ[R] M →ₗ[R] R) (x : M) : Prop where
  regular : IsRegular (B x x)
  dvd_two_mul : ∀ y, B x x ∣ 2 * B x y

variable (B : M →ₗ[R] M →ₗ[R] R) {x : M}

namespace IsReflective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2112d15e3d39e20b417b0b4fa5d018dbc6268ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
