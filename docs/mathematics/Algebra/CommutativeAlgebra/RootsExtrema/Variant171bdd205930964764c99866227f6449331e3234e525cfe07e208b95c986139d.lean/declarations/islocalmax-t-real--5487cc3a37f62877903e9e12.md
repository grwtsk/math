# isLocalMax_T_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "724dd1124087dcbceb37803144d7e849716a8ef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:219ffd8c-8a47-5226-f7e5-002bcb3d2f59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dace6f94-9dc3-2971-da55-315a575ac33c",
  "kind": "theorem",
  "lexical_name": "isLocalMax_T_real",
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
  "slug": "islocalmax-t-real--5487cc3a37f62877903e9e12",
  "source": {
    "blob": "724dd1124087dcbceb37803144d7e849716a8ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 219,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5487cc3a37f62877903e9e125b3f4642b767c945af0e22af6f846d8472f40848",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dace6f94-9dc3-2971-da55-315a575ac33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalMax_T_real {n k : ℕ} (hn : n ≠ 0) (hk₀ : 0 < k) (hk₁ : k < n) (hk₂ : Even k) :
    IsLocalMax (T ℝ n).eval (cos (k * π / n)) := by
  have zero_lt : 0 < k * π / n := by positivity
  have lt_pi : k * π / n < π := calc
    k * π / n < n * π / n := by gcongr
    _ = π := mul_div_cancel_left₀ _ (Nat.cast_ne_zero.mpr hn)
  refine eventually_nhds_iff.mpr ⟨Set.Ioo (-1) 1, ?_, isOpen_Ioo, ?_, ?_⟩
  · intro x hx
    dsimp
    rw [(eval_T_real_eq_one_iff hn _).mpr ⟨k, le_of_lt hk₁, hk₂, rfl⟩]
    exact (abs_le.mp (abs_eval_T_real_le_one n (by grind))).2
  · rw [← cos_pi]
    exact cos_lt_cos_of_nonneg_of_le_pi (le_of_lt zero_lt) (le_refl π) lt_pi
  · rw [← cos_zero]
    exact cos_lt_cos_of_nonneg_of_le_pi (le_refl 0) (le_of_lt lt_pi) zero_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variant171bdd205930964764c99866227f6449331e3234e525cfe07e208b95c986139d.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724dd1124087dcbceb37803144d7e849716a8ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
