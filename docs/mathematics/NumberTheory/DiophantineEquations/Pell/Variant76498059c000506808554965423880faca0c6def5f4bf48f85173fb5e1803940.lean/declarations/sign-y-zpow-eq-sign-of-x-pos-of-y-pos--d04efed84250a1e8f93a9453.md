# sign_y_zpow_eq_sign_of_x_pos_of_y_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:716b1513-cd00-8bb2-c96f-e51f2cf1354c",
  "kind": "theorem",
  "lexical_name": "sign_y_zpow_eq_sign_of_x_pos_of_y_pos",
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
  "slug": "sign-y-zpow-eq-sign-of-x-pos-of-y-pos--d04efed84250a1e8f93a9453",
  "source": {
    "blob": "91c03851fa8c4a2b26e030fb2f66e8da20a71f30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 339,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d04efed84250a1e8f93a9453c3c97fce9e9ddd93e8602ae444a249ccec07b417",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:716b1513-cd00-8bb2-c96f-e51f2cf1354c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sign_y_zpow_eq_sign_of_x_pos_of_y_pos {a : Solution₁ d} (hax : 0 < a.x) (hay : 0 < a.y)
    (n : ℤ) : (a ^ n).y.sign = n.sign := by
  rcases n with ((_ | n) | n)
  · rfl
  · rw [Int.ofNat_eq_coe, zpow_ofNat]
    exact Int.sign_eq_one_of_pos (y_pow_succ_pos hax hay n)
  · rw [zpow_negSucc]
    exact Int.sign_eq_neg_one_of_neg (neg_neg_of_pos (y_pow_succ_pos hax hay n))
#align pell.solution₁.sign_y_zpow_eq_sign_of_x_pos_of_y_pos Pell.Solution₁.sign_y_zpow_eq_sign_of_x_pos_of_y_pos

/-- If `a` is any solution, then one of `a`, `a⁻¹`, `-a`, `-a⁻¹` has
positive `x` and nonnegative `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c03851fa8c4a2b26e030fb2f66e8da20a71f30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
