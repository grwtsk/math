# tendsto_densityProcess_fst_atTop_ae_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 721,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db35bbd4-ef28-210e-3be9-163a5ea1a852",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:971201c0-bdf7-8b3b-90f0-39af55a77326",
  "kind": "lemma",
  "lexical_name": "tendsto_densityProcess_fst_atTop_ae_of_monotone",
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
  "slug": "tendsto-densityprocess-fst-attop-ae-of-monotone--b39dbc8e90a88908eecf7072",
  "source": {
    "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 721,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b39dbc8e90a88908eecf707238121aa55e5fc9bca92549855b780a9d39ea6ecb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:971201c0-bdf7-8b3b-90f0-39af55a77326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_densityProcess_fst_atTop_ae_of_monotone (κ : Kernel α (γ × β)) [IsFiniteKernel κ]
    (n : ℕ) (a : α) (seq : ℕ → Set β) (hseq : Monotone seq) (hseq_iUnion : ⋃ i, seq i = univ) :
    ∀ᵐ x ∂(fst κ a), Tendsto (fun m ↦ densityProcess κ (fst κ) n a x (seq m)) atTop (𝓝 1) := by
  filter_upwards [densityProcess_fst_univ_ae κ n a] with x hx
  rw [← hx]
  exact tendsto_densityProcess_fst_atTop_univ_of_monotone κ n a x seq hseq hseq_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa481c381282b67d7a92dad1fe0e7877af5cd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
