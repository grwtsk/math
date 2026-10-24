# eq_zero_on_horizontal_strip

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
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dda629c3-bdc7-7e6b-6d12-38bb3bbb21cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d82c8ac3-6878-2bf7-b21e-0ca3ba9e015b",
  "kind": "theorem",
  "lexical_name": "eq_zero_on_horizontal_strip",
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
  "slug": "eq-zero-on-horizontal-strip--5a153443c5060e69791ad0f6",
  "source": {
    "blob": "1952e5764fb1dac746d8f0e239f06f23e5f14e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 225,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a153443c5060e69791ad0f66bb827a09b4bb4563270443b228175f807af6eda",
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

Occurrence: `result:d82c8ac3-6878-2bf7-b21e-0ca3ba9e015b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_on_horizontal_strip (hd : DiffContOnCl ℂ f (im ⁻¹' Ioo a b))
    (hB : ∃ c < π / (b - a), ∃ B, f =O[comap (_root_.abs ∘ re) atTop ⊓ 𝓟 (im ⁻¹' Ioo a b)]
      fun z ↦ expR (B * expR (c * |z.re|)))
    (ha : ∀ z : ℂ, z.im = a → f z = 0) (hb : ∀ z : ℂ, z.im = b → f z = 0) :
    EqOn f 0 (im ⁻¹' Icc a b) := fun _z hz =>
  norm_le_zero_iff.1 <| horizontal_strip hd hB (fun z hz => (ha z hz).symm ▸ norm_zero.le)
    (fun z hz => (hb z hz).symm ▸ norm_zero.le) hz.1 hz.2

/-- **Phragmen-Lindelöf principle** in a strip `U = {z : ℂ | a < im z < b}`.
Let `f g : ℂ → E` be functions such that

* `f` and `g` are differentiable on `U` and are continuous on its closure;
* `‖f z‖` and `‖g z‖` are bounded from above by `A * exp(B * exp(c * |re z|))` on `U` for some
  `c < π / (b - a)`;
* `f z = g z` on the boundary of `U`.

Then `f` is equal to `g` on the closed strip `{z : ℂ | a ≤ im z ≤ b}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1952e5764fb1dac746d8f0e239f06f23e5f14e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
