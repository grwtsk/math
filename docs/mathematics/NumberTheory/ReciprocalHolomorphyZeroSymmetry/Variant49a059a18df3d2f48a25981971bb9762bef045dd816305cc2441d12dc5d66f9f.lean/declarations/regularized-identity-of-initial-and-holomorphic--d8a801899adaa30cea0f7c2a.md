# regularized_identity_of_initial_and_holomorphic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:989ddd22-8ec8-37ff-50d3-8f43204bc51c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6fdc7bb-49b1-0da7-6932-f02f9601305c",
  "kind": "theorem",
  "lexical_name": "regularized_identity_of_initial_and_holomorphic",
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
  "slug": "regularized-identity-of-initial-and-holomorphic--d8a801899adaa30cea0f7c2a",
  "source": {
    "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8a801899adaa30cea0f7c2a2a78dfbf6ddeca61e3c43585a818ff604c2dfb7d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6fdc7bb-49b1-0da7-6932-f02f9601305c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularized_identity_of_initial_and_holomorphic {L : ℂ → ℂ}
    (hhol : AnalyticOnNhd ℂ L PositiveHalfPlane)
    (hinit : InitialReciprocalIdentity L) : RegularizedIdentity L := by
  have hleft : AnalyticOnNhd ℂ
      (fun z => z * (z + 1 / 2) * regularizedZeta (z + 1 / 2) * L z)
      PositiveHalfPlane := by
    intro z hz
    have hs0 : z + 1 / 2 ≠ 0 := ne_zero_of_re_pos (by
      change 0 < z.re at hz
      norm_num
      linarith)
    have hid : AnalyticAt ℂ (fun w : ℂ => w) z := analyticAt_id
    have hadd : AnalyticAt ℂ (fun w : ℂ => w + (1 / 2 : ℂ)) z :=
      hid.add (analyticAt_const (v := (1 / 2 : ℂ)))
    have hreg : AnalyticAt ℂ (fun w : ℂ => regularizedZeta (w + (1 / 2 : ℂ))) z := by
      simpa only [Function.comp_def] using (regularizedZeta_analytic hs0).comp (f := fun w : ℂ => w + (1 / 2 : ℂ)) (x := z) hadd
    exact ((hid.mul hadd).mul hreg).mul (hhol z hz)
  have hright : AnalyticOnNhd ℂ (fun z : ℂ => z - 1 / 2) PositiveHalfPlane :=
    fun z _ => (analyticAt_id (z := z)).sub (analyticAt_const (v := (1 / 2 : ℂ)))
  apply hleft.eqOn_of_preconnected_of_eventuallyEq hright
    (convex_halfSpace_re_gt 0).isPreconnected
    (show (1 : ℂ) ∈ PositiveHalfPlane by norm_num [PositiveHalfPlane])
  have hV : {z : ℂ | 1 / 2 < z.re} ∈ 𝓝 (1 : ℂ) :=
    (isOpen_lt continuous_const continuous_re).mem_nhds (by norm_num)
  filter_upwards [hV] with z hz
  exact regularized_identity_initial hinit hz

/-- Exact domain exclusions from the literal Mathlib RH target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c190cd3df3c2d6e58624e68a5178eb0a69f1d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
