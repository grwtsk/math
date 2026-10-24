# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:524333dfc93634f04787c615749bd9a83e3733daead090cae825ce5b68a8d43d",
  "kind": "instance",
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
  "slug": "instance--ccc48b2fc88e2bce8cf1ce58",
  "source": {
    "blob": "011fa22e31401e1412c8cfdccbb0b7d7bf1893d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1210,
    "line": 638,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccc48b2fc88e2bce8cf1ce58f0cd715855185335b301301853ba85082e3bc130",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:524333dfc93634f04787c615749bd9a83e3733daead090cae825ce5b68a8d43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–1210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : ChartedSpace (EuclideanHalfSpace 1) ↑(Set.Icc x y) :=
  instIccChartedSpace x y

set_option trace.Elab.DiffGeo.MDiff true in
/--
error: Could not find a model with corners for `↑(Set.Icc x y)`.
---
trace: [Elab.DiffGeo.MDiff] Finding a model with corners for: `↑(Set.Icc x y)`
[Elab.DiffGeo.MDiff] 💥️ TotalSpace
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not a `Bundle.TotalSpace`.
[Elab.DiffGeo.MDiff] 💥️ TangentBundle
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not a `TangentBundle`
[Elab.DiffGeo.MDiff] 💥️ NormedSpace
  [Elab.DiffGeo.MDiff] Failed with error:
      Couldn't find a `NormedSpace` structure on `↑(Set.Icc x y)` among local instances.
[Elab.DiffGeo.MDiff] 💥️ Manifold
  [Elab.DiffGeo.MDiff] considering instance of type `ChartedSpace H M`
  [Elab.DiffGeo.MDiff] considering instance of type `ChartedSpace H' M'`
  [Elab.DiffGeo.MDiff] considering instance of type `ChartedSpace H N`
  [Elab.DiffGeo.MDiff] Failed with error:
      Couldn't find a `ChartedSpace` structure on `↑(Set.Icc x
          y)` among local instances, and `↑(Set.Icc x
          y)` is not the charted space of some type in the local context either.
[Elab.DiffGeo.MDiff] 💥️ ContinuousLinearMap
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not a space of continuous linear maps
[Elab.DiffGeo.MDiff] 💥️ RealInterval
  [Elab.DiffGeo.MDiff] Failed with error:
      `Set.Icc x y` is a closed interval of type `RealCopy'`, which is not reducibly definitionally equal to ℝ
[Elab.DiffGeo.MDiff] 💥️ EuclideanSpace
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not a Euclidean space, half-space or quadrant
[Elab.DiffGeo.MDiff] 💥️ UpperHalfPlane
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not the complex upper half plane
[Elab.DiffGeo.MDiff] 💥️ Units of algebra
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not a set of units, in particular not of a complete normed algebra
[Elab.DiffGeo.MDiff] 💥️ Complex unit circle
  [Elab.DiffGeo.MDiff] Failed with error:
      `↑(Set.Icc x y)` is not the complex unit circle
[Elab.DiffGeo.MDiff] 💥️ Sphere
  [Elab.DiffGeo.MDiff] Failed with error:
      `Set.Icc x y` is not a sphere in a real normed space
[Elab.DiffGeo.MDiff] 💥️ NormedField
  [Elab.DiffGeo.MDiff] Failed with error:
      failed to synthesize
        NontriviallyNormedField ↑(Set.Icc x y)
      ⏎
      Hint: Additional diagnostic information may be available using the `set_option diagnostics true` command.
[Elab.DiffGeo.MDiff] 💥️ InnerProductSpace
  [Elab.DiffGeo.MDiff] Failed with error:
      Couldn't find an `InnerProductSpace` structure on `↑(Set.Icc x y)` among local instances.
-/
#guard_msgs in
#check MDiffAt g
/--
error: Could not find a model with corners for `↑(Set.Icc x y)`.

