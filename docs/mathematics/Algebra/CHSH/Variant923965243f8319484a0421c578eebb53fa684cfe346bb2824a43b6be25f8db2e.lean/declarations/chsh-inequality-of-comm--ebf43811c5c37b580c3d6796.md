# CHSH_inequality_of_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1fbf32de808c91d326a2c9d09cd2050a9126ad8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bd6e58e-e800-7ad6-0770-39ed98354604",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c01d1d0-dd8e-4f54-e114-e4d1d7511f89",
  "kind": "theorem",
  "lexical_name": "CHSH_inequality_of_comm",
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
  "slug": "chsh-inequality-of-comm--ebf43811c5c37b580c3d6796",
  "source": {
    "blob": "b1fbf32de808c91d326a2c9d09cd2050a9126ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 115,
    "path": "GRWTSK/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebf43811c5c37b580c3d679602de7f6e48a4ec8725b2a81f2abe18a104277a11",
  "verification": {
    "reference": "docs/verification/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c01d1d0-dd8e-4f54-e114-e4d1d7511f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CHSH_inequality_of_comm [CommRing R] [PartialOrder R] [StarRing R] [StarOrderedRing R]
    [Algebra ℝ R] [IsOrderedModule ℝ R] (A₀ A₁ B₀ B₁ : R) (T : IsCHSHTuple A₀ A₁ B₀ B₁) :
    A₀ * B₀ + A₀ * B₁ + A₁ * B₀ - A₁ * B₁ ≤ 2 := by
  let P := 2 - A₀ * B₀ - A₀ * B₁ - A₁ * B₀ + A₁ * B₁
  have i₁ : 0 ≤ P := by
    have idem : P * P = 4 * P := CHSH_id T.A₀_inv T.A₁_inv T.B₀_inv T.B₁_inv
    have idem' : P = (1 / 4 : ℝ) • (P * P) := by
      have h : 4 * P = (4 : ℝ) • P := by simp [map_ofNat, Algebra.smul_def]
      rw [idem, h, ← mul_smul]
      simp
    have sa : star P = P := by
      dsimp [P]
      simp only [star_add, star_sub, star_mul, star_ofNat, T.A₀_sa, T.A₁_sa, T.B₀_sa,
        T.B₁_sa, mul_comm B₀, mul_comm B₁]
    simpa only [← idem', sa]
      using smul_nonneg (by simp : (0 : ℝ) ≤ 1 / 4) (star_mul_self_nonneg P)
  apply le_of_sub_nonneg
  simpa only [sub_add_eq_sub_sub, ← sub_add] using i₁

/-!
We now prove some rather specialized lemmas in preparation for the Tsirelson inequality,
which we hide in a namespace as they are unlikely to be useful elsewhere.
-/


namespace TsirelsonInequality

/-!
Before proving Tsirelson's bound,
we prepare some easy lemmas about √2.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CHSH/Variant923965243f8319484a0421c578eebb53fa684cfe346bb2824a43b6be25f8db2e.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1fbf32de808c91d326a2c9d09cd2050a9126ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
