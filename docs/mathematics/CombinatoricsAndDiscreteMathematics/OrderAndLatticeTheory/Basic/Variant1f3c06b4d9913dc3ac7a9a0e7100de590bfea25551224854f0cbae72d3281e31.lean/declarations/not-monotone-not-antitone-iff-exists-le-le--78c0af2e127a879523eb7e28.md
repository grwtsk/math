# not_monotone_not_antitone_iff_exists_le_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1accd520ff42418ef07f5e2015e2ee7129f58f58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4acf3799-8b78-c985-b301-2478d4d81cb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0698e0f5-11d8-7257-6bad-fd9bd2827bfd",
  "kind": "lemma",
  "lexical_name": "not_monotone_not_antitone_iff_exists_le_le",
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
  "slug": "not-monotone-not-antitone-iff-exists-le-le--78c0af2e127a879523eb7e28",
  "source": {
    "blob": "1accd520ff42418ef07f5e2015e2ee7129f58f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 474,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78c0af2e127a879523eb7e28a7227a369f7fefacfeb5551f66e4866287e68025",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0698e0f5-11d8-7257-6bad-fd9bd2827bfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_monotone_not_antitone_iff_exists_le_le :
    ¬ Monotone f ∧ ¬ Antitone f ↔
      ∃ a b c, a ≤ b ∧ b ≤ c ∧ ((f a < f b ∧ f c < f b) ∨ (f b < f a ∧ f b < f c)) := by
  simp_rw [Monotone, Antitone, not_forall, not_le]
  refine Iff.symm ⟨?_, ?_⟩
  · rintro ⟨a, b, c, hab, hbc, ⟨hfab, hfcb⟩ | ⟨hfba, hfbc⟩⟩
    exacts [⟨⟨_, _, hbc, hfcb⟩, _, _, hab, hfab⟩, ⟨⟨_, _, hab, hfba⟩, _, _, hbc, hfbc⟩]
  rintro ⟨⟨a, b, hab, hfba⟩, c, d, hcd, hfcd⟩
  obtain hda | had := le_total d a
  · obtain hfad | hfda := le_total (f a) (f d)
    · exact ⟨c, d, b, hcd, hda.trans hab, Or.inl ⟨hfcd, hfba.trans_le hfad⟩⟩
    · exact ⟨c, a, b, hcd.trans hda, hab, Or.inl ⟨hfcd.trans_le hfda, hfba⟩⟩
  obtain hac | hca := le_total a c
  · obtain hfdb | hfbd := le_or_lt (f d) (f b)
    · exact ⟨a, c, d, hac, hcd, Or.inr ⟨hfcd.trans <| hfdb.trans_lt hfba, hfcd⟩⟩
    obtain hfca | hfac := lt_or_le (f c) (f a)
    · exact ⟨a, c, d, hac, hcd, Or.inr ⟨hfca, hfcd⟩⟩
    obtain hbd | hdb := le_total b d
    · exact ⟨a, b, d, hab, hbd, Or.inr ⟨hfba, hfbd⟩⟩
    · exact ⟨a, d, b, had, hdb, Or.inl ⟨hfac.trans_lt hfcd, hfbd⟩⟩
  · obtain hfdb | hfbd := le_or_lt (f d) (f b)
    · exact ⟨c, a, b, hca, hab, Or.inl ⟨hfcd.trans <| hfdb.trans_lt hfba, hfba⟩⟩
    obtain hfca | hfac := lt_or_le (f c) (f a)
    · exact ⟨c, a, b, hca, hab, Or.inl ⟨hfca, hfba⟩⟩
    obtain hbd | hdb := le_total b d
    · exact ⟨a, b, d, hab, hbd, Or.inr ⟨hfba, hfbd⟩⟩
    · exact ⟨a, d, b, had, hdb, Or.inl ⟨hfac.trans_lt hfcd, hfbd⟩⟩

/-- A function between linear orders which is neither monotone nor antitone makes a dent upright or
downright. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant1f3c06b4d9913dc3ac7a9a0e7100de590bfea25551224854f0cbae72d3281e31.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1accd520ff42418ef07f5e2015e2ee7129f58f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
