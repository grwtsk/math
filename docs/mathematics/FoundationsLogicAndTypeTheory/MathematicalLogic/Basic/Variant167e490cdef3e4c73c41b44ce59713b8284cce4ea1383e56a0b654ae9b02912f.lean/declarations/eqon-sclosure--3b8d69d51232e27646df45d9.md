# eqOn_sclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2006d8ec0ef665351e9a89ffed2619459742149f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 709,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afc33345-a2d1-132c-c90c-70258d264506",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f1aa334-ab53-b9a5-880a-5daa5afbc9b1",
  "kind": "theorem",
  "lexical_name": "eqOn_sclosure",
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
  "slug": "eqon-sclosure--3b8d69d51232e27646df45d9",
  "source": {
    "blob": "2006d8ec0ef665351e9a89ffed2619459742149f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 709,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8d69d51232e27646df45d9c899e21995c5f8a993b00a767ab789bc999a5392",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1aa334-ab53-b9a5-880a-5daa5afbc9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_sclosure {F : Type*} [FunLike F R S] [NonUnitalRingHomClass F R S]
    {f g : F} {s : Set R} (h : Set.EqOn (f : R → S) (g : R → S) s) :
    Set.EqOn f g (closure s) :=
  show closure s ≤ eqSlocus f g from closure_le.2 h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2006d8ec0ef665351e9a89ffed2619459742149f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
