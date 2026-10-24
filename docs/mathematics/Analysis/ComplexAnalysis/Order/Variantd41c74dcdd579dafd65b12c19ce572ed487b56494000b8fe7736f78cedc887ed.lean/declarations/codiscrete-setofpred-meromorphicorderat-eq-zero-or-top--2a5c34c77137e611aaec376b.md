# codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 855,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9da2051c-da1b-d1b9-a3eb-aedfee1eb4c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7e6590e-2688-b733-60d7-845bfb6f5e77",
  "kind": "theorem",
  "lexical_name": "codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top",
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
  "slug": "codiscrete-setofpred-meromorphicorderat-eq-zero-or-top--2a5c34c77137e611aaec376b",
  "source": {
    "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 855,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a5c34c77137e611aaec376b2dd6905781c8949b785fa8fd534e07d658263293",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e6590e-2688-b733-60d7-845bfb6f5e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top (hf : MeromorphicOn f U) :
    {u : U | meromorphicOrderAt f u = 0 ∨ meromorphicOrderAt f u = ⊤} ∈ Filter.codiscrete U := by
  rw [mem_codiscrete_subtype_iff_mem_codiscreteWithin, mem_codiscreteWithin]
  intro x hx
  rw [Filter.disjoint_principal_right]
  rcases (hf x hx).eventually_eq_zero_or_eventually_ne_zero with h₁f | h₁f
  · filter_upwards [eventually_eventually_nhdsWithin.2 h₁f] with a h₁a
    suffices ∀ᶠ (z : 𝕜) in 𝓝[≠] a, f z = 0 by
      simp +contextual [meromorphicOrderAt_eq_top_iff, this]
    obtain rfl | hax := eq_or_ne a x
    · exact h₁a
    rw [eventually_nhdsWithin_iff, eventually_nhds_iff] at h₁a ⊢
    obtain ⟨t, h₁t, h₂t, h₃t⟩ := h₁a
    use t \ {x}, fun y h₁y _ ↦ h₁t y h₁y.1 h₁y.2
    exact ⟨h₂t.sdiff isClosed_singleton, Set.mem_sdiff_of_mem h₃t hax⟩
  · filter_upwards [hf.eventually_analyticAt_or_mem_compl hx, h₁f] with a h₁a h'₁a
    simp only [mem_compl_iff, Set.mem_sdiff, mem_image, mem_ofPred_eq, Subtype.exists,
      exists_and_right, exists_eq_right, not_exists, not_or, not_and, not_forall, Decidable.not_not]
    rcases h₁a with h' | h'
    · simp +contextual [h'.meromorphicOrderAt_eq, h'.analyticOrderAt_eq_zero.2, h'₁a]
    · exact fun ha ↦ (h' ha).elim

@[deprecated (since := "2026-07-09")]
alias codiscrete_setOf_meromorphicOrderAt_eq_zero_or_top :=
  codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top

/--
Variant of `codiscrete_setOfPred_meromorphicOrderAt_eq_zero_or_top`: The set where a meromorphic
function has zero or infinite order is codiscrete within its domain of meromorphicity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2a45051c74b71cf27654c2aa16bfb975ce76b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
