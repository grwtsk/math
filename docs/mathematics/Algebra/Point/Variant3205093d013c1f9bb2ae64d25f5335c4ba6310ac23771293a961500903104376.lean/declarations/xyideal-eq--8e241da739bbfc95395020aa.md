# XYIdeal_eq₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24868317-ce96-abe5-a126-6418cb4a1bcc",
  "kind": "lemma",
  "lexical_name": "XYIdeal_eq₁",
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
  "slug": "xyideal-eq--8e241da739bbfc95395020aa",
  "source": {
    "blob": "e7b67734d608785a00d88534c3c239e7a79cd2f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 162,
    "path": "GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e241da739bbfc95395020aa6d1ad36b0c3c5f25e10e2475efb3c4bcbe0a29ef",
  "verification": {
    "reference": "docs/verification/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24868317-ce96-abe5-a126-6418cb4a1bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma XYIdeal_eq₁ : XYIdeal W x₁ (C y₁) = XYIdeal W x₁ (linePolynomial x₁ y₁ L) := by
  simp only [XYIdeal, XClass, YClass, linePolynomial]
  rw [← span_pair_add_mul_right <| CoordinateRing.mk W <| C <| C <| -L, ← _root_.map_mul, ← map_add]
  apply congr_arg (_ ∘ _ ∘ _ ∘ _)
  C_simp
  ring1
set_option linter.uppercaseLean3 false in
#align weierstrass_curve.XY_ideal_eq₁ WeierstrassCurve.XYIdeal_eq₁

/-- The polynomial obtained by substituting the line $Y = L*(X - x_1) + y_1$, with a slope of $L$
that passes through an affine point $(x_1, y_1)$, into the polynomial $W(X, Y)$ associated to `W`.
If such a line intersects `W` at another point $(x_2, y_2)$, then the roots of this polynomial are
precisely $x_1$, $x_2$, and the $X$-coordinate of the addition of $(x_1, y_1)$ and $(x_2, y_2)$.

This depends on `W`, and has argument order: $x_1$, $y_1$, $L$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b67734d608785a00d88534c3c239e7a79cd2f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
