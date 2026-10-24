# exists_sub_one_mem_and_smul_le_of_fg_of_le_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b0dcc2-2487-3d90-e2a1-f58d277ecc28",
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
  "slug": "exists-sub-one-mem-and-smul-le-of-fg-of-le-sup--dd6df24ecd8ee83ba3b53a76",
  "source": {
    "blob": "3735a84389b2bba978c29e227898c621f94fff69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 163,
    "path": "GRWTSK/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd6df24ecd8ee83ba3b53a768aa2cfc0758203816c3405137481dda7a167514c",
  "verification": {
    "reference": "docs/verification/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b0dcc2-2487-3d90-e2a1-f58d277ecc28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–189.

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

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3735a84389b2bba978c29e227898c621f94fff69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
