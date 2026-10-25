# mk_perm_eq_self_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93fc4aa28ad6e8bfa291d4545cf5ac11de5fc54e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 587,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6e018a9a5675f79d360918b7e755aff725ee1a664d668274f0fb71b824ecb70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86fa41b8-a776-16ee-3802-1bbc795e2b15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:692a8c62-2232-aee6-9cb6-9c28f5937212",
  "kind": "theorem",
  "lexical_name": "mk_perm_eq_self_power",
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
  "slug": "mk-perm-eq-self-power--a5d117fc0f7de0b474ec04d9",
  "source": {
    "blob": "93fc4aa28ad6e8bfa291d4545cf5ac11de5fc54e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 587,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc6e018a9a5675f79d360918b7e755aff725ee1a664d668274f0fb71b824ecb70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d117fc0f7de0b474ec04d9a656e644717f3ddb921c35c70ee930df7e73b0e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc6e018a9a5675f79d360918b7e755aff725ee1a664d668274f0fb71b824ecb70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:692a8c62-2232-aee6-9cb6-9c28f5937212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_perm_eq_self_power : #(Equiv.Perm α) = #α ^ #α :=
  ((mk_equiv_le_embedding α α).trans (mk_embedding_le_arrow α α)).antisymm <| by
    suffices Nonempty ((α → Bool) ↪ Equiv.Perm (α × Bool)) by
      obtain ⟨e⟩ : Nonempty (α ≃ α × Bool) := by
        erw [← Cardinal.eq, mk_prod, lift_uzero, mk_bool,
          lift_natCast, mul_two, add_eq_self (aleph0_le_mk α)]
      erw [← le_def, mk_arrow, lift_uzero, mk_bool, lift_natCast 2] at this
      rwa [← power_def, power_self_eq (aleph0_le_mk α), e.permCongr.cardinal_eq]
    refine ⟨⟨fun f ↦ Involutive.toPerm (fun x ↦ ⟨x.1, xor (f x.1) x.2⟩) fun x ↦ ?_, fun f g h ↦ ?_⟩⟩
    · simp_rw [← Bool.xor_assoc, Bool.xor_self, Bool.false_xor]
    · ext a; rw [← (f a).xor_false, ← (g a).xor_false]; exact congr(($h ⟨a, false⟩).2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc6e018a9a5675f79d360918b7e755aff725ee1a664d668274f0fb71b824ecb70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantc6e018a9a5675f79d360918b7e755aff725ee1a664d668274f0fb71b824ecb70.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93fc4aa28ad6e8bfa291d4545cf5ac11de5fc54e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
