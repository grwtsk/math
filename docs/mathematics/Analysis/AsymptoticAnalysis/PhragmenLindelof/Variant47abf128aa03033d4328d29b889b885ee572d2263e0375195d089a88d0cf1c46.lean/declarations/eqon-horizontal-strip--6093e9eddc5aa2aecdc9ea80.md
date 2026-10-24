# eqOn_horizontal_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1952e5764fb1dac746d8f0e239f06f23e5f14e50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70833c55-ea89-b45b-d965-bfecb50ba24d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:028eea91-c27b-1886-0476-6b8577498385",
  "kind": "theorem",
  "lexical_name": "eqOn_horizontal_strip",
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
  "slug": "eqon-horizontal-strip--6093e9eddc5aa2aecdc9ea80",
  "source": {
    "blob": "1952e5764fb1dac746d8f0e239f06f23e5f14e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 243,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6093e9eddc5aa2aecdc9ea80c35c8f0bb3b6f83402a2c32ec56c9adf1a88663f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:028eea91-c27b-1886-0476-6b8577498385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_horizontal_strip {g : ℂ → E} (hdf : DiffContOnCl ℂ f (im ⁻¹' Ioo a b))
    (hBf : ∃ c < π / (b - a), ∃ B, f =O[comap (_root_.abs ∘ re) atTop ⊓ 𝓟 (im ⁻¹' Ioo a b)]
      fun z ↦ expR (B * expR (c * |z.re|)))
    (hdg : DiffContOnCl ℂ g (im ⁻¹' Ioo a b))
    (hBg : ∃ c < π / (b - a), ∃ B, g =O[comap (_root_.abs ∘ re) atTop ⊓ 𝓟 (im ⁻¹' Ioo a b)]
      fun z ↦ expR (B * expR (c * |z.re|)))
    (ha : ∀ z : ℂ, z.im = a → f z = g z) (hb : ∀ z : ℂ, z.im = b → f z = g z) :
    EqOn f g (im ⁻¹' Icc a b) := fun _z hz =>
  sub_eq_zero.1 (eq_zero_on_horizontal_strip (hdf.sub hdg) (isBigO_sub_exp_exp hBf hBg)
    (fun w hw => sub_eq_zero.2 (ha w hw)) (fun w hw => sub_eq_zero.2 (hb w hw)) hz)

/-!
### Phragmen-Lindelöf principle in a vertical strip
-/

/-- **Phragmen-Lindelöf principle** in a strip `U = {z : ℂ | a < re z < b}`.
Let `f : ℂ → E` be a function such that

* `f` is differentiable on `U` and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * exp(c * |im z|))` on `U` for some `c < π / (b - a)`;
* `‖f z‖` is bounded from above by a constant `C` on the boundary of `U`.

Then `‖f z‖` is bounded by the same constant on the closed strip
`{z : ℂ | a ≤ re z ≤ b}`. Moreover, it suffices to verify the second assumption
only for sufficiently large values of `|im z|`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1952e5764fb1dac746d8f0e239f06f23e5f14e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
