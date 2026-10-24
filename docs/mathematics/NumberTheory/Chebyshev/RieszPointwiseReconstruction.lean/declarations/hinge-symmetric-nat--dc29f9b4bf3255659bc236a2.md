# hinge_symmetric_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc791a5d-b847-841d-8298-5c302be9000b",
  "kind": "theorem",
  "lexical_name": "hinge_symmetric_nat",
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
  "slug": "hinge-symmetric-nat--dc29f9b4bf3255659bc236a2",
  "source": {
    "blob": "e086f62a7417d154af4f993c89b52d6fdc9b9df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc29f9b4bf3255659bc236a2728a9a0f3881b723ade13e4f7f2ec158e42a3572",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc791a5d-b847-841d-8298-5c302be9000b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hinge_symmetric_nat (M m : ℕ) (h : ℝ) (hh : 0 < h) (hsmall : h ≤ 1) :
    max ((M : ℝ) + h - (m : ℝ)) 0 - max ((M : ℝ) - h - (m : ℝ)) 0 =
      2 * h * halfJumpWeight M m := by
  by_cases hm : m < M
  · have hmR : (m : ℝ) + 1 ≤ M := by exact_mod_cast (Nat.succ_le_iff.mpr hm)
    rw [max_eq_left (by linarith), max_eq_left (by linarith)]
    simp [halfJumpWeight, hm]
    ring
  · by_cases he : m = M
    · subst m
      rw [max_eq_left (by linarith), max_eq_right (by linarith)]
      simp [halfJumpWeight]
      ring
    · have hmR : (M : ℝ) + 1 ≤ m := by exact_mod_cast (show M + 1 ≤ m by omega)
      rw [max_eq_right (by linarith), max_eq_right (by linarith)]
      simp [halfJumpWeight, hm, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e086f62a7417d154af4f993c89b52d6fdc9b9df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
