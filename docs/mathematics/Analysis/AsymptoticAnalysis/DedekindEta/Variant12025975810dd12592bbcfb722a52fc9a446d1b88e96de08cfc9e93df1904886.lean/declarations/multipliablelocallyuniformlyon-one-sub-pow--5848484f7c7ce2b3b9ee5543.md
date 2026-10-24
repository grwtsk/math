# multipliableLocallyUniformlyOn_one_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cb0e86d19eef7144be5340c46d69de4dccc8cd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12025975810dd12592bbcfb722a52fc9a446d1b88e96de08cfc9e93df1904886.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6767fa03-0772-cc23-ac49-26e44fdef3e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ff9134a-608d-8d52-0558-7bea2740697e",
  "kind": "lemma",
  "lexical_name": "multipliableLocallyUniformlyOn_one_sub_pow",
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
  "slug": "multipliablelocallyuniformlyon-one-sub-pow--5848484f7c7ce2b3b9ee5543",
  "source": {
    "blob": "4cb0e86d19eef7144be5340c46d69de4dccc8cd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variant12025975810dd12592bbcfb722a52fc9a446d1b88e96de08cfc9e93df1904886.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5848484f7c7ce2b3b9ee5543665d0c690971d260f64c81652cfc7e19397efc0a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DedekindEta/Variant12025975810dd12592bbcfb722a52fc9a446d1b88e96de08cfc9e93df1904886.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff9134a-608d-8d52-0558-7bea2740697e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multipliableLocallyUniformlyOn_one_sub_pow :
    MultipliableLocallyUniformlyOn (fun n q ↦ 1 - q ^ (n + 1)) (Metric.ball (0 : ℂ) 1) := by
  use fun q ↦ ∏' n, (1 - q ^ (n + 1))
  simp_rw [sub_eq_add_neg]
  apply hasProdLocallyUniformlyOn_of_forall_compact Metric.isOpen_ball
  intro K hK hcK
  rcases K.eq_empty_or_nonempty with hN | hN
  · simpa [hasProdUniformlyOn_iff_tendstoUniformlyOn, hN] using tendstoUniformlyOn_empty
  · obtain ⟨q₀, hq₀, _, HB⟩ := hcK.exists_sSup_image_eq_and_ge hN
      (show ContinuousOn (fun q : ℂ ↦ ‖q‖) K by fun_prop)
    refine ((summable_nat_add_iff 1).mpr (summable_geometric_of_lt_one (norm_nonneg _)
      (by simpa [Metric.mem_ball, dist_zero_right] using hK hq₀))).hasProdUniformlyOn_nat_one_add
      hcK (.of_forall fun n x hx ↦ ?_) (fun _ ↦ by fun_prop)
    simpa using pow_le_pow_left₀ (norm_nonneg _) (HB x hx) (n + 1)

/-- The infinite product `q ↦ ∏' n, (1 - q^(n+1))` is differentiable on the open unit disc. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DedekindEta/Variant12025975810dd12592bbcfb722a52fc9a446d1b88e96de08cfc9e93df1904886.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variant12025975810dd12592bbcfb722a52fc9a446d1b88e96de08cfc9e93df1904886.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb0e86d19eef7144be5340c46d69de4dccc8cd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
