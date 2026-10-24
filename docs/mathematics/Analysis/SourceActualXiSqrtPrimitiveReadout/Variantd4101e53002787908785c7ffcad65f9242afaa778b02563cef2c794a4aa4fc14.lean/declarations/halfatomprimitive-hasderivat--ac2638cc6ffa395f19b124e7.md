# halfAtomPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa037eb9-a4a9-245f-6188-1dffb8d7c403",
  "kind": "theorem",
  "lexical_name": "halfAtomPrimitive_hasDerivAt",
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
  "slug": "halfatomprimitive-hasderivat--ac2638cc6ffa395f19b124e7",
  "source": {
    "blob": "56c9c4e2b14790aa03efc4d1aa4ba762a1d3e565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variantd4101e53002787908785c7ffcad65f9242afaa778b02563cef2c794a4aa4fc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac2638cc6ffa395f19b124e70d68a405320975c2ddd3f490b905a21df63f7b95",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualXiSqrtPrimitiveReadout/Variantd4101e53002787908785c7ffcad65f9242afaa778b02563cef2c794a4aa4fc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa037eb9-a4a9-245f-6188-1dffb8d7c403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfAtomPrimitive_hasDerivAt (x : ℝ) (hx : 0 < x) :
    HasDerivAt halfAtomPrimitive (1 / x ^ (3 / 2 : ℝ)) x := by
  have hd := (Real.hasDerivAt_rpow_const (x := x) (p := (-1 / 2 : ℝ))
    (Or.inl hx.ne')).const_mul (-2)
  exact hd.congr_deriv (by
    rw [show (-1 / 2 - 1 : ℝ) = -(3 / 2) by ring, Real.rpow_neg hx.le]
    ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualXiSqrtPrimitiveReadout/Variantd4101e53002787908785c7ffcad65f9242afaa778b02563cef2c794a4aa4fc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variantd4101e53002787908785c7ffcad65f9242afaa778b02563cef2c794a4aa4fc14.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c9c4e2b14790aa03efc4d1aa4ba762a1d3e565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
