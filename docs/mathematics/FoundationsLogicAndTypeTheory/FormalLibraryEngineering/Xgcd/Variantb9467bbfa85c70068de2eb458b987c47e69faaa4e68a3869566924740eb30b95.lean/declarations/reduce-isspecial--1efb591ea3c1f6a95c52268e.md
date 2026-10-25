# reduce_isSpecial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4bc0a3550c39c09fa1944c063c8f9fe50675a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9467bbfa85c70068de2eb458b987c47e69faaa4e68a3869566924740eb30b95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be7d089f-2067-44c1-87bb-3fcef651004c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:577cf396-0488-0f6e-d284-04cabcde7608",
  "kind": "theorem",
  "lexical_name": "reduce_isSpecial",
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
  "slug": "reduce-isspecial--1efb591ea3c1f6a95c52268e",
  "source": {
    "blob": "b4bc0a3550c39c09fa1944c063c8f9fe50675a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb9467bbfa85c70068de2eb458b987c47e69faaa4e68a3869566924740eb30b95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1efb591ea3c1f6a95c52268e158c84d6263e08c30bf1297f4a5ed169d4ab20ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb9467bbfa85c70068de2eb458b987c47e69faaa4e68a3869566924740eb30b95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:577cf396-0488-0f6e-d284-04cabcde7608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_isSpecial : ∀ u : XgcdType, u.IsSpecial → u.reduce.IsSpecial
  | u =>
    dite (u.r = 0)
      (fun h hs => by
        rw [reduce_a h]
        exact u.finish_isSpecial hs)
      fun h hs => by
      have : SizeOf.sizeOf u.step < SizeOf.sizeOf u := u.step_wf h
      rw [reduce_b h]
      exact (flip_isSpecial _).mpr (reduce_isSpecial _ (u.step_isSpecial hs))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb9467bbfa85c70068de2eb458b987c47e69faaa4e68a3869566924740eb30b95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variantb9467bbfa85c70068de2eb458b987c47e69faaa4e68a3869566924740eb30b95.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bc0a3550c39c09fa1944c063c8f9fe50675a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
