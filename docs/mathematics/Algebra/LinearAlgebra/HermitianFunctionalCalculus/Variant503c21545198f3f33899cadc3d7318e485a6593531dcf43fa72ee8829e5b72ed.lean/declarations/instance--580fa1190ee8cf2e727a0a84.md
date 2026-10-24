# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0edaed9cee9b62610c4b5dff8db6cce19303a9bfcdb1f155d81a6a4f8d88e1a",
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
  "slug": "instance--580fa1190ee8cf2e727a0a84",
  "source": {
    "blob": "a2d1f864aec77c282db10d2d33075c3ca33296af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:580fa1190ee8cf2e727a0a8434af2ecf1c42168ef5d68a967a726878c868877e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0edaed9cee9b62610c4b5dff8db6cce19303a9bfcdb1f155d81a6a4f8d88e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Finite (spectrum ℝ A) := A.finite_real_spectrum

namespace IsHermitian

variable (hA : IsHermitian A)

/-- The `ℝ`-spectrum of a Hermitian matrix over `RCLike` field is the range of the eigenvalue
function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant503c21545198f3f33899cadc3d7318e485a6593531dcf43fa72ee8829e5b72ed.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2d1f864aec77c282db10d2d33075c3ca33296af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
