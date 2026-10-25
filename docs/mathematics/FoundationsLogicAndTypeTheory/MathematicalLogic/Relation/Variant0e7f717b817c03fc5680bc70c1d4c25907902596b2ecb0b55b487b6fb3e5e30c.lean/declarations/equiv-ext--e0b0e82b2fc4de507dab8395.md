# Equiv.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fa2bcc5-d863-9220-a00a-a50210f46a36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b43cffc6-4864-e4f6-fcbc-05eee19365e3",
  "kind": "theorem",
  "lexical_name": "Equiv.ext",
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
  "slug": "equiv-ext--e0b0e82b2fc4de507dab8395",
  "source": {
    "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 301,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b0e82b2fc4de507dab8395ad1ccfd7e9341c57e3b4e7b07a34c9da90d4a428",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b43cffc6-4864-e4f6-fcbc-05eee19365e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.ext {s t : WSeq α} (h : ∀ n, get? s n ~ get? t n) : s ~ʷ t :=
  ⟨fun s t => ∀ n, get? s n ~ get? t n, h, fun {s t} h => by
    refine liftRel_def.2 ⟨?_, ?_⟩
    · rw [← head_terminates_iff, ← head_terminates_iff]
      exact terminates_congr (h 0)
    · intro a b ma mb
      rcases a with - | a <;> rcases b with - | b
      · trivial
      · injection mem_unique (Computation.mem_map _ ma) ((h 0 _).2 (Computation.mem_map _ mb))
      · injection mem_unique (Computation.mem_map _ ma) ((h 0 _).2 (Computation.mem_map _ mb))
      · obtain ⟨a, s'⟩ := a
        obtain ⟨b, t'⟩ := b
        injection mem_unique (Computation.mem_map _ ma) ((h 0 _).2 (Computation.mem_map _ mb)) with
          ab
        refine ⟨ab, fun n => ?_⟩
        refine
          (get?_congr (flatten_equiv (Computation.mem_map _ ma)) n).symm.trans
            ((?_ : get? (tail s) n ~ get? (tail t) n).trans
              (get?_congr (flatten_equiv (Computation.mem_map _ mb)) n))
        rw [get?_tail, get?_tail]
        apply h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `180c51a648a169e3bf100d5cb658df48a180f8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
