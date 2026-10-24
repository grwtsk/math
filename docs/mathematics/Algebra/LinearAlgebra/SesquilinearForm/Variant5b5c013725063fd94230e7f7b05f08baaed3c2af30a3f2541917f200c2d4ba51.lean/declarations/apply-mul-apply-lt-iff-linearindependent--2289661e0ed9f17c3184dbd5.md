# apply_mul_apply_lt_iff_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9584515b-2ac5-9b99-b398-e97797fc8ad6",
  "kind": "lemma",
  "lexical_name": "apply_mul_apply_lt_iff_linearIndependent",
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
  "slug": "apply-mul-apply-lt-iff-linearindependent--2289661e0ed9f17c3184dbd5",
  "source": {
    "blob": "f375bbc35d14c25e01650cd8ddfab95f811d94b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 899,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2289661e0ed9f17c3184dbd574de11b6f1b2a3a5e856bfcbd9bfdafeeef98575",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9584515b-2ac5-9b99-b398-e97797fc8ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_mul_apply_lt_iff_linearIndependent [NoZeroSMulDivisors R M]
    (hp : ∀ x, x ≠ 0 → 0 < B x x) (x y : M) :
    (B x y) * (B y x) < (B x x) * (B y y) ↔ LinearIndependent R ![x, y] := by
  have hle : ∀ z, 0 ≤ B z z := by
    intro z
    by_cases hz : z = 0; simp [hz]
    exact le_of_lt (hp z hz)
  constructor
  · contrapose!
    intro h
    rw [LinearIndependent.pair_iff] at h
    push_neg at h
    obtain ⟨r, s, hl, h0⟩ := h
    by_cases hr : r = 0; · simp_all
    by_cases hs : s = 0; · simp_all
    suffices
        (B (r • x) (r • x)) * (B (s • y) (s • y)) = (B (r • x) (s • y)) * (B (s • y) (r • x)) by
      simp only [map_smul, smul_apply, smul_eq_mul] at this
      rw [show r * (r * (B x) x) * (s * (s * (B y) y)) = (r * r * s * s) * ((B x) x * (B y) y) by
        ring, show s * (r * (B x) y) * (r * (s * (B y) x)) = (r * r * s * s) * ((B x) y * (B y) x)
        by ring] at this
      have hrs : r * r * s * s ≠ 0 := by simp [hr, hs]
      exact le_of_eq <| mul_right_injective₀ hrs this
    simp [show s • y = - r • x by rwa [neg_smul, ← add_eq_zero_iff_eq_neg']]
  · contrapose!
    intro h
    refine not_linearIndependent_of_apply_mul_apply_eq B hp x y (le_antisymm
      (apply_mul_apply_le_of_forall_zero_le B hle x y) h)

/-- Strict **Cauchy-Schwarz** is equivalent to linear independence for positive definite symmetric
forms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f375bbc35d14c25e01650cd8ddfab95f811d94b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
