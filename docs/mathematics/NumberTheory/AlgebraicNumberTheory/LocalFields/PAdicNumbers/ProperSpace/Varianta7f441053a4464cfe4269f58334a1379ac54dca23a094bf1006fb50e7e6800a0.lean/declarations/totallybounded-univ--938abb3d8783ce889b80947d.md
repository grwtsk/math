# totallyBounded_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb00fab29256b42c3f25abaec07578cfc17ae816",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7f441053a4464cfe4269f58334a1379ac54dca23a094bf1006fb50e7e6800a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4fb0750-57c9-bd35-a969-51396505b2f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09b71408-32d7-f616-ca15-686d2286044d",
  "kind": "theorem",
  "lexical_name": "totallyBounded_univ",
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
  "slug": "totallybounded-univ--938abb3d8783ce889b80947d",
  "source": {
    "blob": "bb00fab29256b42c3f25abaec07578cfc17ae816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Varianta7f441053a4464cfe4269f58334a1379ac54dca23a094bf1006fb50e7e6800a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:938abb3d8783ce889b80947df502d0d581f7fc7ed30b08ad63e161a634f784f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Varianta7f441053a4464cfe4269f58334a1379ac54dca23a094bf1006fb50e7e6800a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09b71408-32d7-f616-ca15-686d2286044d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totallyBounded_univ : TotallyBounded (Set.univ : Set ℤ_[p]) := by
  refine Metric.totallyBounded_iff.mpr (fun ε hε ↦ ?_)
  obtain ⟨k, hk⟩ := exists_pow_neg_lt p hε
  refine ⟨Nat.cast '' Finset.range (p ^ k), Set.toFinite _, fun z _ ↦ ?_⟩
  simp only [PadicInt, Set.mem_iUnion, Metric.mem_ball, exists_prop, Set.exists_mem_image]
  refine ⟨z.appr k, ?_, ?_⟩
  · simpa only [Finset.mem_coe, Finset.mem_range] using z.appr_lt k
  · exact (((z - z.appr k).norm_le_pow_iff_mem_span_pow k).mpr (z.appr_spec k)).trans_lt hk

/-- The set of p-adic integers `ℤ_[p]` is a compact topological space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Varianta7f441053a4464cfe4269f58334a1379ac54dca23a094bf1006fb50e7e6800a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Varianta7f441053a4464cfe4269f58334a1379ac54dca23a094bf1006fb50e7e6800a0.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb00fab29256b42c3f25abaec07578cfc17ae816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
