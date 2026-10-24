# lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92e8372626ac37d220d254ae88dfc9b3195c479a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6774e51e-5dc8-8f8e-4791-682a7496747a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0f7e669-7299-bbae-e040-54df6e6509a8",
  "kind": "lemma",
  "lexical_name": "lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_right",
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
  "slug": "lie-mem-genweightspacechain-of-genweightspace-eq-bot-right--c3aada0e82f873954a8b0770",
  "source": {
    "blob": "92e8372626ac37d220d254ae88dfc9b3195c479a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3aada0e82f873954a8b0770490033dc89db9146deca9f1950306cd035032494",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0f7e669-7299-bbae-e040-54df6e6509a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_right [LieRing.IsNilpotent H]
    (hq : genWeightSpace M (q • α + χ) = ⊥)
    {x : L} (hx : x ∈ rootSpace H α)
    {y : M} (hy : y ∈ genWeightSpaceChain M α χ p q) :
    ⁅x, y⁆ ∈ genWeightSpaceChain M α χ p q := by
  rw [genWeightSpaceChain, iSup_subtype'] at hy
  induction hy using LieSubmodule.iSup_induction' with
  | mem k z hz =>
    obtain ⟨k, hk⟩ := k
    suffices genWeightSpace M ((k + 1) • α + χ) ≤ genWeightSpaceChain M α χ p q by
      apply this
      -- was `simpa using! [...]` and very slow
      -- (https://github.com/leanprover-community/mathlib4/issues/19751)
      simpa only [zsmul_eq_mul, Int.cast_add, Pi.intCast_def, Int.cast_one] using!
        (rootSpaceWeightSpaceProduct R L H M α (k • α + χ) ((k + 1) • α + χ)
            (by rw [add_smul]; abel) (⟨x, hx⟩ ⊗ₜ ⟨z, hz⟩)).property
    rw [genWeightSpaceChain]
    rcases eq_or_ne (k + 1) q with rfl | hk'; · simp only [hq, bot_le]
    replace hk' : k + 1 ∈ Ioo p q := ⟨by linarith [hk.1], lt_of_le_of_ne hk.2 hk'⟩
    exact le_biSup (fun k ↦ genWeightSpace M (k • α + χ)) hk'
  | zero => simp
  | add _ _ _ _ hz₁ hz₂ => rw [lie_add]; exact add_mem hz₁ hz₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e8372626ac37d220d254ae88dfc9b3195c479a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
