# lift_cof_iSup_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61f131f55787d63d860900145f5680c395d874da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e555ae2-6910-6b91-a51b-fa2b53fa2cf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b083906-8bff-d2a3-e0ab-78b6252be7e5",
  "kind": "theorem",
  "lexical_name": "lift_cof_iSup_add_one",
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
  "slug": "lift-cof-isup-add-one--f7d2500dc8a7518cbc63c742",
  "source": {
    "blob": "61f131f55787d63d860900145f5680c395d874da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d2500dc8a7518cbc63c7427cb04bd565e8081d306849879e8e066167882966",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b083906-8bff-d2a3-e0ab-78b6252be7e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_cof_iSup_add_one [Small.{u} β] {f : β → Ordinal} (hf : StrictMono f) :
    Cardinal.lift.{v} (cof (⨆ i, f i + 1)) = Cardinal.lift.{u} (Order.cof β) := by
  have : StrictMono (β := Iio (⨆ i, f i + 1)) (fun i ↦ ⟨f i, ?_⟩) := fun x y h ↦ hf h
  · have := lift_cof_congr_of_strictMono this ?_
    · rw [← Cardinal.lift_inj.{_, max (u + 1) v}, Cardinal.lift_lift.{_, _, v},
        Cardinal.lift_umax.{_, u + 1}, Cardinal.lift_umax.{_, u + 1}, this]
      simp
    · intro ⟨b, hb⟩
      rw [mem_Iio, Ordinal.lt_iSup_add_one_iff] at hb
      obtain ⟨i, hi⟩ := hb
      exact ⟨_, Set.mem_range_self i, hi⟩
  · rw [mem_Iio]
    exact (lt_add_one _).trans_le <| le_ciSup bddAbove_of_small _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantdf1bb404f45a1e938e4a37ef7c73a60c022fb7423ccaaa32c9a2a6de6fbe399b.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f131f55787d63d860900145f5680c395d874da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
