# toOuterMeasure_apply_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:556efa91-3ef5-4ff5-4e1f-b5092c5d3875",
  "kind": "theorem",
  "lexical_name": "toOuterMeasure_apply_eq_one_iff",
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
  "slug": "tooutermeasure-apply-eq-one-iff--83c48ff988c421e51c61a6ca",
  "source": {
    "blob": "77fdf61b2768d6f60544b113b558f182754633f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 205,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c48ff988c421e51c61a6ca137cc641cfef34c5a5fe45b47a9e147f81ae1929",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:556efa91-3ef5-4ff5-4e1f-b5092c5d3875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toOuterMeasure_apply_eq_one_iff : p.toOuterMeasure s = 1 ↔ p.support ⊆ s := by
  refine' (p.toOuterMeasure_apply s).symm ▸ ⟨fun h a hap => _, fun h => _⟩
  · refine' by_contra fun hs => ne_of_lt _ (h.trans p.tsum_coe.symm)
    have hs' : s.indicator p a = 0 := Set.indicator_apply_eq_zero.2 fun hs' => False.elim <| hs hs'
    have hsa : s.indicator p a < p a := hs'.symm ▸ (p.apply_pos_iff a).2 hap
    exact ENNReal.tsum_lt_tsum (p.tsum_coe_indicator_ne_top s)
      (fun x => Set.indicator_apply_le fun _ => le_rfl) hsa
  · suffices : ∀ (x) (_ : x ∉ s), p x = 0
    exact _root_.trans (tsum_congr
      fun a => (Set.indicator_apply s p a).trans (ite_eq_left_iff.2 <| symm ∘ this a)) p.tsum_coe
    exact fun a ha => (p.apply_eq_zero_iff a).2 <| Set.not_mem_subset h ha
#align pmf.to_outer_measure_apply_eq_one_iff Pmf.toOuterMeasure_apply_eq_one_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77fdf61b2768d6f60544b113b558f182754633f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
