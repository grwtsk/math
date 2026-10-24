# singularBlockSchurSolver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:896078161757df6e33de4df89448447bbb9c731eb6f87fbd960d178407e412ff",
  "kind": "def",
  "lexical_name": "singularBlockSchurSolver",
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
  "slug": "singularblockschursolver--b18c8ca73a6d7f606bc82a4d",
  "source": {
    "blob": "fbb7bac9af44cb97ea78ceb62498d1e6fc03ed04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b18c8ca73a6d7f606bc82a4deac583f894abf189c2d25b054b77d0d3462409a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:896078161757df6e33de4df89448447bbb9c731eb6f87fbd960d178407e412ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singularBlockSchurSolver
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u) :
    BlockSchurSolver G where
  solve := (singularProvenanceFactorization G A B hA hB).solve
  normal := by
    intro p u
    have hsolve := singularProvenanceFactorization_apply G A B hA hB u
    have hsub :
        G.form (provenanceInclusion p)
            (autonomousInclusion u -
              provenanceInclusion
                ((singularProvenanceFactorization G A B hA hB).solve u)) =
          G.form (provenanceInclusion p) (autonomousInclusion u) -
            G.form (provenanceInclusion p)
              (provenanceInclusion
                ((singularProvenanceFactorization G A B hA hB).solve u)) := by
      rw [sub_eq_add_neg, G.add_right]
      have hs := G.smul_right (-1 : ℝ) (provenanceInclusion p)
        (provenanceInclusion
          ((singularProvenanceFactorization G A B hA hB).solve u))
      simp only [neg_smul, one_smul, neg_mul, one_mul] at hs
      rw [hs]
      ring
    rw [hsub, hB, hA, hsolve]
    ring

/-- The singular Schur residual is positive semidefinite without choosing a
generalized inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantb458669ff846783ef1260c709ae73af9095b98ffbece14be21300a8a83a7e103.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb7bac9af44cb97ea78ceb62498d1e6fc03ed04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
