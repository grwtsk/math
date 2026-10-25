# mem_eraseLast_of_ne_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46d26d28-0b64-6ebf-7b10-0c441d074134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aee1153b-9479-c489-357b-f933fb0a9117",
  "kind": "theorem",
  "lexical_name": "mem_eraseLast_of_ne_of_mem",
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
  "slug": "mem-eraselast-of-ne-of-mem--d950b967b54d8fe5a32415a7",
  "source": {
    "blob": "2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d950b967b54d8fe5a32415a797e0ab67c57892fb77d10b613735473ed229f0ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aee1153b-9479-c489-357b-f933fb0a9117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_eraseLast_of_ne_of_mem {s : CompositionSeries X} {x : X}
    (hx : x ≠ s.last) (hxs : x ∈ s) : x ∈ s.eraseLast := by
  rcases hxs with ⟨i, rfl⟩
  have hi : (i : ℕ) < (s.length - 1).succ := by
    conv_rhs => rw [← Nat.succ_sub (length_pos_of_nontrivial ⟨_, ⟨i, rfl⟩, _, s.last_mem, hx⟩),
      Nat.add_one_sub_one]
    exact lt_of_le_of_ne (Nat.le_of_lt_succ i.2) (by simpa [last, s.inj, Fin.ext_iff] using hx)
  exact ⟨⟨↑i, hi⟩, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant41691169ff963298f9623124acfbd47d0bf4ccc0f5e9f5fe4e2ca80c638965dc.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2381085bd7c554e1c5dca38cf1aaf2e573bf8eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
