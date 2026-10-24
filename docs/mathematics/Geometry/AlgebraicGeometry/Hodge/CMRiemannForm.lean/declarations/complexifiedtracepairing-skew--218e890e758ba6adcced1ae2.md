# complexifiedTracePairing_skew

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b0ebdfc-d10c-4927-b9ab-1811d6cbdff1",
  "kind": "theorem",
  "lexical_name": "complexifiedTracePairing_skew",
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
  "slug": "complexifiedtracepairing-skew--218e890e758ba6adcced1ae2",
  "source": {
    "blob": "4e1f756b1151c106689a4db43717cda3e51f65f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 95,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMRiemannForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:218e890e758ba6adcced1ae20fc28276e62f6aeb24aa59c6bdc7736a2ffbc57f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b0ebdfc-d10c-4927-b9ab-1811d6cbdff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexifiedTracePairing_skew
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z w : G → ℂ) :
    X.complexifiedTracePairing w z =
      - X.complexifiedTracePairing z w := by
  classical
  unfold SignControlledXi.complexifiedTracePairing
  let f : G → ℂ := fun σ =>
    complexEmbeddingAt E σ X.xi * w σ *
      z ((centralInvolution E).conj σ)
  calc
    (∑ σ, f σ) =
        ∑ σ, f (conjugationEquiv E σ) := by
          exact (Equiv.sum_comp (conjugationEquiv E) f).symm
    _ = ∑ σ,
        -(complexEmbeddingAt E σ X.xi * z σ *
          w ((centralInvolution E).conj σ)) := by
      apply Finset.sum_congr rfl
      intro σ _
      simp [f, conjugationEquiv, embedding_xi_conjLabel E X,
        (centralInvolution E).conj_involutive]
      ring
    _ = - ∑ σ,
        complexEmbeddingAt E σ X.xi * z σ *
          w ((centralInvolution E).conj σ) := by
      rw [Finset.sum_neg_distrib]

/-- In characteristic zero, skew-symmetry makes the complexified pairing
alternating globally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMRiemannForm.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1f756b1151c106689a4db43717cda3e51f65f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
