# IsWeaklyRegular.swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3583b436-985e-e078-67de-818bae2ee875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bbd35df-168f-21f5-d576-220e719caa45",
  "kind": "lemma",
  "lexical_name": "IsWeaklyRegular.swap",
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
  "slug": "isweaklyregular-swap--24c988f65bb7c07b7e28904e",
  "source": {
    "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 579,
    "path": "GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c988f65bb7c07b7e28904e8e5be788c4f71c94cb0c8691f3dde0c25771ce30",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bbd35df-168f-21f5-d576-220e719caa45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsWeaklyRegular.swap {a b : R} (h1 : IsWeaklyRegular M [a, b])
    (h2 : torsionBy R M b = a • torsionBy R M b → torsionBy R M b = ⊥) :
    IsWeaklyRegular M [b, a] := by
  rw [isWeaklyRegular_cons_iff, isWeaklyRegular_singleton_iff] at h1 ⊢
  obtain ⟨ha, hb⟩ := h1
  rw [← isSMulRegular_iff_torsionBy_eq_bot] at h2
  specialize h2 (le_antisymm ?_ (smul_le_self_of_tower a (torsionBy R M b)))
  · refine le_of_eq_of_le ?_ <| smul_top_inf_eq_smul_of_isSMulRegular_on_quot <|
      ha.of_injective _ <| ker_eq_bot.mp <| ker_liftQ_eq_bot' _ (lsmul R M b) rfl
    rw [← (isSMulRegular_on_quot_iff_lsmul_comap_eq _ _).mp hb]
    exact (inf_eq_right.mpr (ker_le_comap _)).symm
  · rwa [ha.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul, inf_comm, smul_comm,
      ← h2.isSMulRegular_on_quot_iff_smul_top_inf_eq_smul, and_iff_left hb]

-- TODO: Equivalence of permutability of regular sequences to regularity of
-- subsequences and regularity on poly ring. See [07DW] in stacks project
-- We need a theory of multivariate polynomial modules first

-- This is needed due to a bug in the linter
set_option linter.unusedVariables false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1aaf625255d71de95cd19457d1d5ccd67e8b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
