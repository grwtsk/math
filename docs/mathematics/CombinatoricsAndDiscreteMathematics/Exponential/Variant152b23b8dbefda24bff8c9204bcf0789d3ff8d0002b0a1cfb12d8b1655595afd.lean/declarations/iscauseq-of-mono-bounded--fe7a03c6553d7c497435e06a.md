# isCauSeq_of_mono_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d20f284-1820-0b09-835c-4cab57b94ba5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45f0669a-4462-907b-b5c7-7794c38d6066",
  "kind": "theorem",
  "lexical_name": "isCauSeq_of_mono_bounded",
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
  "slug": "iscauseq-of-mono-bounded--fe7a03c6553d7c497435e06a",
  "source": {
    "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7a03c6553d7c497435e06a3542d44032eb524e7c5b42f435e6213265b8838a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45f0669a-4462-907b-b5c7-7794c38d6066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_of_mono_bounded (f : ℕ → α) {a : α} {m : ℕ} (ham : ∀ n ≥ m, |f n| ≤ a)
    (hnm : ∀ n ≥ m, f n ≤ f n.succ) : IsCauSeq abs f := by
  refine'
    @Eq.ndrecOn (ℕ → α) _ (IsCauSeq abs) _ _
      (-⟨_, @isCauSeq_of_decreasing_bounded _ _ _ (fun n => -f n) a m (by simpa) (by simpa)⟩ :
          CauSeq α abs).2
  ext
  exact neg_neg _
#align is_cau_of_mono_bounded isCauSeq_of_mono_bounded

end

section NoArchimedean

variable {α : Type*} {β : Type*} [Ring β] [LinearOrderedField α] {abv : β → α}
  [IsAbsoluteValue abv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d71e496ea143cafd81c9aa2893b68b5ab902d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
