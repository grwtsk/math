# same_kernel_different_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dec93461-3358-a6a6-1e06-8284433af76b",
  "kind": "theorem",
  "lexical_name": "same_kernel_different_sign",
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
  "slug": "same-kernel-different-sign--9d0230c3396d1626c5e49c61",
  "source": {
    "blob": "2317c8ea84cc6ba710467f7f8ed9f19737bf095e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d0230c3396d1626c5e49c6173295ff71bd2291cb55867568911aa89115424d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dec93461-3358-a6a6-1e06-8284433af76b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_kernel_different_sign :
    (∀ x : Fin 2 → ℝ,
      positiveDiagonal.mulVec x = 0 ↔ indefiniteDiagonal.mulVec x = 0) ∧
      positiveDiagonal.PosDef ∧ ¬ indefiniteDiagonal.PosSemidef := by
  constructor
  · intro x
    simp only [positiveDiagonal, Matrix.one_mulVec, indefiniteDiagonal,
      funext_iff, Pi.zero_apply, Matrix.mulVec_diagonal]
    constructor
    · intro hx i
      rw [hx i]
      simp
    · intro hx i
      fin_cases i
      · simpa using hx 0
      · simpa using hx 1
  · constructor
    · exact Matrix.PosDef.one
    · rw [indefiniteDiagonal, Matrix.posSemidef_diagonal_iff]
      intro h
      have hzero := h (0 : Fin 2)
      norm_num at hzero

end

end FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures

-- Exact fixture source: tests/positive_atlas_feshbach_inertia.lean

/-!
Numerical inertia fixtures with actual nonzero cross coupling.

The rank-one packet tests the singular Schur center and retained null index.
The indefinite packet tests both signed indices. Counts are proved through
Mathlib's weighted-sum-of-squares signature theorems; no eigenvalue oracle or
numerical approximation is used. AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2317c8ea84cc6ba710467f7f8ed9f19737bf095e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
