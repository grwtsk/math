# mem_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38fc0774ba0261b8a8758a29bddd0a976925facb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b67a26cf-ce03-cbf5-484e-69c186c14228",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78e37ad6-889f-91f4-cf81-a601cc7a7bcc",
  "kind": "lemma",
  "lexical_name": "mem_nsmul",
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
  "slug": "mem-nsmul--a3b8c2fc7d2bd978606aa369",
  "source": {
    "blob": "38fc0774ba0261b8a8758a29bddd0a976925facb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3b8c2fc7d2bd978606aa3697b388d3589bf434c4ff915bdc4bc49b7d2c86fc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78e37ad6-889f-91f4-cf81-a601cc7a7bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_nsmul {a : α} {s : Multiset α} {n : ℕ} : a ∈ n • s ↔ n ≠ 0 ∧ a ∈ s := by
  refine ⟨fun ha ↦ ⟨?_, mem_of_mem_nsmul ha⟩, fun h ↦ ?_⟩
  · rintro rfl
    simp [zero_nsmul] at ha
  obtain ⟨n, rfl⟩ := exists_eq_succ_of_ne_zero h.1
  rw [succ_nsmul, mem_add]
  exact Or.inr h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38fc0774ba0261b8a8758a29bddd0a976925facb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
