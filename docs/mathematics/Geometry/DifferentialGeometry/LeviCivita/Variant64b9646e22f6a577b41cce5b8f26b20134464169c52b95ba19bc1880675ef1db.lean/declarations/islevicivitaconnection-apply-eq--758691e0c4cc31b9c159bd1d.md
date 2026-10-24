# IsLeviCivitaConnection.apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edeee098-7c41-e6cf-62d3-ab5885cf6778",
  "kind": "lemma",
  "lexical_name": "IsLeviCivitaConnection.apply_eq",
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
  "slug": "islevicivitaconnection-apply-eq--758691e0c4cc31b9c159bd1d",
  "source": {
    "blob": "a1dc2d08df84a8a141740579cca3139736f0719a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 214,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758691e0c4cc31b9c159bd1db615888c774a6180fef0b29add9a796a4065aea6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edeee098-7c41-e6cf-62d3-ab5885cf6778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma IsLeviCivitaConnection.apply_eq
    (h : cov.IsLeviCivitaConnection)
    (hX : MDiffAt (T% X) x) (hY : MDiffAt (T% Y) x) (hZ : MDiffAt (T% Z) x) :
    ⟪∇ X Y, Z⟫ x =
      (d% ⟪Y, Z⟫ x (X x) + d% ⟪Z, X⟫ x (Y x) - d% ⟪X, Y⟫ x (Z x)
      - ⟪Y, VectorField.mlieBracket I X Z⟫ x
      - ⟪Z, VectorField.mlieBracket I Y X⟫ x
      + ⟪X, VectorField.mlieBracket I Z Y⟫ x) / 2 := by
  -- use the compatibility in three ways
  have eq1a := h.isMetricCompatible.mvfderiv_inner_eq X hY hZ
  have eq2a := h.isMetricCompatible.mvfderiv_inner_eq Y hZ hX
  have eq3a := h.isMetricCompatible.mvfderiv_inner_eq Z hX hY
  -- use the torsion-freeness in three ways
  have eq1b := congr(inner ℝ (Y x) ($(h.2) x (X x) (Z x)))
  have eq2b := congr(inner ℝ (Z x) ($(h.2) x (Y x) (X x)))
  have eq3b := congr(inner ℝ (X x) ($(h.2) x (Z x) (Y x)))
  -- combine
  simp (disch := fun_prop) [real_inner_comm, inner_sub_right, torsion_apply] at *
  linear_combination - (eq1a + eq1b + eq2a + eq2b - eq3a - eq3b) / 2

/-- The **Koszul formula**, expressing the term `⟨∇ X Y, Z⟩` for all differentiable vector fields
`X`, `Y` and `Z`, without reference to `∇`.
This is the key insight to prove uniqueness of the Levi-Civita connection.
This version of `IsLeviCivitaConnection.apply_eq` does not require the direction in which we are
differentiating to be coming from a differentiable vector field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LeviCivita/Variant64b9646e22f6a577b41cce5b8f26b20134464169c52b95ba19bc1880675ef1db.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1dc2d08df84a8a141740579cca3139736f0719a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
