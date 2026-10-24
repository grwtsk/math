# eq_zero_on_quadrant_III

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a3d18f6-17ed-780b-f245-684e69ea5ccd",
  "kind": "theorem",
  "lexical_name": "eq_zero_on_quadrant_III",
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
  "slug": "eq-zero-on-quadrant-iii--e9ccc1443c5c519c3f1d953c",
  "source": {
    "blob": "7f32921e752cd12d6e087e8468d3fe443cf558bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 578,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ccc1443c5c519c3f1d953c40650211e5c37b3aa226382933f25a970eb63f3e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a3d18f6-17ed-780b-f245-684e69ea5ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_on_quadrant_III (hd : DiffContOnCl ℂ f (Iio 0 ×ℂ Iio 0))
    (hB : ∃ c < (2 : ℝ), ∃ B,
      f =O[comap Complex.abs atTop ⊓ 𝓟 (Iio 0 ×ℂ Iio 0)] fun z => expR (B * abs z ^ c))
    (hre : ∀ x : ℝ, x ≤ 0 → f x = 0) (him : ∀ x : ℝ, x ≤ 0 → f (x * I) = 0) :
    EqOn f 0 {z | z.re ≤ 0 ∧ z.im ≤ 0} := fun _z hz =>
  norm_le_zero_iff.1 <| quadrant_III hd hB (fun x hx => norm_le_zero_iff.2 <| hre x hx)
    (fun x hx => norm_le_zero_iff.2 <| him x hx) hz.1 hz.2
set_option linter.uppercaseLean3 false in
#align phragmen_lindelof.eq_zero_on_quadrant_III PhragmenLindelof.eq_zero_on_quadrant_III

/-- **Phragmen-Lindelöf principle** in the third quadrant. Let `f g : ℂ → E` be functions such that

* `f` and `g` are differentiable in the open third quadrant and are continuous on its closure;
* `‖f z‖` and `‖g z‖` are bounded from above by `A * exp(B * (abs z) ^ c)` on the open third
  quadrant for some `A`, `B`, and `c < 2`;
* `f` is equal to `g` on the boundary of the third quadrant.

Then `f` is equal to `g` on the closed third quadrant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f32921e752cd12d6e087e8468d3fe443cf558bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
