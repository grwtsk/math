# x_log_x_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53269e53-e37b-4897-f298-b189cd11e624",
  "kind": "lemma",
  "lexical_name": "x_log_x_atTop",
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
  "slug": "x-log-x-attop--fc677e6e2ad4d21d9e6b3dc1",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1360,
    "line": 1342,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc677e6e2ad4d21d9e6b3dc18ca61b070ca6cc7de3bf2383ad14066e75f458de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53269e53-e37b-4897-f298-b189cd11e624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1342–1360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma x_log_x_atTop : Filter.Tendsto (fun x => x / Real.log x) Filter.atTop Filter.atTop := by
  have inv_log_x_div := Filter.Tendsto.comp (f := fun x => Real.log x / x) (g := fun x => x⁻¹)
    (x := Filter.atTop) (y := (nhdsWithin 0 (Set.Ioi 0))) (z := Filter.atTop) ?_ ?_
  · simp_rw [Function.comp_def, inv_div] at inv_log_x_div
    exact inv_log_x_div
  · exact tendsto_inv_nhdsGT_zero (𝕜 := ℝ)
  · rw [tendsto_nhdsWithin_iff]
    refine ⟨?_, ?_⟩
    · have log_div_x := Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by simp)
      simp only [pow_one, one_mul, add_zero] at log_div_x
      exact log_div_x
    · simp only [Set.mem_Ioi, eventually_atTop, ge_iff_le]
      use 2
      intro x hx
      have log_pos: 0 < Real.log x := by
        refine (Real.log_pos_iff ?_).mpr ?_ <;> linarith
      positivity


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L1342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
