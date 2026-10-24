# eqOn_right_half_plane_of_superexponential_decay

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
      "line": 808,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a72e827-25b4-9fdd-606b-ae57f8fe33c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80e846b1-5f72-47a4-ed63-df6f98967f37",
  "kind": "theorem",
  "lexical_name": "eqOn_right_half_plane_of_superexponential_decay",
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
  "slug": "eqon-right-half-plane-of-superexponential-decay--1457555298708bf868ee3357",
  "source": {
    "blob": "1952e5764fb1dac746d8f0e239f06f23e5f14e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 808,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1457555298708bf868ee33577d260859ac103f029968791810a0a83bb9e90d88",
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

Occurrence: `result:80e846b1-5f72-47a4-ed63-df6f98967f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_right_half_plane_of_superexponential_decay {g : ℂ → E}
    (hfd : DiffContOnCl ℂ f {z | 0 < z.re}) (hgd : DiffContOnCl ℂ g {z | 0 < z.re})
    (hfexp : ∃ c < (2 : ℝ), ∃ B,
      f =O[cobounded ℂ ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * ‖z‖ ^ c))
    (hgexp : ∃ c < (2 : ℝ), ∃ B,
      g =O[cobounded ℂ ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * ‖z‖ ^ c))
    (hre : SuperpolynomialDecay atTop expR fun x => ‖f x - g x‖)
    (hfim : ∃ C, ∀ x : ℝ, ‖f (x * I)‖ ≤ C) (hgim : ∃ C, ∀ x : ℝ, ‖g (x * I)‖ ≤ C) :
    EqOn f g {z : ℂ | 0 ≤ z.re} := by
  suffices EqOn (f - g) 0 {z : ℂ | 0 ≤ z.re} by
    simpa only [EqOn, Pi.sub_apply, Pi.zero_apply, sub_eq_zero] using this
  refine eq_zero_on_right_half_plane_of_superexponential_decay (hfd.sub hgd) ?_ hre ?_
  · exact isBigO_sub_exp_rpow hfexp hgexp
  · rcases hfim with ⟨Cf, hCf⟩; rcases hgim with ⟨Cg, hCg⟩
    exact ⟨Cf + Cg, fun x => norm_sub_le_of_le (hCf x) (hCg x)⟩

end PhragmenLindelof
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant47abf128aa03033d4328d29b889b885ee572d2263e0375195d089a88d0cf1c46.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1952e5764fb1dac746d8f0e239f06f23e5f14e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
