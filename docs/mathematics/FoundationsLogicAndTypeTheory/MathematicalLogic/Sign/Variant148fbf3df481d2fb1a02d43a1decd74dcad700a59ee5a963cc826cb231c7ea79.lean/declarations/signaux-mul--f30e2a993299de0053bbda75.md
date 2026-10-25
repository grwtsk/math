# signAux_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaa283a3-3439-1971-c870-e91f378da8c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:877bf9b7-c2ed-a2f2-05c5-9919e0342f80",
  "kind": "theorem",
  "lexical_name": "signAux_mul",
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
  "slug": "signaux-mul--f30e2a993299de0053bbda75",
  "source": {
    "blob": "a4dc3c2703d805168a0b8fb8791b69f61096c532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f30e2a993299de0053bbda75061e8271c501b0a9d3a9fdf0c07d286a737e3c54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:877bf9b7-c2ed-a2f2-05c5-9919e0342f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signAux_mul {n : ℕ} (f g : Perm (Fin n)) : signAux (f * g) = signAux f * signAux g := by
  rw [← signAux_inv g]
  unfold signAux
  rw [← prod_mul_distrib]
  refine prod_nbij (signBijAux g) signBijAux_mem signBijAux_injOn signBijAux_surj ?_
  rintro ⟨a, b⟩ hab
  dsimp only [signBijAux]
  rw [mul_apply, mul_apply]
  rw [mem_finPairsLT] at hab
  by_cases h : g b < g a
  · rw [dif_pos h]
    simp only [not_le_of_gt hab, mul_one, mul_ite, mul_neg, Perm.inv_apply_self, if_false]
  · rw [dif_neg h, inv_apply_self, inv_apply_self, if_pos hab.le]
    by_cases h₁ : f (g b) ≤ f (g a)
    · have : f (g b) ≠ f (g a) := by
        rw [Ne, f.injective.eq_iff, g.injective.eq_iff]
        exact ne_of_lt hab
      rw [if_pos h₁, if_neg (h₁.lt_of_ne this).not_le]
      rfl
    · rw [if_neg h₁, if_pos (lt_of_not_ge h₁).le]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant148fbf3df481d2fb1a02d43a1decd74dcad700a59ee5a963cc826cb231c7ea79.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dc3c2703d805168a0b8fb8791b69f61096c532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
