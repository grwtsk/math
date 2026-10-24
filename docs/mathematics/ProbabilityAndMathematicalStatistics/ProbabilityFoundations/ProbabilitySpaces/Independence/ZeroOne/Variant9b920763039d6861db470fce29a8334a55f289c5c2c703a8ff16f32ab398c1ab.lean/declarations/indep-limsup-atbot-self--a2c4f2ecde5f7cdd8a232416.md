# indep_limsup_atBot_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ce3a12be460d0eecbe3037fc59d88cf78e2db4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b920763039d6861db470fce29a8334a55f289c5c2c703a8ff16f32ab398c1ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:744ee0e0-ac36-cd35-cb92-86be0d20a886",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3384009-d6bc-e03f-035b-afddc995cd5a",
  "kind": "theorem",
  "lexical_name": "indep_limsup_atBot_self",
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
  "slug": "indep-limsup-atbot-self--a2c4f2ecde5f7cdd8a232416",
  "source": {
    "blob": "1ce3a12be460d0eecbe3037fc59d88cf78e2db4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant9b920763039d6861db470fce29a8334a55f289c5c2c703a8ff16f32ab398c1ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2c4f2ecde5f7cdd8a2324165ac421fc3ff677e06e0c1d8610d65a46f0e57ee9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant9b920763039d6861db470fce29a8334a55f289c5c2c703a8ff16f32ab398c1ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3384009-d6bc-e03f-035b-afddc995cd5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indep_limsup_atBot_self (h_le : ∀ n, s n ≤ m0) (h_indep : iIndep s μ) :
    Indep (limsup s atBot) (limsup s atBot) μ := by
  let ns : ι → Set ι := Set.Ici
  have hnsp : ∀ i, BddBelow (ns i) := fun i => bddBelow_Ici
  refine' indep_limsup_self h_le h_indep _ _ hnsp _
  · simp only [mem_atBot_sets, ge_iff_le, Set.mem_compl_iff, BddBelow, lowerBounds, Set.Nonempty]
    rintro t ⟨a, ha⟩
    obtain ⟨b, hb⟩ : ∃ b, b < a := exists_lt a
    refine' ⟨b, fun c hc hct => _⟩
    suffices : ∀ i ∈ t, c < i; exact lt_irrefl c (this c hct)
    exact fun i hi => hc.trans_lt (hb.trans_le (ha hi))
  · exact directed_of_inf fun i j hij k hki => hij.trans hki
  · exact fun n => ⟨n, le_rfl⟩
#align probability_theory.indep_limsup_at_bot_self ProbabilityTheory.indep_limsup_atBot_self

/-- **Kolmogorov's 0-1 law** : any event in the tail σ-algebra of an independent sequence of
sub-σ-algebras has probability 0 or 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant9b920763039d6861db470fce29a8334a55f289c5c2c703a8ff16f32ab398c1ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant9b920763039d6861db470fce29a8334a55f289c5c2c703a8ff16f32ab398c1ab.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce3a12be460d0eecbe3037fc59d88cf78e2db4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
