# p_ratio_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2df039069937fbffb3ff40f74e7d1fdd38b5b261",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2660fcf6ce11465589c1d4eb8b107f5ec6266c3117f4743a1546c19c170d94c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89bf954f-52b1-6e5c-7652-71527754121a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75851e63-81c9-f211-5586-5693e6dd460e",
  "kind": "theorem",
  "lexical_name": "p_ratio_tendsto",
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
  "slug": "p-ratio-tendsto--a4935e52be60e96109f35774",
  "source": {
    "blob": "2df039069937fbffb3ff40f74e7d1fdd38b5b261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variante2660fcf6ce11465589c1d4eb8b107f5ec6266c3117f4743a1546c19c170d94c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4935e52be60e96109f3577468149f31a14d86ff6beddeb4b5f9a7dbf59fbc07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variante2660fcf6ce11465589c1d4eb8b107f5ec6266c3117f4743a1546c19c170d94c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75851e63-81c9-f211-5586-5693e6dd460e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem p_ratio_tendsto (z : ℝ) :
    Tendsto (fun A : ℝ => p (A*z)/A^4) atTop (𝓝 (z^4)) := by
  have h1 : Tendsto (fun A : ℝ => 1/A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  have h2 := h1.pow 2
  have h3 := h1.pow 3
  have h4 := h1.pow 4
  have ht := (((tendsto_const_nhds.sub (h1.const_mul (10*z^3))).add
    (h2.const_mul (45*z^2))).sub (h3.const_mul (105*z))).add (h4.const_mul 105)
  have he : (fun A : ℝ => p (A*z)/A^4) =ᶠ[atTop]
    (fun A : ℝ => z^4-(10*z^3)*(1/A)+(45*z^2)*(1/A)^2-(105*z)*(1/A)^3+105*(1/A)^4) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [p_ratio A z hA.ne']; field_simp; ring
  apply Tendsto.congr' he.symm
  simpa using ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variante2660fcf6ce11465589c1d4eb8b107f5ec6266c3117f4743a1546c19c170d94c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variante2660fcf6ce11465589c1d4eb8b107f5ec6266c3117f4743a1546c19c170d94c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df039069937fbffb3ff40f74e7d1fdd38b5b261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
