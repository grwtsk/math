# CommGroup.fg_of_descent'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:957f727f-564c-3e27-0485-b2a101341fa9",
  "kind": "theorem",
  "lexical_name": "CommGroup.fg_of_descent'",
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
  "slug": "commgroup-fg-of-descent--f62da37d7e11ed9f03de88e2",
  "source": {
    "blob": "6c594fd0fdb0b9a64994006e5e0fd80a7ae6661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 157,
    "path": "GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62da37d7e11ed9f03de88e28eeee24d4f64cfb9034e3c57936b4cb79ac3da53",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957f727f-564c-3e27-0485-b2a101341fa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CommGroup.fg_of_descent' {G : Type*} [CommGroup G] {h : G → ℝ} {C : ℝ}
    (H₁ : (powMonoidHom (α := G) 2).range.FiniteIndex) (H₂ : ∀ x, 0 ≤ h x)
    (H₃ : ∀ x y, |h (x * y) + h (x / y) - 2 * (h x + h y)| ≤ C) [Northcott h] :
    Group.FG G := by
  have H₃' x : 4 * h x - (h 1 + C) ≤ h (x ^ 2) := by grind [pow_two, div_self']
  have H₂' g x : h x ≤ 2 * h (g * x) + (2 * h g⁻¹ + C) := by grind [mul_inv_cancel_comm]
  exact fg_of_descent (b := 4) (by norm_num) (by norm_num) H₁ H₂' H₃'

/--
If `M` is a monoid and `n : ℕ`, `h : M → ℝ` satisfy
* for all `M : G`, `h (x ^ n) ≥ b * h x - c₀`,
* for all `B : ℝ`, there are only finitely many `x : M` such that `h x ≤ B`,

where `1 < b` and `c₀` are real numbers, then the set of elements of finite order in `M` is finite.
-/
@[to_additive /-- If `M` is an additive monoid and `n : ℕ`, `h : M → ℝ` satisfy
* for all `x : M`, `h (n • x) ≥ b * h x - c₀`,
* for all `B : ℝ`, there are only finitely many `x : M` such that `h x ≤ B`,

where `1 < b` and `c₀` are real numbers, then the set of elements of finite order in `M`
is finite. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c594fd0fdb0b9a64994006e5e0fd80a7ae6661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
