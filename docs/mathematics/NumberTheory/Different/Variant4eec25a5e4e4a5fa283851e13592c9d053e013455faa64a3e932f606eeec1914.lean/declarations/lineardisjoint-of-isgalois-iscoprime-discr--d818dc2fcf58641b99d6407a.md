# linearDisjoint_of_isGalois_isCoprime_discr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bac7137f46cd5aea5f18c3e1f152963688b336c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8587944-bd40-6536-b3be-5608f82a6bd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f82df2f-493e-aca9-a9ca-8e4de3b22fd7",
  "kind": "theorem",
  "lexical_name": "linearDisjoint_of_isGalois_isCoprime_discr",
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
  "slug": "lineardisjoint-of-isgalois-iscoprime-discr--d818dc2fcf58641b99d6407a",
  "source": {
    "blob": "4bac7137f46cd5aea5f18c3e1f152963688b336c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d818dc2fcf58641b99d6407ae5c71bb6213a0e94593a43a62d75e79baf988c76",
  "verification": {
    "reference": "docs/verification/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f82df2f-493e-aca9-a9ca-8e4de3b22fd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearDisjoint_of_isGalois_isCoprime_discr (K₁ K₂ : IntermediateField ℚ L) [IsGalois ℚ K₁]
    (h : IsCoprime (discr K₁) (discr K₂)) :
    K₁.LinearDisjoint K₂ := by
  apply IntermediateField.LinearDisjoint.of_inf_eq_bot
  suffices IsUnit (discr ↥(K₁ ⊓ K₂)) by
    contrapose! this
    have : 1 < Module.finrank ℚ ↥(K₁ ⊓ K₂) := by
      refine Nat.one_lt_iff_ne_zero_and_ne_one.mpr ⟨Module.finrank_pos.ne', ?_⟩
      rwa [ne_eq, ← IntermediateField.finrank_eq_one_iff] at this
    exact Int.isUnit_iff_abs_eq.not.mpr <| by linarith [abs_discr_gt_two this]
  exact h.isUnit_of_dvd' (NumberField.discr_dvd_discr _ _) (NumberField.discr_dvd_discr _ _)

/--
Let `K₁` and `K₂` be two number fields and assume that their different ideals (over ℤ) are coprime.
Then, the absolute value of the discriminant of their compositum is equal to
`|discr K₁| ^ [K₂ : ℚ] * |discr K₂| ^ [K₁ : ℚ]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Different/Variant4eec25a5e4e4a5fa283851e13592c9d053e013455faa64a3e932f606eeec1914.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bac7137f46cd5aea5f18c3e1f152963688b336c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
