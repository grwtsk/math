# norm_image_sub_le_of_bound'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5323436-8512-9021-08fd-003a2e55b617",
  "kind": "theorem",
  "lexical_name": "norm_image_sub_le_of_bound'",
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
  "slug": "norm-image-sub-le-of-bound--b2c70705ac71d767b8728854",
  "source": {
    "blob": "99c54afef0043a93d86986320aa79171a7001433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2c70705ac71d767b872885498049ece565211fac36d1716368bd318c093a384",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5323436-8512-9021-08fd-003a2e55b617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_image_sub_le_of_bound' [DecidableEq ι] (f : MultilinearMap 𝕜 E G) {C : ℝ} (hC : 0 ≤ C)
    (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) (m₁ m₂ : ∀ i, E i) :
    ‖f m₁ - f m₂‖ ≤ C * ∑ i, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
  have A :
    ∀ s : Finset ι,
      ‖f m₁ - f (s.piecewise m₂ m₁)‖ ≤
        C * ∑ i ∈ s, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
    intro s
    induction' s using Finset.induction with i s his Hrec
    · simp
    have I :
      ‖f (s.piecewise m₂ m₁) - f ((insert i s).piecewise m₂ m₁)‖ ≤
        C * ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
      have A : (insert i s).piecewise m₂ m₁ = Function.update (s.piecewise m₂ m₁) i (m₂ i) :=
        s.piecewise_insert _ _ _
      have B : s.piecewise m₂ m₁ = Function.update (s.piecewise m₂ m₁) i (m₁ i) := by
        simp [eq_update_iff, his]
      rw [B, A, ← f.map_update_sub]
      apply le_trans (H _)
      gcongr with j
      by_cases h : j = i
      · rw [h]
        simp
      · by_cases h' : j ∈ s <;> simp [h', h, le_refl]
    calc
      ‖f m₁ - f ((insert i s).piecewise m₂ m₁)‖ ≤
          ‖f m₁ - f (s.piecewise m₂ m₁)‖ +
            ‖f (s.piecewise m₂ m₁) - f ((insert i s).piecewise m₂ m₁)‖ := by
        rw [← dist_eq_norm, ← dist_eq_norm, ← dist_eq_norm]
        exact dist_triangle _ _ _
      _ ≤ (C * ∑ i ∈ s, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖) +
            C * ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ :=
        (add_le_add Hrec I)
      _ = C * ∑ i ∈ insert i s, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
        simp [his, add_comm, left_distrib]
  convert A univ
  simp

/-- If `f` satisfies a boundedness property around `0`, one can deduce a bound on `f m₁ - f m₂`
using the multilinearity. Here, we give a usable but not very precise version. See
`norm_image_sub_le_of_bound'` for a more precise but less usable version. The bound is
`‖f m - f m'‖ ≤ C * card ι * ‖m - m'‖ * (max ‖m‖ ‖m'‖) ^ (card ι - 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c54afef0043a93d86986320aa79171a7001433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
