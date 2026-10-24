# vecAlt0_vecAppend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "864bc4b5024d96d66ffd5a4981f92d2547d6f413",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41539cc3-26ed-8302-0457-d6686e2a2db5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:813d3a57-f815-60e1-d528-0b1841529731",
  "kind": "theorem",
  "lexical_name": "vecAlt0_vecAppend",
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
  "slug": "vecalt0-vecappend--58bb4de7f49843110f648eeb",
  "source": {
    "blob": "864bc4b5024d96d66ffd5a4981f92d2547d6f413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 389,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58bb4de7f49843110f648eebba7b1fd670103e82de483522ca52c3361a055f51",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:813d3a57-f815-60e1-d528-0b1841529731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vecAlt0_vecAppend (v : Fin n → α) :
    vecAlt0 rfl (vecAppend rfl v v) = v ∘ (fun n ↦ n + n) := by
  ext i
  simp_rw [Function.comp, vecAlt0, vecAppend_eq_ite]
  split_ifs with h <;> congr
  · rw [Fin.val_mk] at h
    exact (Nat.mod_eq_of_lt h).symm
  · rw [Fin.val_mk, not_lt] at h
    simp only [Nat.mod_eq_sub_mod h]
    refine (Nat.mod_eq_of_lt ?_).symm
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `864bc4b5024d96d66ffd5a4981f92d2547d6f413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
