# exists_sub_one_mem_and_smul_le_of_fg_of_le_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c31b0e3-b5f3-0645-0b4e-202af45dec4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2dbaf4b-18a7-8bfe-1c0f-42cfe0909177",
  "kind": "lemma",
  "lexical_name": "exists_sub_one_mem_and_smul_le_of_fg_of_le_sup",
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
  "slug": "exists-sub-one-mem-and-smul-le-of-fg-of-le-sup--df40f250666b7ef091b153c1",
  "source": {
    "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 162,
    "path": "GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df40f250666b7ef091b153c101e3bf03c2e23c56fac768d3aefed20007b647d7",
  "verification": {
    "reference": "docs/verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2dbaf4b-18a7-8bfe-1c0f-42cfe0909177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_sub_one_mem_and_smul_le_of_fg_of_le_sup {I : Ideal R}
    {N N' P : Submodule R M} (hN' : N'.FG) (hN'le : N' ≤ P) (hNN' : P ≤ N ⊔ I • N') :
    ∃ r : R, r - 1 ∈ I ∧ r • P ≤ N := by
  have hNN'' : P ≤ N ⊔ N' := le_trans hNN' (by simpa using le_trans smul_le_right le_sup_right)
  have h1 : P.map N.mkQ = N'.map N.mkQ := by
    refine le_antisymm ?_ (map_mono hN'le)
    simpa using map_mono (f := N.mkQ) hNN''
  have h2 : P.map N.mkQ = (I • N').map N.mkQ := by
    apply le_antisymm
    · simpa using map_mono (f := N.mkQ) hNN'
    · rw [h1]
      simp [smul_le_right]
  have hle : (P.map N.mkQ) ≤ I • P.map N.mkQ := by
    conv_lhs => rw [h2]
    simp [← h1]
  obtain ⟨r, hmem, hr⟩ := exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul I _
    (h1 ▸ hN'.map _) hle
  refine ⟨r, hmem, fun x hx ↦ ?_⟩
  induction hx using Submodule.smul_inductionOn_pointwise with
  | smul₀ p hp =>
    rw [← Submodule.Quotient.mk_eq_zero, Quotient.mk_smul]
    exact hr _ ⟨p, hp, rfl⟩
  | smul₁ _ _ _ h => exact N.smul_mem _ h
  | add _ _ _ _ hx hy => exact N.add_mem hx hy
  | zero => exact N.zero_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c51814e0230cbe033b9580d49bf33118a973db6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
