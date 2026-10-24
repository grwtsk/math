# Lp_add_le_hasSum_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c6f0dc4-882c-e3e4-c810-83efc04d1d0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1d63964-ffe0-721f-511f-2c70a2ba6683",
  "kind": "theorem",
  "lexical_name": "Lp_add_le_hasSum_of_nonneg",
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
  "slug": "lp-add-le-hassum-of-nonneg--fe80631c0db94bdd6dbfb015",
  "source": {
    "blob": "2bb832774232101bddaad4985ac7ca896646bb97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 697,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe80631c0db94bdd6dbfb015c1736a2ce72a496e753a681be2e4b2fd0258ec99",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d63964-ffe0-721f-511f-2c70a2ba6683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lp_add_le_hasSum_of_nonneg (hp : 1 ≤ p) (hf : ∀ i, 0 ≤ f i) (hg : ∀ i, 0 ≤ g i) {A B : ℝ}
    (hA : 0 ≤ A) (hB : 0 ≤ B) (hfA : HasSum (fun i => f i ^ p) (A ^ p))
    (hgB : HasSum (fun i => g i ^ p) (B ^ p)) :
    ∃ C, 0 ≤ C ∧ C ≤ A + B ∧ HasSum (fun i => (f i + g i) ^ p) (C ^ p) := by
  lift f to ι → ℝ≥0 using hf
  lift g to ι → ℝ≥0 using hg
  lift A to ℝ≥0 using hA
  lift B to ℝ≥0 using hB
  norm_cast at hfA hgB
  obtain ⟨C, hC₁, hC₂⟩ := NNReal.Lp_add_le_hasSum hp hfA hgB
  use C
  norm_cast
  exact ⟨zero_le _, hC₁, hC₂⟩
#align real.Lp_add_le_has_sum_of_nonneg Real.Lp_add_le_hasSum_of_nonneg

end Real

namespace ENNReal

variable (f g : ι → ℝ≥0∞) {p q : ℝ}

/-- Hölder inequality: the scalar product of two functions is bounded by the product of their
`L^p` and `L^q` norms when `p` and `q` are conjugate exponents. Version for sums over finite sets,
with `ℝ≥0∞`-valued functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Varianta6cdbf7e09fe72f24d292249c195f98c29aaef0517f06ba8b8059657d47e1e50.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb832774232101bddaad4985ac7ca896646bb97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
