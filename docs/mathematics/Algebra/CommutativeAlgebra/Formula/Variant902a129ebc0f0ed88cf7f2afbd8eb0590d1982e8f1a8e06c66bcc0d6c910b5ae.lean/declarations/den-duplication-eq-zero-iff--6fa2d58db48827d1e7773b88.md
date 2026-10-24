# den_duplication_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a4059d-5812-f4a8-318b-7023319d64cc",
  "kind": "lemma",
  "lexical_name": "den_duplication_eq_zero_iff",
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
  "slug": "den-duplication-eq-zero-iff--6fa2d58db48827d1e7773b88",
  "source": {
    "blob": "ac1a2b808a3acc5a302c8bdf8afbeceddef9d6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 425,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant902a129ebc0f0ed88cf7f2afbd8eb0590d1982e8f1a8e06c66bcc0d6c910b5ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fa2d58db48827d1e7773b88c82631c8e64f25d790dd2f05fd384176a1805ef1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Formula/Variant902a129ebc0f0ed88cf7f2afbd8eb0590d1982e8f1a8e06c66bcc0d6c910b5ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a4059d-5812-f4a8-318b-7023319d64cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma den_duplication_eq_zero_iff [IsReduced R] {x y : R} (h : W'.Equation x y) :
    4 * x ^ 3 + W'.b₂ * x ^ 2 + 2 * W'.b₄ * x + W'.b₆ = 0 ↔ y = W'.negY x y := by
  rw [den_duplication_eq h, sq_eq_zero_iff, negY]
  grind only

omit [DecidableEq F] in
/-- If `(x, y)` is a nonsingular point on `W` in affine coordinates, then the `x`-coordinate
of its double is well-defined as a point on the projective line: in the corresponding rational
expression, at least one of the numerator and denominator does not vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Formula/Variant902a129ebc0f0ed88cf7f2afbd8eb0590d1982e8f1a8e06c66bcc0d6c910b5ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant902a129ebc0f0ed88cf7f2afbd8eb0590d1982e8f1a8e06c66bcc0d6c910b5ae.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac1a2b808a3acc5a302c8bdf8afbeceddef9d6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
