# applyZetaSpinFlipDuality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34a99ca38c2c27fc2bc242e2f58adee31b2b9501b9918ff8819bd8d6b4cc7407",
  "kind": "def",
  "lexical_name": "applyZetaSpinFlipDuality",
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
  "slug": "applyzetaspinflipduality--842e058db0954dcfd33c48b2",
  "source": {
    "blob": "4b2a48861daa22293522f5120c57ca94c652a875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:842e058db0954dcfd33c48b2ac16263de877a08f3019e6af3e892b0c24e5f8dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34a99ca38c2c27fc2bc242e2f58adee31b2b9501b9918ff8819bd8d6b4cc7407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyZetaSpinFlipDuality
    {N : Nat} (D : ZetaSpinFlipDualityOperator N)
    (A : FlipGroupRingCarrier N) : FlipGroupRingCarrier N :=
  D.toFun A

/-- Duality is involutive by explicit supplied law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantc8d613c30fe9e36af561b195841f4ba9e7a08cdf4d497dc04ca4e7fe7f92a19d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2a48861daa22293522f5120c57ca94c652a875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
