# indep_limsup_atTop_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00724660-66fd-53e6-946a-d1e74bf8dcec",
  "kind": "theorem",
  "lexical_name": "indep_limsup_atTop_self",
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
  "slug": "indep-limsup-attop-self--72e652447393df8c123bccf3",
  "source": {
    "blob": "1fccb814b02665d91f1bb37712e40a77e0219311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 139,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Varianta62c49a75a5d34dbcdda0861cc426e12022ce2f400a6ec4a4aa31b5365368f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72e652447393df8c123bccf3980fdcf5b491eb391bb7b69a1383253cf21e6824",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Varianta62c49a75a5d34dbcdda0861cc426e12022ce2f400a6ec4a4aa31b5365368f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00724660-66fd-53e6-946a-d1e74bf8dcec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indep_limsup_atTop_self (h_le : ∀ n, s n ≤ m0) (h_indep : iIndep s μ) :
    Indep (limsup s atTop) (limsup s atTop) μ := by
  let ns : ι → Set ι := Set.Iic
  have hnsp : ∀ i, BddAbove (ns i) := fun i => bddAbove_Iic
  refine' indep_limsup_self h_le h_indep _ _ hnsp _
  · simp only [mem_atTop_sets, ge_iff_le, Set.mem_compl_iff, BddAbove, upperBounds, Set.Nonempty]
    rintro t ⟨a, ha⟩
    obtain ⟨b, hb⟩ : ∃ b, a < b := exists_gt a
    refine' ⟨b, fun c hc hct => _⟩
    suffices : ∀ i ∈ t, i < c; exact lt_irrefl c (this c hct)
    exact fun i hi => (ha hi).trans_lt (hb.trans_le hc)
  · exact Monotone.directed_le fun i j hij k hki => le_trans hki hij
  · exact fun n => ⟨n, le_rfl⟩
#align probability_theory.indep_limsup_at_top_self ProbabilityTheory.indep_limsup_atTop_self

/-- **Kolmogorov's 0-1 law** : any event in the tail σ-algebra of an independent sequence of
sub-σ-algebras has probability 0 or 1.
The tail σ-algebra `limsup s atTop` is the same as `⋂ n, ⋃ i ≥ n, s i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Varianta62c49a75a5d34dbcdda0861cc426e12022ce2f400a6ec4a4aa31b5365368f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Varianta62c49a75a5d34dbcdda0861cc426e12022ce2f400a6ec4a4aa31b5365368f39.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fccb814b02665d91f1bb37712e40a77e0219311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
