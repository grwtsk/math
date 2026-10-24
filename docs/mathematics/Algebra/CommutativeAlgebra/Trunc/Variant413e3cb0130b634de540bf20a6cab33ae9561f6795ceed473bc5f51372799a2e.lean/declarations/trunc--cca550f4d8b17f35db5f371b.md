# trunc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05cc5c6b7596ce4bc943848a85f441adb28fb41ffc4ac3d0f471ab64ef516517",
  "kind": "def",
  "lexical_name": "trunc'",
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
  "slug": "trunc--cca550f4d8b17f35db5f371b",
  "source": {
    "blob": "0c5e65a2c660a736d79f6c14a16cb2cc643f5aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 238,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cca550f4d8b17f35db5f371b721d656e3dbee9505c46f189751287fb6b64d924",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05cc5c6b7596ce4bc943848a85f441adb28fb41ffc4ac3d0f471ab64ef516517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trunc' (R : Type*) [CommSemiring R] (n : σ →₀ ℕ) :
    MvPowerSeries σ R →ₗ[R] MvPolynomial σ R := truncFinset R (Iic n)

/-- Coefficients of the truncation of a multivariate power series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c5e65a2c660a736d79f6c14a16cb2cc643f5aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
