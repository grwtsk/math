# card_eigenvalues_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0f9654c-b222-f988-9cbb-aafc952ad75c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e7f30f4-a274-b90f-5144-35762be32dbf",
  "kind": "lemma",
  "lexical_name": "card_eigenvalues_reindex",
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
  "slug": "card-eigenvalues-reindex--88d8ffc5890e03bf7f3f9050",
  "source": {
    "blob": "7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d8ffc5890e03bf7f3f90504e5dd2c174ffe4ed5f335bf84a37e5d63101a49e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7f30f4-a274-b90f-5144-35762be32dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_eigenvalues_reindex (p : ℝ → Prop) [DecidablePred p] :
    #{i | p (hA.eigenvalues i)} = #{k | p (hA.eigenvalues₀ k)} := by
  apply Finset.card_nbij' (eigEquiv (n := n)).symm (eigEquiv (n := n))
  · intro i hi
    simp only [Finset.mem_coe, mem_filter, mem_univ, true_and] at hi ⊢
    rwa [← eigenvalues_eigEquiv hA, Equiv.apply_symm_apply]
  · intro k hk
    simp only [Finset.mem_coe, mem_filter, mem_univ, true_and] at hk ⊢
    rwa [eigenvalues_eigEquiv hA]
  · exact fun i _ => Equiv.apply_symm_apply _ i
  · exact fun k _ => Equiv.symm_apply_apply _ k

end Reindex

open Unitary in
/-- For a Hermitian matrix, `‖A‖_F² = ∑ᵢ λᵢ²` (sum of squared eigenvalues). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variante07fdb5ba552308fd859248133464a2a3610d55521ff56716515a050ddd6e167.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c04c5ff371bf6b1ef722a0188a1740aeedd7ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
