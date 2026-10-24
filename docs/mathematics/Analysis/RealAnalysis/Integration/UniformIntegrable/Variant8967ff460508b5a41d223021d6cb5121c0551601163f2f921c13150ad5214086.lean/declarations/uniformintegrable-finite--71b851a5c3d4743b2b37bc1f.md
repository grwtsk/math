# uniformIntegrable_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 767,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e846b53-9d80-4e1a-5a5a-991d53a02304",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74cc9725-d1f7-9fd9-2312-f661c149f7f1",
  "kind": "theorem",
  "lexical_name": "uniformIntegrable_finite",
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
  "slug": "uniformintegrable-finite--71b851a5c3d4743b2b37bc1f",
  "source": {
    "blob": "1fad813cfaa2d00abe57bfca784cc2b341f1b04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 783,
    "line": 767,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b851a5c3d4743b2b37bc1fc2167ee4ece5b52350fa825027fa75205219dbcf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74cc9725-d1f7-9fd9-2312-f661c149f7f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 767–783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformIntegrable_finite [Finite ι] (hp_one : 1 ≤ p) (hp_top : p ≠ ∞)
    (hf : ∀ i, MemLp (f i) p μ) : UniformIntegrable f p μ := by
  cases nonempty_fintype ι
  refine ⟨unifIntegrable_finite hp_one hp_top hf, ?_⟩
  by_cases hι : Nonempty ι
  · set C := (Finset.univ.image fun i : ι => eLpNorm (f i) p μ).max'
      ⟨eLpNorm (f hι.some) p μ, Finset.mem_image.2 ⟨hι.some, Finset.mem_univ _, rfl⟩⟩
    refine ⟨C.toNNReal, fun i => ?_⟩
    unfold C
    grw [coe_toNNReal ?_, ← Finset.le_max' _ _ (Finset.mem_image.2 ⟨i, Finset.mem_univ _, rfl⟩)]
    refine ne_of_lt ((Finset.max'_lt_iff _ _).2 fun y hy => ?_)
    rw [Finset.mem_image] at hy
    obtain ⟨i, -, rfl⟩ := hy
    exact hf i
  · exact ⟨0, fun i => False.elim <| hι <| Nonempty.intro i⟩

/-- A single function is uniformly integrable in the probability sense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UniformIntegrable/Variant8967ff460508b5a41d223021d6cb5121c0551601163f2f921c13150ad5214086.lean#L767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fad813cfaa2d00abe57bfca784cc2b341f1b04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
