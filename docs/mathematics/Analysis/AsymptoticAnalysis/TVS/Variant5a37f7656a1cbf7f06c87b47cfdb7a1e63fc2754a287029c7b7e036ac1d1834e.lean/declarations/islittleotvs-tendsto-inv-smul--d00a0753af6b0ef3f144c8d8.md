# IsLittleOTVS.tendsto_inv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dbd1d7363a36193dbe45d1c3afe0f7f948faac5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 707,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e90aca4a-616e-3090-7dd7-de36ec20b367",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2f8418f-c340-4b32-d898-cf1b207ef375",
  "kind": "lemma",
  "lexical_name": "IsLittleOTVS.tendsto_inv_smul",
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
  "slug": "islittleotvs-tendsto-inv-smul--d00a0753af6b0ef3f144c8d8",
  "source": {
    "blob": "8dbd1d7363a36193dbe45d1c3afe0f7f948faac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 707,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d00a0753af6b0ef3f144c8d8df6ce619dded4040da160c6bfd426e18db74863f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2f8418f-c340-4b32-d898-cf1b207ef375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLittleOTVS.tendsto_inv_smul [ContinuousSMul 𝕜 E] {f : α → 𝕜} {g : α → E}
    (h : g =o[𝕜; l] f) : Tendsto (fun x ↦ (f x)⁻¹ • g x) l (𝓝 0) := by
  rw [← isLittleOTVS_one (𝕜 := 𝕜), isLittleOTVS_iff]
  intro U hU
  rcases (h.smul_left f⁻¹).1 U hU with ⟨V, hV₀, hV⟩
  refine ⟨V, hV₀, fun ε hε ↦ (hV ε hε).mono fun x hx ↦ hx.trans ?_⟩
  by_cases hx₀ : f x = 0 <;> simp [hx₀, egauge_zero_right _ (Filter.nonempty_of_mem hV₀)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dbd1d7363a36193dbe45d1c3afe0f7f948faac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
