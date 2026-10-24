# ContMDiffWithinAt.mfderivWithin_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d73f97-a5b9-14f1-3c43-44bc47693e47",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.mfderivWithin_apply",
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
  "slug": "contmdiffwithinat-mfderivwithin-apply--1d1497c050529894d699d16e",
  "source": {
    "blob": "773c086e5994c6aa4393de28df759d61b2f3bd11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 222,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d1497c050529894d699d16e734914f6253d1eedc89f8b0a9a2cfacfe9f5dd23",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d73f97-a5b9-14f1-3c43-44bc47693e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffWithinAt.mfderivWithin_apply {x₀ : N'}
    {f : N → M → M'} {g : N → M} {g₁ : N' → N} {g₂ : N' → E} {t : Set N} {u : Set M} {v : Set N'}
    (hf : ContMDiffWithinAt (J.prod I) I' n (Function.uncurry f) (t ×ˢ u) (g₁ x₀, g (g₁ x₀)))
    (hg : ContMDiffWithinAt J I m g t (g₁ x₀)) (hg₁ : ContMDiffWithinAt J' J m g₁ v x₀)
    (hg₂ : ContMDiffWithinAt J' 𝓘(𝕜, E) m g₂ v x₀) (hmn : m + 1 ≤ n) (h'g₁ : MapsTo g₁ v t)
    (hg₁x₀ : g₁ x₀ ∈ t) (h'g : MapsTo g t u) (hu : UniqueMDiffOn I u) :
    ContMDiffWithinAt J' 𝓘(𝕜, E') m
      (fun x => (inTangentCoordinates I I' g (fun x => f x (g x))
        (fun x => mfderivWithin I I' (f x) u (g x)) (g₁ x₀) (g₁ x)) (g₂ x)) v x₀ :=
  ((hf.mfderivWithin hg hg₁x₀ h'g hmn hu).comp_of_eq hg₁ h'g₁ rfl).clm_apply hg₂

/-- The function that sends `x` to the `y`-derivative of `f (x, y)` at `g (x)` is `C^m` at `x₀`,
where the derivative is taken as a continuous linear map.
We have to assume that `f` is `C^n` at `(x₀, g(x₀))` for `n ≥ m + 1` and `g` is `C^m` at `x₀`.
We have to insert a coordinate change from `x₀` to `x` to make the derivative sensible.
This result is used to show that maps into the 1-jet bundle and cotangent bundle are `C^n`.
`ContMDiffAt.mfderiv_const` is a special case of this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantea196101b0682c2e99dc454965836b5eb4359d294c2b213742d9f2797632d727.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773c086e5994c6aa4393de28df759d61b2f3bd11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
