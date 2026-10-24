# eq_zero_on_vertical_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffef7f33-bd75-917f-b7fe-03e4d91213c5",
  "kind": "theorem",
  "lexical_name": "eq_zero_on_vertical_strip",
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
  "slug": "eq-zero-on-vertical-strip--938a309a1b6a21ca5898569a",
  "source": {
    "blob": "7f32921e752cd12d6e087e8468d3fe443cf558bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 323,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:938a309a1b6a21ca5898569aad758e918cb9a6964b848962bf929400690e9647",
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

Occurrence: `result:ffef7f33-bd75-917f-b7fe-03e4d91213c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_on_vertical_strip (hd : DiffContOnCl ℂ f (re ⁻¹' Ioo a b))
    (hB : ∃ c < π / (b - a), ∃ B,
      f =O[comap (Abs.abs ∘ im) atTop ⊓ 𝓟 (re ⁻¹' Ioo a b)] fun z ↦ expR (B * expR (c * |z.im|)))
    (ha : ∀ z : ℂ, re z = a → f z = 0) (hb : ∀ z : ℂ, re z = b → f z = 0) :
    EqOn f 0 (re ⁻¹' Icc a b) := fun _z hz =>
  norm_le_zero_iff.1 <| vertical_strip hd hB (fun z hz => (ha z hz).symm ▸ norm_zero.le)
    (fun z hz => (hb z hz).symm ▸ norm_zero.le) hz.1 hz.2
#align phragmen_lindelof.eq_zero_on_vertical_strip PhragmenLindelof.eq_zero_on_vertical_strip

/-- **Phragmen-Lindelöf principle** in a strip `U = {z : ℂ | a < re z < b}`.
Let `f g : ℂ → E` be functions such that

* `f` and `g` are differentiable on `U` and are continuous on its closure;
* `‖f z‖` and `‖g z‖` are bounded from above by `A * exp(B * exp(c * |im z|))` on `U` for some
  `c < π / (b - a)`;
* `f z = g z` on the boundary of `U`.

Then `f` is equal to `g` on the closed strip `{z : ℂ | a ≤ re z ≤ b}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantf0b84b3e021a06cc5dea7cd1c3c1afaf3ab1bbdcf597c8a3c2e124a9830076f9.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f32921e752cd12d6e087e8468d3fe443cf558bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
