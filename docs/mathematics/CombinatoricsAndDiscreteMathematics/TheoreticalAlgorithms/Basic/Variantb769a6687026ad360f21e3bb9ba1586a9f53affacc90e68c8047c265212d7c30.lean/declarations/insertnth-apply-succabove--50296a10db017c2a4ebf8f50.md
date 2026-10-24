# insertNth_apply_succAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c9cf413838979513ed14085e00d5df76117faf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 674,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b769a6687026ad360f21e3bb9ba1586a9f53affacc90e68c8047c265212d7c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4de7c2a6-1c20-9650-397e-6aecd31cb17a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63a27850-3ee8-a7a2-09dc-5d35f73eb8fe",
  "kind": "theorem",
  "lexical_name": "insertNth_apply_succAbove",
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
  "slug": "insertnth-apply-succabove--50296a10db017c2a4ebf8f50",
  "source": {
    "blob": "35c9cf413838979513ed14085e00d5df76117faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 674,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb769a6687026ad360f21e3bb9ba1586a9f53affacc90e68c8047c265212d7c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50296a10db017c2a4ebf8f50c58e187862c0f7bd0a24d5ef0621732bc74b0da9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb769a6687026ad360f21e3bb9ba1586a9f53affacc90e68c8047c265212d7c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a27850-3ee8-a7a2-09dc-5d35f73eb8fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertNth_apply_succAbove (i : Fin (n + 1)) (x : α i) (p : ∀ j, α (i.succAbove j))
    (j : Fin n) : insertNth i x p (i.succAbove j) = p j := by
  simp only [insertNth, succAboveCases, dif_neg (succAbove_ne _ _), succAbove_lt_iff]
  split_ifs with hlt
  · generalize_proofs H₁ H₂; revert H₂
    generalize hk : castLT ((succAbove i) j) H₁ = k
    rw [castLT_succAbove hlt] at hk; cases hk
    intro; rfl
  · generalize_proofs H₁ H₂; revert H₂
    generalize hk : pred ((succAboveEmb i).toEmbedding j) H₁ = k
    erw [pred_succAbove (le_of_not_lt hlt)] at hk; cases hk
    intro; rfl
#align fin.insert_nth_apply_succ_above Fin.insertNth_apply_succAbove

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb769a6687026ad360f21e3bb9ba1586a9f53affacc90e68c8047c265212d7c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb769a6687026ad360f21e3bb9ba1586a9f53affacc90e68c8047c265212d7c30.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c9cf413838979513ed14085e00d5df76117faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
