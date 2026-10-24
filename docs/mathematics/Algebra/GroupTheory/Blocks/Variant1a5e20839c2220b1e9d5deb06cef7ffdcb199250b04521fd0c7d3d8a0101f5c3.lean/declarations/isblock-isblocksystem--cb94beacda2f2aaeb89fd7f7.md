# IsBlock.isBlockSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c39b201027103f3b37fd0e0f10338e7832e93933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a7abca4-c893-69b8-8ded-c87d30083eaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:debbf332-72d7-7245-fb7a-5f74a99ca307",
  "kind": "theorem",
  "lexical_name": "IsBlock.isBlockSystem",
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
  "slug": "isblock-isblocksystem--cb94beacda2f2aaeb89fd7f7",
  "source": {
    "blob": "c39b201027103f3b37fd0e0f10338e7832e93933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 433,
    "path": "GRWTSK/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb94beacda2f2aaeb89fd7f7625be7a36bbff124f2ed2c061214747f6cecd58f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:debbf332-72d7-7245-fb7a-5f74a99ca307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBlock.isBlockSystem [hGX : MulAction.IsPretransitive G X]
    (hB : IsBlock G B) (hBe : B.Nonempty) :
    IsBlockSystem G (Set.range fun g : G => g • B) := by
  refine ⟨⟨?nonempty, ?cover⟩, ?mem_blocks⟩
  case mem_blocks => rintro B' ⟨g, rfl⟩; exact hB.translate g
  · simp only [Set.mem_range, not_exists]
    intro g hg
    apply hBe.ne_empty
    simpa only [Set.smul_set_eq_empty] using hg
  · intro a
    obtain ⟨b : X, hb : b ∈ B⟩ := hBe
    obtain ⟨g, rfl⟩ := exists_smul_eq G b a
    use g • B
    simp only [Set.smul_mem_smul_set_iff, hb, existsUnique_iff_exists, Set.mem_range,
      exists_apply_eq_apply, exists_const, exists_prop, and_imp, forall_exists_index,
      forall_apply_eq_imp_iff, true_and]
    exact fun g' ha ↦ hB.smul_eq_smul_of_nonempty ⟨g • b, ha, ⟨b, hb, rfl⟩⟩

section Normal

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39b201027103f3b37fd0e0f10338e7832e93933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
