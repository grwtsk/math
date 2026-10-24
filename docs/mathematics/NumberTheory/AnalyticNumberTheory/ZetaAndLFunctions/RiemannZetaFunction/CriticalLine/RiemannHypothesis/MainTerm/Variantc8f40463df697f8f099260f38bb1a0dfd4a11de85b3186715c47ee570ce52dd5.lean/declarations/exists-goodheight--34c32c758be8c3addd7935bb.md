# exists_goodHeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e95afd-61e2-5336-80ca-dc054896cce6",
  "kind": "theorem",
  "lexical_name": "exists_goodHeight",
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
  "slug": "exists-goodheight--34c32c758be8c3addd7935bb",
  "source": {
    "blob": "e75c03435ac68cb9371c18dc60202bf324c599b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c32c758be8c3addd7935bb89667d9a642d4e1822f08f990088dfed3918f583",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e95afd-61e2-5336-80ca-dc054896cce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_goodHeight (a : ℝ) : ∃ T ∈ Set.Icc a (a + 1), GoodHeight T := by
  have hfin : ((fun ρ : ℂ => ρ.im) '' zerosIn a (a + 1)).Finite :=
    (zerosIn_finite a (a + 1)).image _
  have hinf : (Set.Ioo a (a + 1)).Infinite := Set.Ioo_infinite (by linarith)
  obtain ⟨T, hT⟩ := (hinf.sdiff hfin).nonempty
  obtain ⟨hT, hTnot⟩ := hT
  refine ⟨T, ⟨hT.1.le, hT.2.le⟩, ?_⟩
  intro ρ hρ him
  apply hTnot
  refine ⟨ρ, ⟨hρ, ?_, ?_⟩, him⟩
  · rw [him]; exact hT.1
  · rw [him]; exact hT.2.le

/-! (window arithmetic Ncount_add / Ncount_mono: Zeta23/Statement/SeamClosed.lean) -/

set_option maxHeartbeats 1000000 in
/-- **rvM_main, parametric in all constants**: the five constant sources —
Backlund CB TB, local count A₀, int_mu Cμ Tμ, μ ≪ log CM, continuity of μ — are explicit parameters, so numeric
inputs give a numeric C_N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75c03435ac68cb9371c18dc60202bf324c599b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
