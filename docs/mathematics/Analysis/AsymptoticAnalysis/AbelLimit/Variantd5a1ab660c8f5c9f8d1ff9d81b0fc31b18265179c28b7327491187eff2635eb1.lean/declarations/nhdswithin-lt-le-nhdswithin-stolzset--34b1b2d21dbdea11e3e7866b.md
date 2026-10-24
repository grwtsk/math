# nhdsWithin_lt_le_nhdsWithin_stolzSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7556abb9e2a6ab8875d8aeeca55fcdf8a1b817b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96085e08-5caa-286e-eefe-c20ca6faa236",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fafbfb4b-6bf7-b31c-28a2-e8de7a1e161e",
  "kind": "theorem",
  "lexical_name": "nhdsWithin_lt_le_nhdsWithin_stolzSet",
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
  "slug": "nhdswithin-lt-le-nhdswithin-stolzset--34b1b2d21dbdea11e3e7866b",
  "source": {
    "blob": "c7556abb9e2a6ab8875d8aeeca55fcdf8a1b817b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34b1b2d21dbdea11e3e7866b805289dbf3724ade307197eba1391f7c0dd1d378",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fafbfb4b-6bf7-b31c-28a2-e8de7a1e161e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsWithin_lt_le_nhdsWithin_stolzSet {M : ℝ} (hM : 1 < M) :
    (𝓝[<] 1).map ofReal ≤ 𝓝[stolzSet M] 1 := by
  rw [← tendsto_id']
  refine tendsto_map' <| tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within ofReal
    (tendsto_nhdsWithin_of_tendsto_nhds <| ofRealCLM.continuous.tendsto' 1 1 rfl) ?_
  simp only [eventually_iff, mem_nhdsWithin]
  refine ⟨Set.Ioo 0 2, isOpen_Ioo, by simp, fun x hx ↦ ?_⟩
  push _ ∈ _ at hx
  simp only [Set.mem_ofPred_eq, stolzSet, ← ofReal_one, ← ofReal_sub, norm_real,
    norm_of_nonneg hx.1.1.le, norm_of_nonneg <| (sub_pos.mpr hx.2).le]
  exact ⟨hx.2, lt_mul_left (sub_pos.mpr hx.2) hM⟩

-- An ugly technical lemma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variantd5a1ab660c8f5c9f8d1ff9d81b0fc31b18265179c28b7327491187eff2635eb1.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7556abb9e2a6ab8875d8aeeca55fcdf8a1b817b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
