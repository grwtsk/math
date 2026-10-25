# isPWO_iUnion_support_prod_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81441c549dbb3bde76290ddba8384ffba7094cac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c116274-755f-a2bb-aeb5-ebe909938eba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f47b07f-59a1-8d5b-b086-3c2a2ba56ac0",
  "kind": "theorem",
  "lexical_name": "isPWO_iUnion_support_prod_smul",
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
  "slug": "ispwo-iunion-support-prod-smul--ee7b77bb65b0cbfc537b6088",
  "source": {
    "blob": "81441c549dbb3bde76290ddba8384ffba7094cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee7b77bb65b0cbfc537b6088670ec0b8c8a2b431b46d9b6772780558f3ec8a08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f47b07f-59a1-8d5b-b086-3c2a2ba56ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPWO_iUnion_support_prod_smul {s : α → HahnSeries Γ R} {t : β → HahnSeries Γ' V}
    (hs : (⋃ a, (s a).support).IsPWO) (ht : (⋃ b, (t b).support).IsPWO) :
    (⋃ (a : α × β), ((fun a ↦ (of R).symm
      ((s a.1) • (of R) (t a.2))) a).support).IsPWO := by
  apply (hs.vadd ht).mono
  have hsupp : ∀ ab : α × β, support ((fun ab ↦ (of R).symm (s ab.1 • (of R) (t ab.2))) ab) ⊆
      (s ab.1).support +ᵥ (t ab.2).support := by
    intro ab
    refine Set.Subset.trans (fun x hx => ?_) (support_vaddAntidiagonal_subset_vadd
      (hs := (s ab.1).isPWO_support) (ht := (t ab.2).isPWO_support))
    contrapose! hx
    simp only [Set.mem_setOf_eq, not_nonempty_iff_eq_empty] at hx
    rw [mem_support, not_not, HahnModule.coeff_smul, hx, sum_empty]
  refine Set.Subset.trans (Set.iUnion_mono fun a => (hsupp a)) ?_
  simp_all only [Set.iUnion_subset_iff, Prod.forall]
  exact fun a b => Set.vadd_subset_vadd (Set.subset_iUnion_of_subset a fun x y ↦ y)
    (Set.subset_iUnion_of_subset b fun x y ↦ y)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variantc245b25730f8e0c71b670cce5560a497b207b3cec077a5ec08c245d3502b306f.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81441c549dbb3bde76290ddba8384ffba7094cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
