# sum_cellMajorant_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a92ed0f36cab22f4a2b267676994a4109b8c7336",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:766058c5-10c7-870b-ef89-9cc269234fac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42212e12-9141-1f4c-f863-0c7fac266e91",
  "kind": "theorem",
  "lexical_name": "sum_cellMajorant_integrals",
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
  "slug": "sum-cellmajorant-integrals--58d3dbe1474d2cf4762e2a35",
  "source": {
    "blob": "a92ed0f36cab22f4a2b267676994a4109b8c7336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58d3dbe1474d2cf4762e2a3538459877425ad893d5863495f67a8424cde34eb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42212e12-9141-1f4c-f863-0c7fac266e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_cellMajorant_integrals (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x) =
      ∫ x in (1 : ℝ)..((N : ℝ) + 1), cellMajorant x := by
  have h := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun k : ℕ => (k : ℝ)) (m := 1) (n := N + 1) (by omega)
    (f := cellMajorant) (μ := volume) (fun k hk => by
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (Nat.zero_lt_of_lt hk.1)
      apply cellMajorant_intervalIntegrable hk0
      simp only [Nat.cast_add, Nat.cast_one]
      linarith)
  simpa only [Finset.Ico_add_one_right_eq_Icc, Nat.cast_add, Nat.cast_one] using h

/-- The sum covers every full cell without an infinite-series or depth hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Moments/Variant04d9e1f82fc56dc11a00df132a1be15f2c4d6fe9338c3f48e4a85c650807cf35.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a92ed0f36cab22f4a2b267676994a4109b8c7336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
