# integralNormalization_eval₂_eq_zero_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9316a57600e1fb93f51b2129948c99c290d3253d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7799cdb1-4ebf-48de-4dcd-86af9b06e388",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b926d99-b580-d634-ec17-eddc45063289",
  "kind": "theorem",
  "lexical_name": "integralNormalization_eval₂_eq_zero_of_commute",
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
  "slug": "integralnormalization-eval-eq-zero-of-commute--a9d443c02510a69c633935ea",
  "source": {
    "blob": "9316a57600e1fb93f51b2129948c99c290d3253d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 157,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d443c02510a69c633935eaf15acf3dfd9debad78fff86423ad80c87b919581",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b926d99-b580-d634-ec17-eddc45063289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralNormalization_eval₂_eq_zero_of_commute {p : R[X]} (f : R →+* A) {z : A}
    (hz : eval₂ f z p = 0) (h₁ : Commute (f p.leadingCoeff) z) (h₂ : ∀ {r r'}, Commute (f r) (f r'))
    (inj : ∀ x : R, f x = 0 → x = 0) :
    eval₂ f (f p.leadingCoeff * z) (integralNormalization p) = 0 := by
  obtain (h | h) := p.natDegree.eq_zero_or_pos
  · by_cases h0 : coeff p 0 = 0
    · rw [eq_C_of_natDegree_eq_zero h]
      simp [h0]
    · rw [eq_C_of_natDegree_eq_zero h, eval₂_C] at hz
      exact absurd (inj _ hz) h0
  · rw [integralNormalization_eval₂_leadingCoeff_mul_of_commute h _ _ h₁ h₂, hz, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Varianta5e81db8ff004d14a7bedd95c46d31f122554b68cc1b9936d876273f243121c1.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9316a57600e1fb93f51b2129948c99c290d3253d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
