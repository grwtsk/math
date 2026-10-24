# Unitary.openPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95f1dafb03a604d9c513cbbd98c4bfa3b926ed304af8e582ffca82212bd6517d",
  "kind": "def",
  "lexical_name": "Unitary.openPartialHomeomorph",
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
  "slug": "unitary-openpartialhomeomorph--bbb05efabcd66d7b7717d53d",
  "source": {
    "blob": "092b916ab1e0d55969c502ec34031fb0f1a901a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbb05efabcd66d7b7717d53d8bf83df9df797ae91d2482ac8d62b67687b058ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95f1dafb03a604d9c513cbbd98c4bfa3b926ed304af8e582ffca82212bd6517d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Unitary.openPartialHomeomorph :
    OpenPartialHomeomorph (unitary A) (selfAdjoint A) where
  toFun := argSelfAdjoint
  invFun := expUnitary
  source := ball 1 2
  target := ball 0 π
  map_source' u hu := by
    simp only [mem_ball, Subtype.dist_eq, OneMemClass.coe_one, dist_eq_norm, sub_zero] at hu ⊢
    rw [norm_argSelfAdjoint hu]
    calc
      Real.arccos (1 - ‖(u - 1 : A)‖ ^ 2 / 2) < Real.arccos (1 - 2 ^ 2 / 2) := by
        apply Real.arccos_lt_arccos (by norm_num) (by gcongr)
        linarith [(by positivity : 0 ≤ ‖(u - 1 : A)‖ ^ 2 / 2)]
      _ = π := by norm_num
  map_target' x hx := by
    simp only [mem_ball, Subtype.dist_eq, OneMemClass.coe_one, dist_eq_norm, sub_zero] at hx ⊢
    rw [← sq_lt_sq₀ (by positivity) (by positivity), norm_sq_expUnitary_sub_one hx.le]
    have : -1 < Real.cos ‖(x : A)‖ :=
      Real.cos_pi ▸ Real.cos_lt_cos_of_nonneg_of_le_pi (by positivity) le_rfl hx
    simp only [AddSubgroupClass.coe_norm, mul_sub, mul_one, sq, gt_iff_lt]
    linarith
  left_inv' u hu := expUnitary_argSelfAdjoint <| by
    simpa [Subtype.dist_eq, dist_eq_norm] using hu
  right_inv' x hx := argSelfAdjoint_expUnitary <| by simpa using hx
  open_source := isOpen_ball
  open_target := isOpen_ball
  continuousOn_toFun := by fun_prop
  continuousOn_invFun := by fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092b916ab1e0d55969c502ec34031fb0f1a901a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
