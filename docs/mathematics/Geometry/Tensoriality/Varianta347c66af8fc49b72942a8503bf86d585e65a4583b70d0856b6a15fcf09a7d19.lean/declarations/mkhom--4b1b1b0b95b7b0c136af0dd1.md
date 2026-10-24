# mkHom₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40c0093767492b8e164718a15b9860975eb1672afbfceedf27601e27ce822ef5",
  "kind": "def",
  "lexical_name": "mkHom₂",
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
  "slug": "mkhom--4b1b1b0b95b7b0c136af0dd1",
  "source": {
    "blob": "2c1a66c91c2739590f453cf74833d44017923c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 230,
    "path": "GRWTSK/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b1b1b0b95b7b0c136af0dd167d90d035fbd1e0cb471bf684febbef516778e3c",
  "verification": {
    "reference": "docs/verification/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40c0093767492b8e164718a15b9860975eb1672afbfceedf27601e27ce822ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mkHom₂
    -- `Φ` and `x` explicit to make it easier to generate the side conditions at point of use
    (Φ : (Π x : M, V x) → (Π x : M, V' x) → A) (x : M)
    (hΦ₁ : ∀ τ, MDiffAt (T% τ) x → TensorialAt I F (Φ · τ) x)
    (hΦ₂ : ∀ σ, MDiffAt (T% σ) x → TensorialAt I F' (Φ σ) x) :
    V x →L[𝕜] V' x →L[𝕜] A :=
  have : T2Space (V x) := FiberBundle.t2Space F V x
  have : FiniteDimensional 𝕜 (V x) := VectorBundle.finiteDimensional 𝕜 F V x
  have : T2Space (V' x) := FiberBundle.t2Space F' V' x
  have : FiniteDimensional 𝕜 (V' x) := VectorBundle.finiteDimensional 𝕜 F' V' x
  have : IsTopologicalAddGroup (V x) :=
    (VectorBundle.continuousLinearEquivAt 𝕜 F V x).toContinuousAddEquiv.isTopologicalAddGroup
  have : IsTopologicalAddGroup (V' x) :=
    (VectorBundle.continuousLinearEquivAt 𝕜 F' V' x).toContinuousAddEquiv.isTopologicalAddGroup
  have (x : M) : ContinuousSMul 𝕜 (V x) :=
    (VectorBundle.continuousLinearEquivAt 𝕜 F V x).continuousSMul
  have (x : M) : ContinuousSMul 𝕜 (V' x) :=
    (VectorBundle.continuousLinearEquivAt 𝕜 F' V' x).continuousSMul
  have H : IsBilinearMap 𝕜
    (fun (v : V x) (w : V' x) ↦ Φ (extend F v) (extend F' w)) :=
  { add_left v₁ v₂ w := by
      rw [← (hΦ₁ _ (mdifferentiableAt_extend ..)).add (mdifferentiableAt_extend ..)
        (mdifferentiableAt_extend ..)]
      apply TensorialAt.pointwise₂ hΦ₁ hΦ₂ (mdifferentiableAt_extend ..) _
        (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..) _ rfl
      · exact mdifferentiableAt_add_section (mdifferentiableAt_extend ..)
          (mdifferentiableAt_extend ..)
      · simp
    smul_left c v w := by
      rw [← (hΦ₁ _ (mdifferentiableAt_extend ..)).smul (f := fun _ ↦ c) (mdifferentiable_const ..)
        (mdifferentiableAt_extend ..)]
      apply TensorialAt.pointwise₂ hΦ₁ hΦ₂ (mdifferentiableAt_extend ..)
        (mdifferentiableAt_const.smul_section (mdifferentiableAt_extend ..))
        (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..)
      · simp
      · rfl
    add_right v w₁ w₂ := by
      rw [← (hΦ₂ _ (mdifferentiableAt_extend ..)).add (mdifferentiableAt_extend ..)
        (mdifferentiableAt_extend ..)]
      apply TensorialAt.pointwise₂ hΦ₁ hΦ₂ (mdifferentiableAt_extend ..)
        (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..) <|
        mdifferentiableAt_add_section (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..)
      · rfl
      · simp
    smul_right c v w := by
      rw [← (hΦ₂ _ (mdifferentiableAt_extend ..)).smul (f := fun _ ↦ c) (mdifferentiable_const ..)
        (mdifferentiableAt_extend ..)]
      apply TensorialAt.pointwise₂ hΦ₁ hΦ₂ (mdifferentiableAt_extend ..)
        (mdifferentiableAt_extend ..) (mdifferentiableAt_extend ..) <|
        mdifferentiableAt_const.smul_section (mdifferentiableAt_extend ..)
      · rfl
      · simp }
  H.toLinearMap.toContinuousBilinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1a66c91c2739590f453cf74833d44017923c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
