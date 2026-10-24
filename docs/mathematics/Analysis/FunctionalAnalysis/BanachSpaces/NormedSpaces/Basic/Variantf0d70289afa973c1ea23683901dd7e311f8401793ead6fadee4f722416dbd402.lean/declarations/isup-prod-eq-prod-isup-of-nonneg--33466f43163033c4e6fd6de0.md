# iSup_prod_eq_prod_iSup_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed5fcd5ae941a98b39c63c3cce9b3ed2575709f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 987,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6551920a-71bd-62d9-2f6c-6ea329b44950",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdbde958-4eb7-2647-03ac-db31cb60bc70",
  "kind": "lemma",
  "lexical_name": "iSup_prod_eq_prod_iSup_of_nonneg",
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
  "slug": "isup-prod-eq-prod-isup-of-nonneg--33466f43163033c4e6fd6de0",
  "source": {
    "blob": "ed5fcd5ae941a98b39c63c3cce9b3ed2575709f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 987,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33466f43163033c4e6fd6de086d55c2b7676cc15fe122f552e2fc8430818a1c0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdbde958-4eb7-2647-03ac-db31cb60bc70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 987–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSup_prod_eq_prod_iSup_of_nonneg {f : (a : α) → ι a → ℝ} (hf₀ : ∀ a i, 0 ≤ f a i) :
    ⨆ (i : (a : α) → ι a), ∏ a, f a (i a) = ∏ a, ⨆ i, f a i := by
  rcases isEmpty_or_nonempty ((a : α) → ι a) with h | h
  · rw [iSup_of_isEmpty, eq_comm, Finset.prod_eq_zero_iff]
    obtain ⟨a, ha⟩ := isEmpty_pi.mp h
    exact ⟨a, by simp⟩
  refine le_antisymm ?_ ?_
  · exact ciSup_le fun i ↦ Finset.prod_le_prod₀ (by simp [hf₀])
      fun a ha ↦ Finite.le_ciSup_of_le _ le_rfl
  · rw [Classical.nonempty_pi] at h
    have H a : ∃ i : ι a, f a i = ⨆ i, f a i := exists_eq_ciSup_of_finite
    choose i hi using H
    simp only [← hi]
    exact Finite.le_ciSup_of_le i le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean#L987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5fcd5ae941a98b39c63c3cce9b3ed2575709f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
