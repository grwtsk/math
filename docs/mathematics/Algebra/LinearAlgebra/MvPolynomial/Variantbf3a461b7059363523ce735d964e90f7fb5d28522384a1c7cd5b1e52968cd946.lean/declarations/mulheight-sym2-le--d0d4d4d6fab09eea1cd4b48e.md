# mulHeight_sym2_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17ff0ab4-e1c6-5c24-44ac-cc94f6837c70",
  "kind": "lemma",
  "lexical_name": "mulHeight_sym2_le",
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
  "slug": "mulheight-sym2-le--d0d4d4d6fab09eea1cd4b48e",
  "source": {
    "blob": "4d24c1b75d0849b4cdb36995eee15e639acd6bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 559,
    "path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d4d4d6fab09eea1cd4b48e3a1717c731bf2f324eb8f442bd69a049b2daeef4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ff0ab4-e1c6-5c24-44ac-cc94f6837c70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulHeight_sym2_le :
    ∃ C > 0, ∀ (a b c d : K),
      mulHeight ![a * c, a * d + b * c, b * d] ≤ C * mulHeight ![a, b] * mulHeight ![c, d] := by
  let p : Fin 3 → MvPolynomial (Fin 4) K := ![X 0, X 1 + X 2, X 3]
  have hom i : (p i).IsHomogeneous 1 := by
    fin_cases i <;> simp [p, isHomogeneous_X, IsHomogeneous.add]
  obtain ⟨C, hC₀, hC⟩ := mulHeight_eval_le' hom
  simp only [pow_one] at hC
  refine ⟨max C 1, by grind, fun a b c d ↦ ?_⟩
  by_cases hab : ![a, b] = 0
  · rw [hab, mulHeight_zero, mul_one, show a = 0 from congrFun hab 0,
      show b = 0 from congrFun hab 1,
      show ![0 * c, 0 * d + 0 * c, 0 * d] = 0 by ext i; fin_cases i <;> simp, mulHeight_zero]
    grw [← one_le_mulHeight]
    grind
  by_cases hcd : ![c, d] = 0
  · rw [hcd, mulHeight_zero, mul_one, show c = 0 from congrFun hcd 0,
      show d = 0 from congrFun hcd 1,
      show ![a * 0, a * 0 + b * 0, b * 0] = 0 by ext i; fin_cases i <;> simp, mulHeight_zero]
    grw [← one_le_mulHeight]
    grind
  rw [mul_assoc, mulHeight_mul_mulHeight hab hcd]
  grw [← le_max_left C 1]
  convert! hC _ with i
  fin_cases i <;> simp [p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d24c1b75d0849b4cdb36995eee15e639acd6bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
