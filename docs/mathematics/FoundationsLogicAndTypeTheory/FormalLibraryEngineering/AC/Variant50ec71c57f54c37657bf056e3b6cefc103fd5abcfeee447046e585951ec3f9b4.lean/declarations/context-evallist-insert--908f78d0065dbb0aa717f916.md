# Context.evalList_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d68f645f39eb54676fe35ddcd7df853d73b0ca6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4077d634-3779-20a4-f06b-25d08f20d420",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45118833-e1e3-3f38-3508-8c14b05da2ec",
  "kind": "theorem",
  "lexical_name": "Context.evalList_insert",
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
  "slug": "context-evallist-insert--908f78d0065dbb0aa717f916",
  "source": {
    "blob": "6d68f645f39eb54676fe35ddcd7df853d73b0ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908f78d0065dbb0aa717f916ed6c2e97af557625f1dc56d480acf1b48f8f551b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45118833-e1e3-3f38-3508-8c14b05da2ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Context.evalList_insert
  (ctx : Context α)
  (h : Commutative ctx.op)
  (x : Nat)
  (xs : List Nat)
  : evalList α ctx (insert x xs) = evalList α ctx (x::xs) := by
  induction xs using List.two_step_induction with
  | empty => rfl
  | single =>
    simp [insert]
    split
    . rfl
    . simp [evalList, h.1, EvalInformation.evalOp]
  | step y z zs ih =>
    simp [insert] at *; split
    next => rfl
    next =>
      split
      next => simp [evalList, EvalInformation.evalOp]; rw [h.1, ctx.assoc.1, h.1 (evalList _ _ _)]
      next => simp_all [evalList, EvalInformation.evalOp]; rw [h.1, ctx.assoc.1, h.1 (evalList _ _ _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d68f645f39eb54676fe35ddcd7df853d73b0ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
