# samplePatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b5737dd23745be0d5d4114345cfcafa26e468830c76c0a9276012d579d7f16a",
  "kind": "def",
  "lexical_name": "samplePatch",
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
  "slug": "samplepatch--ba012cbfcfce39e8e2a29067",
  "source": {
    "blob": "4f9249ae44e52df5b08d04581f30ca6a951912ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba012cbfcfce39e8e2a29067804793e3970ae93d5ffa0a3b849c2a55b7b9a637",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b5737dd23745be0d5d4114345cfcafa26e468830c76c0a9276012d579d7f16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def samplePatch {c a : ℂ} {R S σ B D b δ : ℝ}
    (hR : 0 ≤ R) (hRS : R < S) (hσ : 0 < σ) (hB0 : 0 ≤ B) (hD0 : 0 ≤ D)
    (hleft : σ ≤ c.re - S) (hB : ‖c‖ + S ≤ B) (hD : ‖c - 1‖ + S ≤ D)
    (hδ : 0 ≤ δ) (hb : b ≤ ‖a‖) (he : ‖poleNormalizedZeta c - a‖ ≤ δ)
    (hm : δ + ((B + B * D / σ) / (S - R)) * R < b) :
    SampleVariationPatch poleNormalizedZeta (closedBall c R) :=
  SampleVariationPatch.ofDerivativeEnclosure c a b δ
    ((B + B * D / σ) / (S - R)) R hδ
    (div_nonneg (add_nonneg hB0 (div_nonneg (mul_nonneg hB0 hD0) hσ.le))
      (sub_pos.mpr hRS).le) hR
    (convex_closedBall c R) (mem_closedBall_self hR) (Subset.refl _)
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z hz => derivative_bound hRS hσ hleft hB hD hz)
    (fun z hz => by simpa only [mem_closedBall, dist_eq_norm] using hz) hb he hm

/-- A quantitative pole collar directly from the exact Mellin identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9249ae44e52df5b08d04581f30ca6a951912ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
