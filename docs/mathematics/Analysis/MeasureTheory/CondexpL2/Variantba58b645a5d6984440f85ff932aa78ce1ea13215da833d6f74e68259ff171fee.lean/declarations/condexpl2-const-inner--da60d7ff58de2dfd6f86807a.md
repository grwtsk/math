# condExpL2_const_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73301cd7a26574e3650899d58234352f0cedea71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5215cb9e-3bae-4266-ee4e-238f6e99936c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35dabdc8-5c87-6c98-9395-e81537901b2e",
  "kind": "theorem",
  "lexical_name": "condExpL2_const_inner",
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
  "slug": "condexpl2-const-inner--da60d7ff58de2dfd6f86807a",
  "source": {
    "blob": "73301cd7a26574e3650899d58234352f0cedea71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 209,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da60d7ff58de2dfd6f86807ad8cbe5fa7dfa6a4d8f4f2dcf31343f6eee969d4d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35dabdc8-5c87-6c98-9395-e81537901b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExpL2_const_inner (hm : m ≤ m0) (f : Lp E 2 μ) (c : E) :
    condExpL2 𝕜 𝕜 hm (((Lp.memLp f).const_inner c).toLp fun a => ⟪c, f a⟫) =ᵐ[μ]
    fun a => ⟪c, (condExpL2 E 𝕜 hm f : α → E) a⟫ := by
  have h_mem_Lp : MemLp (fun a => ⟪c, (condExpL2 E 𝕜 hm f : α → E) a⟫) 2 μ := by
    refine MemLp.const_inner _ ?_; exact Lp.memLp _
  have h_eq : h_mem_Lp.toLp _ =ᵐ[μ] fun a => ⟪c, (condExpL2 E 𝕜 hm f : α → E) a⟫ :=
    h_mem_Lp.coeFn_toLp
  refine EventuallyEq.trans ?_ h_eq
  refine Lp.ae_eq_of_forall_setIntegral_eq' 𝕜 hm _ _ two_ne_zero ENNReal.coe_ne_top
    (fun s _ hμs => integrableOn_condExpL2_of_measure_ne_top hm hμs.ne _) ?_ ?_ ?_ ?_
  · intro s _ hμs
    rw [IntegrableOn, integrable_congr (ae_restrict_of_ae h_eq)]
    exact (integrableOn_condExpL2_of_measure_ne_top hm hμs.ne _).const_inner _
  · intro s hs hμs
    rw [integral_condExpL2_eq_of_fin_meas_real _ hs hμs.ne,
      integral_congr_ae (ae_restrict_of_ae h_eq), ←
      L2.inner_indicatorConstLp_eq_setIntegral_inner 𝕜 (↑(condExpL2 E 𝕜 hm f)) (hm s hs) c hμs.ne,
      ← inner_condExpL2_left_eq_right, condExpL2_indicator_of_measurable _ hs,
      L2.inner_indicatorConstLp_eq_setIntegral_inner 𝕜 f (hm s hs) c hμs.ne,
      setIntegral_congr_ae (hm s hs)
        ((MemLp.coeFn_toLp ((Lp.memLp f).const_inner c)).mono fun x hx _ => hx)]
  · exact lpMeas.aestronglyMeasurable _
  · refine AEStronglyMeasurable.congr ?_ h_eq.symm
    exact (lpMeas.aestronglyMeasurable _).const_inner

/-- `condExpL2` verifies the equality of integrals defining the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantba58b645a5d6984440f85ff932aa78ce1ea13215da833d6f74e68259ff171fee.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73301cd7a26574e3650899d58234352f0cedea71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
