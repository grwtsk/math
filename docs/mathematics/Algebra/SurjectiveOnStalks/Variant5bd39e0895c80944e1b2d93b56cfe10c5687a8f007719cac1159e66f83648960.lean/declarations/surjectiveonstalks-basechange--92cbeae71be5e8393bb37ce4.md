# SurjectiveOnStalks.baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96ab2e3141c2da1d6157186f67d7df74bd91d71c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b2069da-5fb4-1d98-fbb4-0dfcd3709ee5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a104d0c6-0952-2d51-497d-8615c3ad0d02",
  "kind": "lemma",
  "lexical_name": "SurjectiveOnStalks.baseChange",
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
  "slug": "surjectiveonstalks-basechange--92cbeae71be5e8393bb37ce4",
  "source": {
    "blob": "96ab2e3141c2da1d6157186f67d7df74bd91d71c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92cbeae71be5e8393bb37ce438606e43da4d6c8146a01c38dc1aa62417f4fea0",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a104d0c6-0952-2d51-497d-8615c3ad0d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SurjectiveOnStalks.baseChange
    [Algebra R T] [Algebra R S]
    (hf : (algebraMap R T).SurjectiveOnStalks) :
    (algebraMap S (S ⊗[R] T)).SurjectiveOnStalks := by
  let g : T →+* S ⊗[R] T := Algebra.TensorProduct.includeRight.toRingHom
  intros J hJ
  rw [surjective_localRingHom_iff]
  intro x
  obtain ⟨t, r, a, ht, e⟩ := hf.exists_mul_eq_tmul x (J.comap g) inferInstance
  refine ⟨a, algebraMap _ _ r, 1 ⊗ₜ (r • t), ht, ?_, ?_⟩
  · intro H
    simp only [Algebra.algebraMap_eq_smul_one (A := S), Algebra.TensorProduct.algebraMap_apply,
      Algebra.id.map_eq_id, id_apply, smul_tmul, ← Algebra.algebraMap_eq_smul_one (A := T)] at H
    rw [Ideal.mem_comap, Algebra.smul_def, g.map_mul] at ht
    exact ht (J.mul_mem_right _ H)
  · simp only [tmul_smul, Algebra.TensorProduct.algebraMap_apply, Algebra.id.map_eq_id,
      RingHomCompTriple.comp_apply, Algebra.smul_mul_assoc, Algebra.TensorProduct.tmul_mul_tmul,
      one_mul, mul_one, id_apply, ← e]
    rw [Algebra.algebraMap_eq_smul_one, ← smul_tmul', smul_mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96ab2e3141c2da1d6157186f67d7df74bd91d71c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
