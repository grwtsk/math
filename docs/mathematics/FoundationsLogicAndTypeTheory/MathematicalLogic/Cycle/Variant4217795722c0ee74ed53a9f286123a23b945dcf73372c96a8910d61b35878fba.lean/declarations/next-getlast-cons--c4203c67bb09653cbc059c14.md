# next_getLast_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffd2d9fa-f701-e7d6-81d1-d3b15be01d4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d54bbb3-5d4e-6d15-2bb5-6aa6b9f67bdf",
  "kind": "theorem",
  "lexical_name": "next_getLast_cons",
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
  "slug": "next-getlast-cons--c4203c67bb09653cbc059c14",
  "source": {
    "blob": "ed1b757fa1db5152c59aa927bd428a59e41bf1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4203c67bb09653cbc059c14c8cc53e1e7b6c0828942b97944a2b19096e34c49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d54bbb3-5d4e-6d15-2bb5-6aa6b9f67bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_getLast_cons (h : x ∈ l) (y : α) (h : x ∈ y :: l) (hy : x ≠ y)
    (hx : x = getLast (y :: l) (cons_ne_nil _ _)) (hl : Nodup l) : next (y :: l) x h = y := by
  rw [next, get, ← dropLast_append_getLast (cons_ne_nil y l), hx, nextOr_concat]
  subst hx
  intro H
  obtain ⟨_ | k, hk, hk'⟩ := getElem_of_mem H
  · grind
  suffices k + 1 = l.length by simp [this] at hk
  rcases l with - | ⟨hd, tl⟩
  · simp at hk
  · rw [nodup_iff_injective_get] at hl
    rw [length, Nat.succ_inj]
    exact Fin.val_eq_of_eq <| @hl ⟨k, Nat.lt_of_succ_lt <| by simpa using hk⟩
      ⟨tl.length, by simp⟩ (by grind)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant4217795722c0ee74ed53a9f286123a23b945dcf73372c96a8910d61b35878fba.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1b757fa1db5152c59aa927bd428a59e41bf1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
