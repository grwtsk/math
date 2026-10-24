# sampleVariationPatch_of_geometric_prefixEnclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65deaff1dc78cff55340e388d05440f48ebf9a57e9aca0f41d769e1c4c12fbfe",
  "kind": "def",
  "lexical_name": "sampleVariationPatch_of_geometric_prefixEnclosure",
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
  "slug": "samplevariationpatch-of-geometric-prefixenclosure--df0487e98b2d72c4f416c655",
  "source": {
    "blob": "4e2a4db879cf9c5d47ee717f98d4716e346ff3d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df0487e98b2d72c4f416c6552d8b8b913af2362cce1ac4dad4ed8a91552084c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65deaff1dc78cff55340e388d05440f48ebf9a57e9aca0f41d769e1c4c12fbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sampleVariationPatch_of_geometric_prefixEnclosure {U V : Set ℂ}
    (c : ℂ) (a B T b r : ℝ) (ha : 0 < a) (hB : 0 ≤ B) (hT : 1 ≤ T)
    (enc : MellinPrefixEnclosure T c) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : c ∈ V) (hUV : U ⊆ V)
    (hregion : ∀ z ∈ V, 2 * a ≤ z.re ∧ ‖z‖ ≤ B)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hsample : b ≤ ‖poleMellinEvaluation c enc.value‖)
    (hmargin : (‖c‖ * ‖c - 1‖) * (enc.error + mellinTailMajorant (2 * a) T) +
      derivativeMajorant a B * r < b) : SampleVariationPatch poleNormalizedZeta U := by
  apply sampleVariationPatch_of_prefixEnclosure c (2 * a) T b (derivativeMajorant a B) r
    (by positivity) (hregion c hc).1 hT enc _ hr hconv hc hUV _ hradius hsample hmargin
  · unfold derivativeMajorant
    positivity
  · intro z hz
    exact poleNormalized_deriv_norm_le ha (hregion z hz).1 (hregion z hz).2

/-- The exact empty prefix at T=1 supplies the model s. No numerical zeta value or
unknown finite quadrature is needed for this elementary region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
