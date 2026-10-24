# isSeparable_of_sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb1f6652-768e-73e7-5cd6-c444e6c1100d",
  "kind": "theorem",
  "lexical_name": "isSeparable_of_sigmaFinite",
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
  "slug": "isseparable-of-sigmafinite--bd37da86320aeda11a9fac79",
  "source": {
    "blob": "464eae8e02af1b9011000b4aff3d2fcad61a8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 356,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd37da86320aeda11a9fac793a0c662ffefc1ad65f4b26ff1fc42806e77d0b5a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb1f6652-768e-73e7-5cd6-c444e6c1100d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSeparable_of_sigmaFinite [CountablyGenerated X] [SigmaFinite μ] :
    IsSeparable μ where
  exists_countable_measureDense := by
    have h := countable_countableGeneratingSet (α := X)
    have hgen := generateFrom_countableGeneratingSet (α := X)
    let 𝒜 := (countableGeneratingSet X) ∪ {μ.toFiniteSpanningSetsIn.set n | n : ℕ}
    have count_𝒜 : 𝒜.Countable :=
      countable_union.2 ⟨h, countable_iff_exists_subset_range.2
        ⟨μ.toFiniteSpanningSetsIn.set, fun _ hx ↦ hx⟩⟩
    refine ⟨generateSetAlgebra 𝒜, countable_generateSetAlgebra count_𝒜,
      Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite isSetAlgebra_generateSetAlgebra
      { set := μ.toFiniteSpanningSetsIn.set
        set_mem := fun n ↦ self_subset_generateSetAlgebra (𝒜 := 𝒜) <| Or.inr ⟨n, rfl⟩
        finite := μ.toFiniteSpanningSetsIn.finite
        spanning := μ.toFiniteSpanningSetsIn.spanning }
      (le_antisymm ?_ (generateFrom_le (fun s hs ↦ ?_)))⟩
    · rw [← hgen]
      exact generateFrom_mono <| le_trans self_subset_generateSetAlgebra <|
        generateSetAlgebra_mono <| subset_union_left ..
    · induction hs with
      | base t t_mem =>
        rcases t_mem with t_mem | ⟨n, rfl⟩
        · exact hgen ▸ measurableSet_generateFrom t_mem
        · exact μ.toFiniteSpanningSetsIn.set_mem n
      | empty => exact MeasurableSet.empty
      | compl t _ t_mem => exact MeasurableSet.compl t_mem
      | union t u _ _ t_mem u_mem => exact MeasurableSet.union t_mem u_mem

/-- If a measurable space is countably generated and equipped with an s-finite measure, then the
measure is separable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc38aade129e88f21f51db17d78e008faf1cfcb9d0c593b9d1a8d93a29a612fff.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464eae8e02af1b9011000b4aff3d2fcad61a8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
