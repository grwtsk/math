# smulRightCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb763b48ebe550a5211e3bacfb488d8b2102549caada21e4ec202a54e7f75d13",
  "kind": "def",
  "lexical_name": "smulRightCLM",
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
  "slug": "smulrightclm--2e3386b97f94598a85e5fc33",
  "source": {
    "blob": "5b4a9c9cc147973695cfef46415308ed215424ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 860,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e3386b97f94598a85e5fc33ef560ec5aba34e6d985ffd0b4f257c0cd557f394",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb763b48ebe550a5211e3bacfb488d8b2102549caada21e4ec202a54e7f75d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smulRightCLM (L : E →L[ℝ] G →L[ℝ] ℝ) : 𝓢(E, F) →L[𝕜] 𝓢(E, G →L[ℝ] F) :=
  mkCLM (fun f x ↦ (L x).smulRight (f x)) (by intros; ext; simp)
    (by intro c g x; ext v; simpa using smul_comm (L x v) c (g x))
    (by fun_prop) <| by
      intro ⟨k, n⟩
      use {(k + 1, n), (k, n - 1)}, 2 * ‖L‖ * (max 1 n), by positivity
      intro f x
      calc
        _ ≤ ‖x‖ ^ k * ∑ i ∈ Finset.range (n + 1), (n.choose i) *
            ‖iteratedFDeriv ℝ i L x‖ * ‖iteratedFDeriv ℝ (n - i) f x‖ := by
          gcongr 1
          exact norm_iteratedFDeriv_le_of_bilinear_of_le_one (smulRightL ℝ G F)
            (by fun_prop) (f.smooth ⊤) x (mod_cast le_top) norm_smulRightL_le
        _ ≤ ‖x‖ ^ k *
            (‖L x‖ * ‖iteratedFDeriv ℝ n f x‖ + n * ‖L‖ * ‖iteratedFDeriv ℝ (n - 1) f x‖) := by
          gcongr 1
          rw [Finset.sum_range_succ', add_comm]
          cases n with
          | zero => simp
          | succ n =>
            have : ∑ k ∈ Finset.range n,
                (((n + 1).choose (k + 1 + 1)) : ℝ) * ‖iteratedFDeriv ℝ (k + 1 + 1) L x‖ *
                ‖iteratedFDeriv ℝ (n + 1 - (k + 1 + 1)) f x‖ = 0 := by
              apply Finset.sum_eq_zero
              simp [iteratedFDeriv_succ_eq_comp_right, iteratedFDeriv_succ_const]
            simp [Finset.sum_range_succ', this]
        _ = ‖x‖ ^ k * ‖L x‖ * ‖iteratedFDeriv ℝ n f x‖ +
              ‖x‖ ^ k * n * ‖L‖ * ‖iteratedFDeriv ℝ (n - 1) f x‖ := by ring
        _ ≤ ‖L‖ * 1 * (SchwartzMap.seminorm 𝕜 (k + 1) n) f +
              ‖L‖ * n * (SchwartzMap.seminorm 𝕜 k (n - 1) f) := by
          grw [le_opNorm, ← le_seminorm 𝕜 (k + 1) n f x, ← le_seminorm 𝕜 k (n - 1) f x]
          apply le_of_eq
          ring
        _ ≤ ‖L‖ * max 1 n *
            max ((SchwartzMap.seminorm 𝕜 (k + 1) n) f) ((SchwartzMap.seminorm 𝕜 k (n - 1)) f) +
            ‖L‖ * max 1 n *
            max ((SchwartzMap.seminorm 𝕜 (k + 1) n) f) ((SchwartzMap.seminorm 𝕜 k (n - 1)) f) := by
          gcongr <;> simp
        _ = _ := by
          simp only [Finset.sup_insert, schwartzSeminormFamily_apply, Finset.sup_singleton,
            Seminorm.coe_sup, Pi.sup_apply]
          ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2697946fa3bcbdc7934676f6c21fbbb565291f93c3ca406e3a4956472935833.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4a9c9cc147973695cfef46415308ed215424ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
