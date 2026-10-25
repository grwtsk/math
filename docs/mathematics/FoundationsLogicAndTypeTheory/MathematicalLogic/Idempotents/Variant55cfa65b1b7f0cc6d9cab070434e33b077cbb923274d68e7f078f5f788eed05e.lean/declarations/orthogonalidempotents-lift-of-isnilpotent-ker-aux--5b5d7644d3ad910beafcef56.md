# OrthogonalIdempotents.lift_of_isNilpotent_ker_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f31d609-8790-ab8a-71de-6f4d57c1bac3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c37f6c2-45d6-bf66-25c2-fce503eed6b3",
  "kind": "lemma",
  "lexical_name": "OrthogonalIdempotents.lift_of_isNilpotent_ker_aux",
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
  "slug": "orthogonalidempotents-lift-of-isnilpotent-ker-aux--5b5d7644d3ad910beafcef56",
  "source": {
    "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b5d7644d3ad910beafcef564e544ba315eeec57538d485d6072f7c35b5a7099",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c37f6c2-45d6-bf66-25c2-fce503eed6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma OrthogonalIdempotents.lift_of_isNilpotent_ker_aux
    (h : ∀ x ∈ RingHom.ker f, IsNilpotent x)
    {n} {e : Fin n → S} (he : OrthogonalIdempotents e) (he' : ∀ i, e i ∈ f.range) :
    ∃ e' : Fin n → R, OrthogonalIdempotents e' ∧ f ∘ e' = e := by
  induction' n with n IH
  · refine ⟨0, ⟨finZeroElim, finZeroElim⟩, funext finZeroElim⟩
  · obtain ⟨e', h₁, h₂⟩ := IH (he.embedding (Fin.succEmb n)) (fun i ↦ he' _)
    have h₂' (i) : f (e' i) = e i.succ := congr_fun h₂ i
    obtain ⟨e₀, h₃, h₄, h₅, h₆⟩ :=
      exists_isIdempotentElem_mul_eq_zero_of_ker_isNilpotent f h _ (he' 0) (he.idem 0) _
      h₁.isIdempotentElem_sum
      (by simp [Finset.mul_sum, h₂', he.mul_eq, eq_comm])
      (by simp [Finset.sum_mul, h₂', he.mul_eq])
    refine ⟨_, (h₁.option _ h₃ h₅ h₆).embedding (finSuccEquiv n).toEmbedding, funext fun i ↦ ?_⟩
    obtain ⟨_ | i, rfl⟩ := (finSuccEquiv n).symm.surjective i <;> simp [*]

variable {I : Type*} {e : I → R}

/-- A family of orthogonal idempotents lift along nil ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d12e7f5924330176fd12dba6740d9fa10d8340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
