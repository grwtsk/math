# dampedCoefficient_reciprocal_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b732b630db3a6841abe3d835f9df84a85834dab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35562497d579b053c2543a3998f2041e331c04c8bedbe2e957ae2b0a391558bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c113f1e-535b-5941-d81c-d20e6724213f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6da9c2b9-0b20-94fe-d1d3-0b4f8411cbcb",
  "kind": "theorem",
  "lexical_name": "dampedCoefficient_reciprocal_sum",
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
  "slug": "dampedcoefficient-reciprocal-sum--c8a28625e86865f8eefb4e2e",
  "source": {
    "blob": "b732b630db3a6841abe3d835f9df84a85834dab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 11,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variant35562497d579b053c2543a3998f2041e331c04c8bedbe2e957ae2b0a391558bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8a28625e86865f8eefb4e2ef30232d718c592e88dc185dc136cfea40514cefc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variant35562497d579b053c2543a3998f2041e331c04c8bedbe2e957ae2b0a391558bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da9c2b9-0b20-94fe-d1d3-0b4f8411cbcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCoefficient_reciprocal_sum (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) / (d : ℂ)) =
      correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  have he := dampedCoefficient_cpow_sum X ε (1 : ℂ) hX
  have hs : (1 : ℂ) - 1 / 2 + (ε : ℂ) = 1 / 2 + (ε : ℂ) := by ring
  rw [hs] at he
  simpa only [Complex.cpow_neg_one, div_eq_mul_inv] using he

/-- The complete actual arithmetic residual is linear below its first integer endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variant35562497d579b053c2543a3998f2041e331c04c8bedbe2e957ae2b0a391558bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variant35562497d579b053c2543a3998f2041e331c04c8bedbe2e957ae2b0a391558bc.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b732b630db3a6841abe3d835f9df84a85834dab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