Hint: failures to find a model with corners can be debugged with the command `set_option trace.Elab.DiffGeo.MDiff true`.
-/
#guard_msgs in
#check MDiff h
/--
error: Could not find a model with corners for `↑(Set.Icc x y)`.

Hint: failures to find a model with corners can be debugged with the command `set_option trace.Elab.DiffGeo.MDiff true`.
-/
#guard_msgs in
#check CMDiff 2 k

end RealInterval

/-! Tests for inferring a model with corners on Euclidean space, half-spaces and quadrants -/
section EuclideanSpace

variable {n m n' m' : ℕ} [NeZero n] [NeZero m] [NeZero n'] [NeZero m']
  {f : EuclideanSpace ℝ (Fin n) → ℝ} {g : EuclideanSpace ℝ (Fin n') → EuclideanSpace ℝ (Fin m')}
  {a b : ℝ} [Fact (a < b)] {h : Set.Icc a b → EuclideanSpace ℝ (Fin m)}

/--
info: MDifferentiable (modelWithCornersSelf Real (EuclideanSpace Real (Fin n))) (modelWithCornersSelf Real Real) f : Prop
-/
#guard_msgs in
#check MDiff f

/--
info: MDifferentiableAt (modelWithCornersSelf Real (EuclideanSpace Real (Fin n')))
  (modelWithCornersSelf Real (EuclideanSpace Real (Fin m'))) g : EuclideanSpace Real (Fin n') → Prop
-/
#guard_msgs in
#check MDiffAt g

/--
info: ContMDiff (modelWithCornersEuclideanHalfSpace 1) (modelWithCornersSelf Real (EuclideanSpace Real (Fin m))) 2 h : Prop
-/
#guard_msgs in
#check CMDiff 2 h

variable {f' : EuclideanHalfSpace 2 → ℝ} {x : EuclideanHalfSpace 2}
  {g' : EuclideanHalfSpace n → EuclideanHalfSpace m} {y : EuclideanHalfSpace n}

/--
info: ContMDiff (modelWithCornersEuclideanHalfSpace 2) (modelWithCornersSelf Real Real) 2 f' : Prop
-/
#guard_msgs in
#check CMDiff 2 f'

/--
info: MDifferentiableAt (modelWithCornersEuclideanHalfSpace 2) (modelWithCornersSelf Real Real) f' x : Prop
-/
#guard_msgs in
#check MDiffAt f' x

/--
info: MDifferentiableAt (modelWithCornersEuclideanHalfSpace n) (modelWithCornersEuclideanHalfSpace m) g' y : Prop
-/
#guard_msgs in
#check MDiffAt g' y

/--
info: ContMDiff (modelWithCornersEuclideanHalfSpace n) (modelWithCornersEuclideanHalfSpace m) 37 g' : Prop
-/
#guard_msgs in
#check CMDiff 37 g'

variable {f : EuclideanHalfSpace 2 → EuclideanSpace ℝ (Fin 37)} in
/--
info: ContMDiff (modelWithCornersEuclideanHalfSpace 2) (modelWithCornersSelf Real (EuclideanSpace Real (Fin 37))) 2 f : Prop
-/
#guard_msgs in
#check CMDiff 2 f

variable {f : EuclideanQuadrant 2 → EuclideanSpace ℝ (Fin 37)} in
/--
info: ContMDiff (modelWithCornersEuclideanQuadrant 2) (modelWithCornersSelf Real (EuclideanSpace Real (Fin 37))) 2 f : Prop
-/
#guard_msgs in
#check CMDiff 2 f

variable {f : EuclideanSpace ℝ (Fin 37) → EuclideanQuadrant m'} in
/--
info: MDifferentiable (modelWithCornersSelf Real (EuclideanSpace Real (Fin 37))) (modelWithCornersEuclideanQuadrant m')
  f : Prop
-/
#guard_msgs in
#check MDiff f

/--
info: ContMDiff
  ((modelWithCornersSelf Real (EuclideanSpace Real (Fin n))).prod
    (modelWithCornersSelf Real (EuclideanSpace Real (Fin n'))))
  ((modelWithCornersSelf Real Real).prod (modelWithCornersSelf Real (EuclideanSpace Real (Fin m')))) 37
  (Prod.map f g) : Prop
-/
#guard_msgs in
#check CMDiff 37 (Prod.map f g)
/--
info: ContMDiff ((modelWithCornersEuclideanHalfSpace 2).prod (modelWithCornersEuclideanHalfSpace n))
  ((modelWithCornersSelf Real Real).prod (modelWithCornersEuclideanHalfSpace m)) 37 (Prod.map f' g') : Prop
-/
#guard_msgs in
#check CMDiff 37 (Prod.map f' g')

end EuclideanSpace

/-! Inferring a model with corners when the model is a variable in the local context, but
a specific model: basic versions (such as `𝓘(𝕜, E)`) are tested in `Basic.lean`; this also works
for Euclidean space, half-space or quadrants.
-/
section

variable {X Y : Type*} {n : ℕ} [NeZero n] [TopologicalSpace X] [TopologicalSpace Y] {f : X → Y}

variable [ChartedSpace (EuclideanSpace ℝ (Fin n)) X] [ChartedSpace ℝ Y] in
/--
info: MDifferentiable (modelWithCornersSelf Real (EuclideanSpace Real (Fin n))) (modelWithCornersSelf Real Real) f : Prop
-/
#guard_msgs in
#check MDiff f

variable [ChartedSpace (EuclideanHalfSpace n) X] [ChartedSpace ℝ Y] in
/--
info: MDifferentiable (modelWithCornersEuclideanHalfSpace n) (modelWithCornersSelf Real Real) f : Prop
-/
#guard_msgs in
#check MDiff f

variable [ChartedSpace (EuclideanHalfSpace n) X] [ChartedSpace (EuclideanQuadrant n) Y] in
/--
info: MDifferentiable (modelWithCornersEuclideanHalfSpace n) (modelWithCornersEuclideanQuadrant n) f : Prop
-/
#guard_msgs in
#check MDiff f

variable [ChartedSpace ℝ X] [ChartedSpace (EuclideanQuadrant n) Y] in
/--
info: MDifferentiable (modelWithCornersSelf Real Real) (modelWithCornersEuclideanQuadrant n) f : Prop
-/
#guard_msgs in
#check MDiff f

end

-- See `NotationSphere.lean` for tests for the elaborators for spheres.

section UpperHalfPlane

open scoped UpperHalfPlane

-- Make a new complex manifold N with model J.
-- TODO: change this line to modify M and E instead (thus testing if everything
-- still works in the presence of two instances over different fields).
variable {E'' : Type*} [NormedAddCommGroup E''] [NormedSpace ℂ E''] {J : ModelWithCorners ℂ E'' H}
  {N : Type} [TopologicalSpace N] [ChartedSpace H N] [IsManifold J 2 N]

variable {g : ℍ → N} {h : E'' → ℍ} {k : ℍ → ℂ} {y : ℍ}

/-- info: ContMDiff (modelWithCornersSelf Complex Complex) J 2 g : Prop -/
#guard_msgs in
variable {g : ℍ → M} in
#check CMDiff 2 g

/-- info: ContMDiff (modelWithCornersSelf Complex Complex) J 2 g : Prop -/
#guard_msgs in
#check CMDiff 2 g

/--
info: MDifferentiableAt (modelWithCornersSelf Complex E'') (modelWithCornersSelf Complex Complex) h : E'' → Prop
-/
#guard_msgs in
#check MDiffAt h

/--
info: MDifferentiableAt (modelWithCornersSelf Complex Complex) (modelWithCornersSelf Complex Complex) k y : Prop
-/
#guard_msgs in
#check MDiffAt k y

end UpperHalfPlane

section units

variable {R : Type*} [NormedRing R] [CompleteSpace R] [NormedAlgebra 𝕜 R]

variable {f : Rˣ → 𝕜} in
/-- info: MDifferentiable (modelWithCornersSelf 𝕜 R) (modelWithCornersSelf 𝕜 𝕜) f : Prop -/
#guard_msgs in
#check MDiff f

variable {V : Type*} [NormedAddCommGroup V] [NormedSpace 𝕜 V] [CompleteSpace V]

-- #check LieGroup 𝓘(𝕜, V →L[𝕜] V) 2 (V →L[𝕜] V)ˣ passes

/--
info: MDifferentiable (modelWithCornersSelf 𝕜 (ContinuousLinearMap (RingHom.id 𝕜) V V)) (modelWithCornersSelf 𝕜 𝕜) f : Prop
-/
#guard_msgs in
variable {f : (V →L[𝕜] V)ˣ → 𝕜} in
#check MDiff f

variable {α : Type*} [Monoid α] [Ring α]

/--
error: Could not find a model with corners for `Units α`.

Hint: failures to find a model with corners can be debugged with the command `set_option trace.Elab.DiffGeo.MDiff true`.
-/
#guard_msgs in
variable {f : αˣ → 𝕜} in
#check MDiff f

end units

end differentiability

/-! Tests for the custom elaborators for `mfderiv` and `mfderivWithin` -/
section mfderiv

variable {EM' : Type*} [NormedAddCommGroup EM']
  [NormedSpace 𝕜 EM'] {H' : Type*} [TopologicalSpace H'] (I' : ModelWithCorners 𝕜 EM' H')
  {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']

variable {f : M → M'} {s : Set M} {m : M}

/--
info: mfderiv I I' f : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace I' (f x))
-/
#guard_msgs in
#check mfderiv% f

/--
info: mfderiv I I' f m : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I m) (TangentSpace I' (f m))
-/
#guard_msgs in
#check mfderiv% f m

/--
info: mfderivWithin I I' f s : (x : M) → ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace I' (f x))
-/
#guard_msgs in
#check mfderiv[s] f

/--
info: mfderivWithin I I' f s m : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I m) (TangentSpace I' (f m))
-/
#guard_msgs in
#check mfderiv[s] f m

variable {f : E → EM'} {s : Set E} {m : E}

/--
info: mfderiv (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 EM')
  f : (x : E) →
  ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) x)
    (TangentSpace (modelWithCornersSelf 𝕜 EM') (f x))
-/
#guard_msgs in
#check mfderiv% f

/--
info: mfderiv (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 EM') f
  m : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) m)
  (TangentSpace (modelWithCornersSelf 𝕜 EM') (f m))
-/
#guard_msgs in
#check mfderiv% f m

/--
info: mfderivWithin (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 EM') f
  s : (x : E) →
  ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) x)
    (TangentSpace (modelWithCornersSelf 𝕜 EM') (f x))
-/
#guard_msgs in
#check mfderiv[s] f

/--
info: mfderivWithin (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 EM') f s
  m : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) m)
  (TangentSpace (modelWithCornersSelf 𝕜 EM') (f m))
-/
#guard_msgs in
#check mfderiv[s] f m

variable {σ : Π x : M, V x} {σ' : (x : E) → Trivial E E' x} {s : E → E'}
variable (X : (m : M) → TangentSpace I m) [IsManifold I 1 M] {x : M}

/--
info: mfderiv I I.tangent (fun m ↦ TotalSpace.mk' E m (X m))
  x : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace I.tangent (TotalSpace.mk' E x (X x)))
-/
#guard_msgs in
#check mfderiv% (T% X) x

/--
info: mfderiv I (I.prod (modelWithCornersSelf 𝕜 F)) (fun x ↦ TotalSpace.mk' F x (σ x))
  x : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x)
  (TangentSpace (I.prod (modelWithCornersSelf 𝕜 F)) (TotalSpace.mk' F x (σ x)))
-/
#guard_msgs in
#check mfderiv% (T% σ) x

variable {t : Set E} {p : E}

/--
info: mfderivWithin (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E'))
  (fun x ↦ TotalSpace.mk' E' x (σ' x)) t
  p : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) p)
  (TangentSpace ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E')) (TotalSpace.mk' E' p (σ' p)))
-/
#guard_msgs in
#check mfderiv[t] (T% σ') p

/--
info: mfderivWithin (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E'))
  (fun x ↦ TotalSpace.mk' E' x (σ' x))
  t : (x : E) →
  ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) x)
    (TangentSpace ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E')) (TotalSpace.mk' E' x (σ' x)))
-/
#guard_msgs in
#check mfderiv[t] (T% σ')

section errors

-- Test an error message, about mismatched types.
variable {s' : Set M} {m' : M}

set_option pp.notation true in
/--
error: Application type mismatch: The argument
  m'
has type
  M
of sort `Type u_4` but is expected to have type
  E
of sort `Type u_2` in the application
  mfderiv% f m'
---
info: mfderiv% f sorry : TangentSpace 𝓘(𝕜, E) sorry →L[𝕜] TangentSpace 𝓘(𝕜, EM') (f sorry)
-/
#guard_msgs in
#check mfderiv% f m'

-- Error messages: argument s has mismatched type.
/--
error: The domain `E` of `f` is not definitionally equal to the carrier type of the set `s'` : `Set M`
-/
#guard_msgs in
#check mfderiv[s'] f

/--
error: The domain `E` of `f` is not definitionally equal to the carrier type of the set `s'` : `Set M`
-/
#guard_msgs in
#check mfderiv[s'] f m

end errors

section

/--
error: Term `X` is a dependent function, of type `(m : M) → TangentSpace I m`
Hint: you can use the `T%` elaborator to convert a dependent function to a non-dependent one
-/
#guard_msgs in
#check mfderiv% X x

/--
error: Term `σ` is a dependent function, of type `(x : M) → V x`
Hint: you can use the `T%` elaborator to convert a dependent function to a non-dependent one
-/
#guard_msgs in
#check mfderiv% σ x

variable {t : Set E} {p : E}

/--
error: Term `σ'` is a dependent function, of type `(x : E) → Trivial E E' x`
Hint: you can use the `T%` elaborator to convert a dependent function to a non-dependent one
-/
#guard_msgs in
#check mfderiv[t] σ' p

/--
error: Term `σ'` is a dependent function, of type `(x : E) → Trivial E E' x`
Hint: you can use the `T%` elaborator to convert a dependent function to a non-dependent one
-/
#guard_msgs in
#check mfderiv[t] σ'

end

end mfderiv

/-! Tests for the custom elaborators for `HasMFDeriv` and `HasMFDerivWithin` -/
section HasMFDeriv

variable {EM' : Type*} [NormedAddCommGroup EM']
  [NormedSpace 𝕜 EM'] {H' : Type*} [TopologicalSpace H'] (I' : ModelWithCorners 𝕜 EM' H')
  {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']

variable {f : M → M'} {s : Set M} {m : M} {f' : TangentSpace I m →L[𝕜] TangentSpace I' (f m)}

/-- info: HasMFDerivAt I I' f m f' : Prop -/
#guard_msgs in
#check HasMFDerivAt% f m f'

/-- info: HasMFDerivWithinAt I I' f s m f' : Prop -/
#guard_msgs in
#check HasMFDerivAt[s] f m f'

variable {f : E → EM'} {s : Set E} {m : E}
  -- #check mfderiv% f m tells us the type of f :-)
  {f' : TangentSpace 𝓘(𝕜, E) m →L[𝕜] TangentSpace 𝓘(𝕜, EM') (f m)}

/-- info: HasMFDerivAt (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 EM') f m f' : Prop -/
#guard_msgs in
#check HasMFDerivAt% f m f'

/--
info: HasMFDerivWithinAt (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 EM') f s m f' : Prop
-/
#guard_msgs in
#check HasMFDerivAt[s] f m f'

variable {σ : Π x : M, V x} {σ' : (x : E) → Trivial E E' x} {s : E → E'}
variable (X : (m : M) → TangentSpace I m) [IsManifold I 1 M] {x : M}

/--
info: mfderiv I I.tangent (fun m ↦ TotalSpace.mk' E m (X m))
  x : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x) (TangentSpace I.tangent (TotalSpace.mk' E x (X x)))
-/
#guard_msgs in
#check mfderiv% (T% X) x

variable {dXm : TangentSpace I x →L[𝕜] TangentSpace (I.prod 𝓘(𝕜, E)) (TotalSpace.mk' E x (X x))}

/-- info: HasMFDerivAt I I.tangent (fun m ↦ TotalSpace.mk' E m (X m)) x dXm : Prop -/
#guard_msgs in
#check HasMFDerivAt% (T% X) x dXm

/-- info: HasMFDerivWithinAt I I.tangent (fun m ↦ TotalSpace.mk' E m (X m)) t x dXm : Prop -/
#guard_msgs in
variable {t : Set M} in
#check HasMFDerivAt[t] (T% X) x dXm

/--
info: mfderiv I (I.prod (modelWithCornersSelf 𝕜 F)) (fun x ↦ TotalSpace.mk' F x (σ x))
  x : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace I x)
  (TangentSpace (I.prod (modelWithCornersSelf 𝕜 F)) (TotalSpace.mk' F x (σ x)))
-/
#guard_msgs in
#check mfderiv% (T% σ) x

variable {dσm : TangentSpace I x →L[𝕜] TangentSpace (I.prod 𝓘(𝕜, F)) (TotalSpace.mk' F x (σ x))}

/--
info: HasMFDerivAt I (I.prod (modelWithCornersSelf 𝕜 F)) (fun x ↦ TotalSpace.mk' F x (σ x)) x dσm : Prop
-/
#guard_msgs in
#check HasMFDerivAt% (T% σ) x dσm

/--
info: HasMFDerivWithinAt I (I.prod (modelWithCornersSelf 𝕜 F)) (fun x ↦ TotalSpace.mk' F x (σ x)) t x dσm : Prop
-/
#guard_msgs in
variable {t : Set M} in
#check HasMFDerivAt[t] (T% σ) x dσm

variable {t : Set E} {p : E}

/--
info: mfderivWithin (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E'))
  (fun x ↦ TotalSpace.mk' E' x (σ' x)) t
  p : ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) p)
  (TangentSpace ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E')) (TotalSpace.mk' E' p (σ' p)))
-/
#guard_msgs in
#check mfderiv[t] (T% σ') p

variable {dσ'p : TangentSpace 𝓘(𝕜, E) p →L[𝕜] TangentSpace (𝓘(𝕜, E).prod 𝓘(𝕜, E')) (TotalSpace.mk' E' p (σ' p))}

/--
info: HasMFDerivAt (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E'))
  (fun x ↦ TotalSpace.mk' E' x (σ' x)) p dσ'p : Prop
-/
#guard_msgs in
#check HasMFDerivAt% (T% σ') p dσ'p

/--
info: HasMFDerivWithinAt (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E'))
  (fun x ↦ TotalSpace.mk' E' x (σ' x)) t p dσ'p : Prop
-/
#guard_msgs in
#check HasMFDerivAt[t] (T% σ') p dσ'p

/--
info: mfderivWithin (modelWithCornersSelf 𝕜 E) ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E'))
  (fun x ↦ TotalSpace.mk' E' x (σ' x))
  t : (x : E) →
  ContinuousLinearMap (RingHom.id 𝕜) (TangentSpace (modelWithCornersSelf 𝕜 E) x)
    (TangentSpace ((modelWithCornersSelf 𝕜 E).prod (modelWithCornersSelf 𝕜 E')) (TotalSpace.mk' E' x (σ' x)))
-/
#guard_msgs in
#check mfderiv[t] (T% σ')

-- TODO: skipped the test about error messages (analogous to mfderiv(Within))

end HasMFDeriv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011fa22e31401e1412c8cfdccbb0b7d7bf1893d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
