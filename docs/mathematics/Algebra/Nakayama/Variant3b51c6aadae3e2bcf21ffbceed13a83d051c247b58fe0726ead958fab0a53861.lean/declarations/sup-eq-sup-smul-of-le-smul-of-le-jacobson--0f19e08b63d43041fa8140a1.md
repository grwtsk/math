# sup_eq_sup_smul_of_le_smul_of_le_jacobson

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
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9edd9032-5e8f-3a3f-c8d2-7d511827d875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ced00af1-ae0a-6ae0-5165-b60145922a59",
  "kind": "theorem",
  "lexical_name": "sup_eq_sup_smul_of_le_smul_of_le_jacobson",
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
  "slug": "sup-eq-sup-smul-of-le-smul-of-le-jacobson--0f19e08b63d43041fa8140a1",
  "source": {
    "blob": "5c51814e0230cbe033b9580d49bf33118a973db6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 122,
    "path": "GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f19e08b63d43041fa8140a1abe172c77b7e52ed571508225fd5cf344b19bd54",
  "verification": {
    "reference": "docs/verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced00af1-ae0a-6ae0-5165-b60145922a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_eq_sup_smul_of_le_smul_of_le_jacobson {I J : Ideal R} {N N' : Submodule R M}
    (hN' : N'.FG) (hIJ : I ≤ jacobson J) (hNN : N' ≤ N ⊔ I • N') : N ⊔ N' = N ⊔ J • N' := by
  have hNN' : N ⊔ N' = N ⊔ I • N' :=
    le_antisymm (sup_le le_sup_left hNN)
    (sup_le_sup_left (Submodule.smul_le.2 fun _ _ _ => Submodule.smul_mem _ _) _)
  have h_comap :=
    comap_injective_of_surjective (LinearMap.range_eq_top.1 N.range_mkQ)
  have : (I • N').map N.mkQ = N'.map N.mkQ := by
    simpa only [← h_comap.eq_iff, comap_map_mkQ, sup_comm, eq_comm] using hNN'
  have :=
    @Submodule.eq_smul_of_le_smul_of_le_jacobson _ _ _ _ _ I J (N'.map N.mkQ) (hN'.map _)
      (by rw [← map_smul'', this]) hIJ
  rwa [← map_smul'', ← h_comap.eq_iff, comap_map_eq, comap_map_eq, Submodule.ker_mkQ, sup_comm,
    sup_comm (b := N)] at this

/-- **Nakayama's Lemma** - A slightly more general version of (4) in
[Stacks 00DV](https://stacks.math.columbia.edu/tag/00DV).
See also `smul_le_of_le_smul_of_le_jacobson_bot` for the special case when `J = ⊥`. -/
@[stacks 00DV "(4)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nakayama/Variant3b51c6aadae3e2bcf21ffbceed13a83d051c247b58fe0726ead958fab0a53861.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c51814e0230cbe033b9580d49bf33118a973db6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
