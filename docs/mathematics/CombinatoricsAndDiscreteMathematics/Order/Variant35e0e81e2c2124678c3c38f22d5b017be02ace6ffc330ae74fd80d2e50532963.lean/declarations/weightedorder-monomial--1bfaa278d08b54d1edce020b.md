# weightedOrder_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1b830b6-63a4-1887-2149-1a597926e17c",
  "kind": "theorem",
  "lexical_name": "weightedOrder_monomial",
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
  "slug": "weightedorder-monomial--1bfaa278d08b54d1edce020b",
  "source": {
    "blob": "c4242a76deabd8311c3fde2213f378c144417003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 228,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bfaa278d08b54d1edce020b3dd17a8ff38292ff8e645b2cb28d649a784d6085",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b830b6-63a4-1887-2149-1a597926e17c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedOrder_monomial {d : σ →₀ ℕ} {a : R} [Decidable (a = 0)] :
    weightedOrder w (monomial d a) = if a = 0 then (⊤ : ℕ∞) else weight w d := by
  classical
  split_ifs with h
  · rw [h, weightedOrder_eq_top_iff, map_zero]
  · rw [weightedOrder_eq_nat]
    constructor
    · use d
      simp only [coeff_monomial_same, ne_eq, h, not_false_eq_true, and_self]
    · intro b hb
      rw [coeff_monomial, ite_eq_right]
      rintro rfl
      exact hb.false

/-- The order of the monomial `a*X^n` is `n` if `a ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4242a76deabd8311c3fde2213f378c144417003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
