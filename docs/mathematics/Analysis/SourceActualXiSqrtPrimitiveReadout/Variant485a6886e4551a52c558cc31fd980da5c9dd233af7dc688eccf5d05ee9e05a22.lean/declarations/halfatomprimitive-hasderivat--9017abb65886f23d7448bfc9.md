# halfAtomPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dd1b141-7486-70cb-3e55-c6495b8c7619",
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
  "slug": "halfatomprimitive-hasderivat--9017abb65886f23d7448bfc9",
  "source": {
    "blob": "007e0c16bd7496b1d88e1d5c2c72ebf9ca527dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9017abb65886f23d7448bfc930ac461f3a1c2bbb56a3de97bb73e25f3d016719",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd1b141-7486-70cb-3e55-c6495b8c7619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

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

[Verification target and public status](../../../../../verification/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007e0c16bd7496b1d88e1d5c2c72ebf9ca527dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
