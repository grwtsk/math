# ContMDiffWithinAt.mfderivWithin_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2328779-b0b2-2325-1eb5-153ccbf3d6b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d9fcd55-ffbd-40dc-9057-8aeca9577fcd",
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
  "slug": "contmdiffwithinat-mfderivwithin-apply--b4675920098e2488b8e22c31",
  "source": {
    "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 214,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4675920098e2488b8e22c315c0b49bcc272643f7d4bb9701e88b08e8e5dfe87",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d9fcd55-ffbd-40dc-9057-8aeca9577fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–231.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559d4d74dc5cc61540c8e679e6929a4787b6f381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
