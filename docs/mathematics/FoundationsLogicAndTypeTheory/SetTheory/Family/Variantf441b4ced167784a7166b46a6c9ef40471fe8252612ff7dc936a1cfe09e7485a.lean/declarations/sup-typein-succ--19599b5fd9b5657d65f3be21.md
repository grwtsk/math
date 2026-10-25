# sup_typein_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 724,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef898613-0e2c-9466-eadc-6111a54cd4ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77e71abc-c6b0-5ae6-18d9-46af51222d5e",
  "kind": "theorem",
  "lexical_name": "sup_typein_succ",
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
  "slug": "sup-typein-succ--19599b5fd9b5657d65f3be21",
  "source": {
    "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 724,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19599b5fd9b5657d65f3be216a87f9bf921096598bbb2b1f8c9ad9f41dd599dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e71abc-c6b0-5ae6-18d9-46af51222d5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_typein_succ {o : Ordinal} :
    sup.{u, u} (typein ((· < ·) : (succ o).toType → (succ o).toType → Prop)) = o := by
  rcases sup_eq_lsub_or_sup_succ_eq_lsub.{u, u}
      (typein ((· < ·) : (succ o).toType → (succ o).toType → Prop)) with h | h
  · rw [sup_eq_lsub_iff_succ] at h
    simp only [lsub_typein] at h
    exact (h o (lt_succ o)).false.elim
  rw [← succ_eq_succ_iff, h]
  apply lsub_typein

end lsub

-- TODO: either deprecate this in favor of `lsub` when its universes are generalized, or deprecate
-- both of them at once.

section blsub

/-- The least strict upper bound of a family of ordinals indexed by the set of ordinals less than
    some `o : Ordinal.{u}`.

    This is to `lsub` as `bsup` is to `sup`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2518d1710bbe13bf4825e2ff3f19df97a57627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
