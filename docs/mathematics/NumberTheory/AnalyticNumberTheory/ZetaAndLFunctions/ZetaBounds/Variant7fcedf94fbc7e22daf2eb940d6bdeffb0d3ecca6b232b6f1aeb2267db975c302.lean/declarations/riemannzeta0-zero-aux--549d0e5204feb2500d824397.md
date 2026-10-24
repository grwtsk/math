# riemannZeta0_zero_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b07356663a07cf33aa9714bf40ab2b64eac6997",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7991418-19dd-2812-34bf-697f7b150a18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4aa123a-3222-6459-fae5-bccc0df77577",
  "kind": "lemma",
  "lexical_name": "riemannZeta0_zero_aux",
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
  "slug": "riemannzeta0-zero-aux--549d0e5204feb2500d824397",
  "source": {
    "blob": "2b07356663a07cf33aa9714bf40ab2b64eac6997",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1289,
    "line": 1276,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549d0e5204feb2500d8243974fdd1130811390819322592cb05191fb5cf2169e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4aa123a-3222-6459-fae5-bccc0df77577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1276–1289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riemannZeta0_zero_aux (N : ℕ) (Npos : 0 < N) :
    ∑ x ∈ Finset.Ico 0 N, ((x : ℝ))⁻¹ = ∑ x ∈ Finset.Ico 1 N, ((x : ℝ))⁻¹ := by
  have : Finset.Ico 1 N ⊆ Finset.Ico 0 N := by
    intro x hx
    simp only [Finset.mem_Ico, Nat.Ico_zero_eq_range, Finset.mem_range] at hx ⊢
    exact hx.2
  rw [← Finset.sum_sdiff (s₁ := Finset.Ico 1 N) (s₂ := Finset.Ico 0 N) this]
  have : Finset.Ico 0 N \ Finset.Ico 1 N = Finset.range 1 := by
    ext a
    simp only [Nat.Ico_zero_eq_range, Finset.mem_sdiff, Finset.mem_range, Finset.mem_Ico, not_and,
      not_lt, Finset.range_one, Finset.mem_singleton]
    exact ⟨fun _ ↦ by omega, fun ha ↦ ⟨by simp [ha, Npos], by omega⟩⟩
  rw [this]; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant7fcedf94fbc7e22daf2eb940d6bdeffb0d3ecca6b232b6f1aeb2267db975c302.lean#L1276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b07356663a07cf33aa9714bf40ab2b64eac6997` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
