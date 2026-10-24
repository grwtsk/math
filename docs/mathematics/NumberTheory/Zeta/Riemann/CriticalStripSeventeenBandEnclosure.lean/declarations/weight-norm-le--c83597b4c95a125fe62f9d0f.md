# weight_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04ed43c3-537e-b143-53f2-e49356669720",
  "kind": "lemma",
  "lexical_name": "weight_norm_le",
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
  "slug": "weight-norm-le--c83597b4c95a125fe62f9d0f",
  "source": {
    "blob": "02dbef260f6bc08ed237b835c7522210e175ad4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c83597b4c95a125fe62f9d0f4c0d6a7535d7aca4210e5012303619fd5b86322b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04ed43c3-537e-b143-53f2-e49356669720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weight_norm_le {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) : ‖weight s‖ ≤ (22 : ℝ) := by
  have h := parameter_products hx hx1 ht ht1
  have hm := h.1
  have h0 := h.2.1
  have h4 := h.2.2.1
  have h6 := h.2.2.2.1
  have hs := mul_le_mul h.2.1 h.1 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 18)
  have hn : ‖weight s‖ ≤ 8+‖s-1‖/2+‖s‖*‖s-1‖/96+
      ‖CubicPrimitive.multiplier s‖/(720*8^3)+
      ‖QuarticPrimitive.multiplier s*(s+4)‖/(30240*8^5) := by
    unfold weight CutoffEightJet.weight
    calc
      _ ≤ ‖(8 : ℂ)-(s-1)/2+s*(s-1)/96-CubicPrimitive.multiplier s/(720*8^3)‖+
          ‖QuarticPrimitive.multiplier s*(s+4)/(30240*8^5)‖ := norm_add_le _ _
      _ ≤ ((‖(8 : ℂ)‖+‖(s-1)/2‖)+‖s*(s-1)/96‖)+
          ‖CubicPrimitive.multiplier s/(720*8^3)‖+
          ‖QuarticPrimitive.multiplier s*(s+4)/(30240*8^5)‖ := by
        gcongr
        exact (norm_sub_le _ _).trans (add_le_add_right
          ((norm_add_le _ _).trans (add_le_add_right (norm_sub_le _ _) _)) _)
      _ = _ := by norm_num [norm_div,norm_mul]
  have hb : (8 : ℝ)+18/2+18^2/96+18^4/(720*8^3)+18^6/(30240*8^5) ≤ 22 := by norm_num
  have hc : 8+‖s-1‖/2+‖s‖*‖s-1‖/96+
      ‖CubicPrimitive.multiplier s‖/(720*8^3)+
      ‖QuarticPrimitive.multiplier s*(s+4)‖/(30240*8^5) ≤
      8+18/2+18^2/96+18^4/(720*8^3)+18^6/(30240*8^5) := by
    gcongr
  exact hn.trans (hc.trans hb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02dbef260f6bc08ed237b835c7522210e175ad4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
