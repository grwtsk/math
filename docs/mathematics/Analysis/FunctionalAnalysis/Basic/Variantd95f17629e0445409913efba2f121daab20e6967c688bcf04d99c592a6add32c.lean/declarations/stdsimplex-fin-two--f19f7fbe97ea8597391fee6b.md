# stdSimplex_fin_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d138dd5-7790-6f1b-0528-d4dd0afb9135",
  "kind": "lemma",
  "lexical_name": "stdSimplex_fin_two",
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
  "slug": "stdsimplex-fin-two--f19f7fbe97ea8597391fee6b",
  "source": {
    "blob": "dad72a7e634f0ec546159aeb36424c7c4029816c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 662,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f19f7fbe97ea8597391fee6bdb53460128672740c2df8de535d25e60c8457cea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d138dd5-7790-6f1b-0528-d4dd0afb9135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stdSimplex_fin_two :
    stdSimplex 𝕜 (Fin 2) = ([Pi.single 0 1 -[𝕜] Pi.single 1 1] : Set (Fin 2 → 𝕜)) := by
  refine Subset.antisymm ?_ (segment_single_subset_stdSimplex 𝕜 (0 : Fin 2) 1)
  rintro f ⟨hf₀, hf₁⟩
  rw [Fin.sum_univ_two] at hf₁
  refine ⟨f 0, f 1, hf₀ 0, hf₀ 1, hf₁, funext <| Fin.forall_fin_two.2 ?_⟩
  simp

end OrderedSemiring

section OrderedRing

variable (𝕜) [Ring 𝕜] [PartialOrder 𝕜] [IsOrderedRing 𝕜]

/-- The standard one-dimensional simplex in `Fin 2 → 𝕜` is equivalent to the unit interval. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad72a7e634f0ec546159aeb36424c7c4029816c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
