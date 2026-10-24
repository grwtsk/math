# getElem_succ_leftInvSeq_alternatingWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5e05a1df8da8076069ec5eb97025aa0c60560c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 450,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffe7be30-f132-587b-4faf-c9753ebe5b29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51a6069e-b0bd-68da-c834-87b9e85808e3",
  "kind": "lemma",
  "lexical_name": "getElem_succ_leftInvSeq_alternatingWord",
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
  "slug": "getelem-succ-leftinvseq-alternatingword--3d3df1af5c863c6d5d63b1f9",
  "source": {
    "blob": "a5e05a1df8da8076069ec5eb97025aa0c60560c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d3df1af5c863c6d5d63b1f9a533d59329ff95bef7b9d08f904aeb41c15e9e4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a6069e-b0bd-68da-c834-87b9e85808e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma getElem_succ_leftInvSeq_alternatingWord
    (i j : B) (p k : ℕ) (h : k + 1 < 2 * p) :
    (lis (alternatingWord i j (2 * p)))[k + 1]'(by simpa using h) =
    MulAut.conj (s i) ((lis (alternatingWord j i (2 * p)))[k]'(by simp; lia)) := by
  rw [cs.getElem_leftInvSeq (alternatingWord i j (2 * p)) (k + 1) (by simp [h]),
    cs.getElem_leftInvSeq (alternatingWord j i (2 * p)) k (by simp; lia)]
  simp only [MulAut.conj, listTake_succ_alternatingWord i j p k h, cs.wordProd_cons, mul_assoc,
    mul_inv_rev, inv_simple, MonoidHom.coe_mk, OneHom.coe_mk, MulEquiv.coe_mk, Equiv.coe_fn_mk,
    mul_right_inj, mul_left_inj]
  rw [getElem_alternatingWord_swapIndices i j (2 * p) k]
  lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantecc4c5664af49703cfd2b4b5dbe744e2732fa44b65731ea051d3007479bc81e0.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5e05a1df8da8076069ec5eb97025aa0c60560c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
