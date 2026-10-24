# tendsto_densityProcess_atTop_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba52cc08-31bd-3971-4858-40ee3ea0cc99",
  "kind": "lemma",
  "lexical_name": "tendsto_densityProcess_atTop_of_antitone",
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
  "slug": "tendsto-densityprocess-attop-of-antitone--5e0544545d8b128a887ec49c",
  "source": {
    "blob": "2a49ff4eda35f74082be3ce99933db8f3ab08f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 371,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e0544545d8b128a887ec49c7661f5ef3d1f808be7225c978d205ef78b6dcfda",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba52cc08-31bd-3971-4858-40ee3ea0cc99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_densityProcess_atTop_of_antitone (κ : Kernel α (γ × β)) (ν : Kernel α γ)
    [IsFiniteKernel κ] (n : ℕ) (a : α) (x : γ)
    (seq : ℕ → Set β) (hseq : Antitone seq) (hseq_iInter : ⋂ i, seq i = ∅)
    (hseq_meas : ∀ m, MeasurableSet (seq m)) :
    Tendsto (fun m ↦ densityProcess κ ν n a x (seq m)) atTop (𝓝 0) := by
  rw [← densityProcess_empty κ ν n a x]
  exact tendsto_densityProcess_atTop_empty_of_antitone κ ν n a x seq hseq hseq_iInter hseq_meas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a49ff4eda35f74082be3ce99933db8f3ab08f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
