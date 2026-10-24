# eqOn_vertical_strip

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
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:824a91e1-fc60-6bc0-e853-067e9835e38a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f91fc59f-c8c1-6404-e4ba-cdade143df69",
  "kind": "theorem",
  "lexical_name": "eqOn_vertical_strip",
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
  "slug": "eqon-vertical-strip--28995be61c7aa04ee65f97c1",
  "source": {
    "blob": "1952e5764fb1dac746d8f0e239f06f23e5f14e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 315,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28995be61c7aa04ee65f97c1cd595aab8844b4f45e2b2068528fa512d8bac39c",
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

Occurrence: `result:f91fc59f-c8c1-6404-e4ba-cdade143df69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_vertical_strip {g : ℂ → E} (hdf : DiffContOnCl ℂ f (re ⁻¹' Ioo a b))
    (hBf : ∃ c < π / (b - a), ∃ B, f =O[comap (_root_.abs ∘ im) atTop ⊓ 𝓟 (re ⁻¹' Ioo a b)]
      fun z ↦ expR (B * expR (c * |z.im|)))
    (hdg : DiffContOnCl ℂ g (re ⁻¹' Ioo a b))
    (hBg : ∃ c < π / (b - a), ∃ B, g =O[comap (_root_.abs ∘ im) atTop ⊓ 𝓟 (re ⁻¹' Ioo a b)]
      fun z ↦ expR (B * expR (c * |z.im|)))
    (ha : ∀ z : ℂ, re z = a → f z = g z) (hb : ∀ z : ℂ, re z = b → f z = g z) :
    EqOn f g (re ⁻¹' Icc a b) := fun _z hz =>
  sub_eq_zero.1 (eq_zero_on_vertical_strip (hdf.sub hdg) (isBigO_sub_exp_exp hBf hBg)
    (fun w hw => sub_eq_zero.2 (ha w hw)) (fun w hw => sub_eq_zero.2 (hb w hw)) hz)

/-!
### Phragmen-Lindelöf principle in coordinate quadrants
-/

/-- **Phragmen-Lindelöf principle** in the first quadrant. Let `f : ℂ → E` be a function such that

* `f` is differentiable in the open first quadrant and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * ‖z‖ ^ c)` on the open first quadrant
  for some `c < 2`;
* `‖f z‖` is bounded from above by a constant `C` on the boundary of the first quadrant.

Then `‖f z‖` is bounded from above by the same constant on the closed first quadrant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1952e5764fb1dac746d8f0e239f06f23e5f14e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
