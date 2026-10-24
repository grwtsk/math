# comm_trans_lTensorOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29eb6303d7823fbf569daf4f65aa054e2b953d23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b747bab-afef-82d5-7317-736e3f639609",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc8bf6fa-d1d2-defe-6b6e-6717e0e19d5b",
  "kind": "theorem",
  "lexical_name": "comm_trans_lTensorOne",
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
  "slug": "comm-trans-ltensorone--fa97a72dfe738f6ff1cd8add",
  "source": {
    "blob": "29eb6303d7823fbf569daf4f65aa054e2b953d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 235,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa97a72dfe738f6ff1cd8add80845b7d9451c77573df5b767c38f4323e22a3f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8bf6fa-d1d2-defe-6b6e-6717e0e19d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comm_trans_lTensorOne :
    (TensorProduct.comm R _ _).trans M.lTensorOne = M.rTensorOne := by
  refine LinearEquiv.toLinearMap_injective <| TensorProduct.ext' fun m r ↦ ?_
  obtain ⟨x, h⟩ := Algebra.mem_bot.1 r.2
  replace h : algebraMap R _ x = r := Subtype.val_injective h
  rw [← h]; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29eb6303d7823fbf569daf4f65aa054e2b953d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
