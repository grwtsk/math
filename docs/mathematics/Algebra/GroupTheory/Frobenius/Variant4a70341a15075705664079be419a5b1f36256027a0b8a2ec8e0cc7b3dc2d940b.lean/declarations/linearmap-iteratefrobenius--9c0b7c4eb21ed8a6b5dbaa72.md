# LinearMap.iterateFrobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:531ebf28472d613e1b0a1cf2da243dc529f454ee0b7f6360673d36fd2894e4f6",
  "kind": "def",
  "lexical_name": "LinearMap.iterateFrobenius",
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
  "slug": "linearmap-iteratefrobenius--9c0b7c4eb21ed8a6b5dbaa72",
  "source": {
    "blob": "fbb828e90c7076f21c26441116d3d5c3c839eeb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c0b7c4eb21ed8a6b5dbaa72cbe1e0393cd7bacc5bcf64f79b3ff98677544f49",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:531ebf28472d613e1b0a1cf2da243dc529f454ee0b7f6360673d36fd2894e4f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def LinearMap.iterateFrobenius [Algebra R S] : S →ₛₗ[iterateFrobenius R p n] S where
  __ := iterateFrobenius S p n
  map_smul' f s := show iterateFrobenius S p n _ = _ by
    simp_rw [iterateFrobenius_def, Algebra.smul_def, mul_pow, ← map_pow]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb828e90c7076f21c26441116d3d5c3c839eeb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
