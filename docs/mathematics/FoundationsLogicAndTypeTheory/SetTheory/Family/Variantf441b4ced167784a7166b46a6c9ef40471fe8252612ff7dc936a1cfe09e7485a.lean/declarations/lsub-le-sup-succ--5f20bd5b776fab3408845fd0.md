# lsub_le_sup_succ

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
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:339bd2b4-c6fb-31e4-11cd-3a166637f867",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b1a36e6-a03b-785b-df67-00899bb183aa",
  "kind": "theorem",
  "lexical_name": "lsub_le_sup_succ",
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
  "slug": "lsub-le-sup-succ--5f20bd5b776fab3408845fd0",
  "source": {
    "blob": "9a2518d1710bbe13bf4825e2ff3f19df97a57627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 606,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f20bd5b776fab3408845fd0bde15c819cd3004fa73419973e8cdec53894eb0f",
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

Occurrence: `result:2b1a36e6-a03b-785b-df67-00899bb183aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lsub_le_sup_succ {ι : Type u} (f : ι → Ordinal.{max u v}) :
    lsub.{_, v} f ≤ succ (sup.{_, v} f) :=
  lsub_le fun i => lt_succ_iff.2 (le_sup f i)

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantf441b4ced167784a7166b46a6c9ef40471fe8252612ff7dc936a1cfe09e7485a.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2518d1710bbe13bf4825e2ff3f19df97a57627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
