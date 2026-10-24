# sign_y_zpow_eq_sign_of_x_pos_of_y_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b3a9735-ad5c-73d3-ebaf-a4cb1f4ceba3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7eebabc4-efc3-50dc-e17b-94456ed9ed2f",
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
  "slug": "sign-y-zpow-eq-sign-of-x-pos-of-y-pos--e1e11612445a544d71300c69",
  "source": {
    "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 331,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1e11612445a544d71300c696cd7fd14f685739e159cf56691931cf49725f4b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eebabc4-efc3-50dc-e17b-94456ed9ed2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–342.

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

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68df8142d5d37c001d93e02ba9b380c647ff34d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
