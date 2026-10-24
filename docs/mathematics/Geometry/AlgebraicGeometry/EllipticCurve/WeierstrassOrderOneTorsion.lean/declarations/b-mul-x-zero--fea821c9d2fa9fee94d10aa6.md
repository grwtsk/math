# B_mul_x_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:188bbb75-9e9e-711f-8f5b-a287bd6603f4",
  "kind": "theorem",
  "lexical_name": "B_mul_x_zero",
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
  "slug": "b-mul-x-zero--fea821c9d2fa9fee94d10aa6",
  "source": {
    "blob": "2af102534f82b54d009b09917302353a30a90a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea821c9d2fa9fee94d10aa6c6e4584a862862af5ddb382f9b4b3e756b30939c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188bbb75-9e9e-711f-8f5b-a287bd6603f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_mul_x_zero (A B : ℤ) :
    scalar A B B * x A B=0 := by
  have h := WeierstrassOriginJet.quotient_equation A B 1
  rw [Affine.equation_iff] at h
  simp only [model,one_mul,zero_mul,add_zero] at h
  have hx2 := x_square_zero A B
  have hxy := x_mul_y_zero A B
  have hy2 := y_square_zero A B
  change y A B ^ 2 + x A B * y A B =
    x A B ^ 3 + scalar A B A * x A B ^ 2 + scalar A B B * x A B at h
  rw [hy2,hxy,hx2,pow_succ,x_square_zero,mul_zero,zero_add,zero_add] at h
  exact h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOrderOneTorsion.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2af102534f82b54d009b09917302353a30a90a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
