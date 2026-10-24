# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caab2c7a8d40610ccc42061bc145bc783891417d633ff27342c4c0ce025cb08b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a939caa0a3f33b09c23932de",
  "source": {
    "blob": "be97cb06e4aa3099f1cfcd456b75cc99ada0a5b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 72,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a939caa0a3f33b09c23932de4a9a7cd7af3da978adb88fd98c3a0a506be39754",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caab2c7a8d40610ccc42061bc145bc783891417d633ff27342c4c0ce025cb08b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : CMDiff ∞ (proj (𝕜 := 𝕜)) := by
  unfold proj
  exact contMDiff_snd_tangentBundle_modelSpace 𝕜 𝓘(𝕜)

end ErrorMetavars

/-! Additional tests for the elaborators for `MDifferentiable{WithinAt,At,On}`. -/
section differentiability

variable {EM' : Type*} [NormedAddCommGroup EM']
  [NormedSpace 𝕜 EM'] {H' : Type*} [TopologicalSpace H'] (I' : ModelWithCorners 𝕜 EM' H')
  {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']

-- From a manifold into an inner product space.
-- Make sure to declare a new field; otherwise we get a type mismatch about 𝕜 being a
-- normed field via being RCLike and via being a nontrivially normed field.
section

variable {k' : Type*} [RCLike k']
  {E'' : Type*} [NormedAddCommGroup E''] [h: InnerProductSpace k' E'']
  {E' H' M' : Type*} [NormedAddCommGroup E'] [NormedSpace k' E']
  [TopologicalSpace H'] [TopologicalSpace M'] [ChartedSpace H' M']
  (I'' : ModelWithCorners k' E' H') {g' : M' → E''}

/-- info: MDifferentiable I'' (modelWithCornersSelf k' E'') g' : Prop -/
#guard_msgs in
#check MDiff g'

/-- info: ContMDiff I'' (modelWithCornersSelf k' E'') n g' : Prop -/
#guard_msgs in
#check CMDiff n g'

end

/-! A partial homeomorphism or partial equivalence. More generally, this works for any type
with a coercion to (possibly dependent) functions. -/
section coercion

variable {s : Set M} {m : M}

variable {φ : OpenPartialHomeomorph M E} {ψ : PartialEquiv M E}

/-- info: MDifferentiableWithinAt I (modelWithCornersSelf 𝕜 E) (↑φ) s : M → Prop -/
#guard_msgs in
#check MDiffAt[s] φ

/-- info: MDifferentiableWithinAt I (modelWithCornersSelf 𝕜 E) (↑ψ) s : M → Prop -/
#guard_msgs in
#check MDiffAt[s] ψ

/-- info: MDifferentiableAt I (modelWithCornersSelf 𝕜 E) ↑φ : M → Prop -/
#guard_msgs in
#check MDiffAt φ

/-- info: MDifferentiableAt I (modelWithCornersSelf 𝕜 E) ↑ψ : M → Prop -/
#guard_msgs in
#check MDiffAt ψ

/-- info: MDifferentiableOn I (modelWithCornersSelf 𝕜 E) (↑φ) s : Prop -/
#guard_msgs in
#check MDiff[s] φ

/-- info: MDifferentiableOn I (modelWithCornersSelf 𝕜 E) (↑ψ) s : Prop -/
#guard_msgs in
#check MDiff[s] ψ

/-- info: MDifferentiable I (modelWithCornersSelf 𝕜 E) ↑φ : Prop -/
#guard_msgs in
#check MDiff φ

/-- info: ContMDiffWithinAt I (modelWithCornersSelf 𝕜 E) 2 (↑ψ) s : M → Prop -/
#guard_msgs in
#check CMDiffAt[s] 2 ψ

/-- info: ContMDiffOn I (modelWithCornersSelf 𝕜 E) 2 (↑φ) s : Prop -/
#guard_msgs in
#check CMDiff[s] 2 φ

/-- info: ContMDiffAt I (modelWithCornersSelf 𝕜 E) 2 ↑φ : M → Prop -/
#guard_msgs in
#check CMDiffAt 2 φ

/-- info: ContMDiff I (modelWithCornersSelf 𝕜 E) 2 ↑ψ : Prop -/
#guard_msgs in
#check CMDiff 2 ψ

/--
info: mfderiv I (modelWithCornersSelf 𝕜 E)
  ↑φ : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace (modelWithCornersSelf 𝕜 E) (↑φ x))
-/
#guard_msgs in
#check mfderiv% φ

/--
info: mfderivWithin I (modelWithCornersSelf 𝕜 E) (↑ψ)
  s : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace (modelWithCornersSelf 𝕜 E) (↑ψ x))
-/
#guard_msgs in
#check mfderiv[s] ψ

/--
info: mfderivWithin I (modelWithCornersSelf 𝕜 E) (↑ψ)
  s : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace (modelWithCornersSelf 𝕜 E) (↑ψ x))
-/
#guard_msgs in
variable {f : ContMDiffSection I F n V} in
#check mfderiv[s] ψ

/--
info: mfderiv I I' ⇑g : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace I' (g x))
-/
#guard_msgs in
variable {g : ContMDiffMap I I' M M' n} in
#check mfderiv% g

-- An example of "any type" which coerces to functions.
/--
info: mfderiv I I' ⇑g : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace I' (g x))
-/
#guard_msgs in
variable {g : Equiv M M'} in
#check mfderiv% g

end coercion

variable {σ : Π x : M, V x} {σ' : (x : E) → Trivial E E' x} {s : E → E'}
variable (X : (m : M) → TangentSpace I m) [IsManifold I 1 M]

/-! These elaborators can be combined with the total space elaborator. -/
section interaction

-- Note: these tests might be incomplete; extend as needed!

/-- info: MDifferentiableAt I I.tangent fun m ↦ TotalSpace.mk' E m (X m) : M → Prop -/
#guard_msgs in
#check MDiffAt (T% X)

/--
info: MDifferentiableAt I (I.prod (modelWithCornersSelf 𝕜 F)) fun x ↦ TotalSpace.mk' F x (σ x) : M → Prop
-/
#guard_msgs in
#check MDiffAt (T% σ)

/--
info: MDifferentiableAt (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E')) fun x ↦
  TotalSpace.mk' E' x (σ' x) : E → Prop
-/
#guard_msgs in
#check MDiffAt (T% σ')

end interaction

-- Total space over the tangent space and tangent bundle.
section

variable [IsManifold I 2 M]

variable {h : Bundle.TotalSpace F (TangentSpace I : M → Type _) → F} {h' : TangentBundle I M → F}

-- Test the inference of a model with corners on a trivial bundle over the tangent space of a
-- manifold. (This code path is not covered by the other tests, hence should be kept.)
-- Stating smoothness this way does not make sense, but finding a model with corners should work.
/--
error: failed to synthesize
  TopologicalSpace (TotalSpace F (TangentSpace I))

Hint: Additional diagnostic information may be available using the `set_option diagnostics true` command.
---
trace: [Elab.DiffGeo.MDiff] Finding a model with corners for: `TotalSpace F (TangentSpace I)`
[Elab.DiffGeo.MDiff] ✅️ TotalSpace
  [Elab.DiffGeo.MDiff] ✅️ TangentSpace
    [Elab.DiffGeo.MDiff] `TangentSpace I` is the total space of the `TangentBundle` of `M`
    [Elab.DiffGeo.MDiff] Found model: `I.tangent`
  [Elab.DiffGeo.MDiff] Found model: `I.tangent`
[Elab.DiffGeo.MDiff] Finding a model with corners for: `F`
[Elab.DiffGeo.MDiff] 💥️ TotalSpace
  [Elab.DiffGeo.MDiff] Failed with error:
      `F` is not a `Bundle.TotalSpace`.
[Elab.DiffGeo.MDiff] 💥️ TangentBundle
  [Elab.DiffGeo.MDiff] Failed with error:
      `F` is not a `TangentBundle`
[Elab.DiffGeo.MDiff] ✅️ NormedSpace
  [Elab.DiffGeo.MDiff] `F` is a normed space over the field `𝕜`
  [Elab.DiffGeo.MDiff] Found model: `modelWithCornersSelf 𝕜 F`
  [Elab.DiffGeo.MDiff] This is the trivial model with corners for the normed space `F` over the base field `𝕜`.
-/
#guard_msgs in
set_option trace.Elab.DiffGeo true in
#check MDiff h

-- The reason this test fails is that Bundle.TotalSpace F (TangentSpace I : M → Type _) is not
-- the way to state smoothness.
/--
error: failed to synthesize instance of type class
  TopologicalSpace (TotalSpace F (TangentSpace I))

Hint: Type class instance resolution failures can be inspected with the `set_option trace.Meta.synthInstance true` command.
-/
#guard_msgs in
#synth IsManifold I.tangent 1 (Bundle.TotalSpace F (TangentSpace I : M → Type _))

-- The correct way is this.
/-- info: TotalSpace.isManifold E (TangentSpace I) -/
#guard_msgs in
#synth IsManifold I.tangent 1 (TangentBundle I M)

/-- info: MDifferentiable I.tangent (modelWithCornersSelf 𝕜 F) h' : Prop -/
#guard_msgs in
#check MDifferentiable I.tangent 𝓘(𝕜, F) h'

/--
info: MDifferentiable (I.prod (modelWithCornersSelf 𝕜 E)) (modelWithCornersSelf 𝕜 F) h' : Prop
-/
#guard_msgs in
#check MDifferentiable (I.prod (𝓘(𝕜, E))) 𝓘(𝕜, F) h'

/-- info: MDifferentiable I.tangent (modelWithCornersSelf 𝕜 F) h' : Prop -/
#guard_msgs in
#check MDiff h'

end

-- Inferring a model with corners on a space of continuous linear maps between normed spaces
section ContinuousLinearMap

variable {f : M → E →L[𝕜] E'} in
/--
info: MDifferentiable I (modelWithCornersSelf 𝕜 (ContinuousLinearMap (RingHom.id 𝕜) E E')) f : Prop
-/
#guard_msgs in
#check MDiff f

variable {f : M → E →L[𝕜] E'} in
/--
info: ContMDiff I (modelWithCornersSelf 𝕜 (ContinuousLinearMap (RingHom.id 𝕜) E E')) 2 f : Prop
-/
#guard_msgs in
#check CMDiff 2 f

section

-- And the same test if E is a real normed space and E' is a normed space over a field R' which is
-- definitionally equal to ℝ, but not at reducible transparency: this is meant to test the
-- transparency handling in the definitional equality check in the model inference.

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be97cb06e4aa3099f1cfcd456b75cc99ada0a5b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
