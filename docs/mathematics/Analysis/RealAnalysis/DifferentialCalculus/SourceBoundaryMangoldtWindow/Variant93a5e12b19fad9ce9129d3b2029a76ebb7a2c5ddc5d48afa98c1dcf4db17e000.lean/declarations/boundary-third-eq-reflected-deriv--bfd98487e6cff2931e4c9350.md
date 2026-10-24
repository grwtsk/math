# boundary_third_eq_reflected_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "356b4aec508f1fbafeabcf5c134e0172aaef99b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93a5e12b19fad9ce9129d3b2029a76ebb7a2c5ddc5d48afa98c1dcf4db17e000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa46ff0-5584-b84c-49b4-359019fef795",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71e411fc-5b96-c83f-a1a3-0f0b9db82fb5",
  "kind": "theorem",
  "lexical_name": "boundary_third_eq_reflected_deriv",
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
  "slug": "boundary-third-eq-reflected-deriv--bfd98487e6cff2931e4c9350",
  "source": {
    "blob": "356b4aec508f1fbafeabcf5c134e0172aaef99b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant93a5e12b19fad9ce9129d3b2029a76ebb7a2c5ddc5d48afa98c1dcf4db17e000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd98487e6cff2931e4c9350a5608dbe5578199550f16a8d6e3f6389a92a9549",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant93a5e12b19fad9ce9129d3b2029a76ebb7a2c5ddc5d48afa98c1dcf4db17e000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71e411fc-5b96-c83f-a1a3-0f0b9db82fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundary_third_eq_reflected_deriv {A : ℝ}
    (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (boundaryPeano A))) y =
      -peanoScale A * deriv (criticalPrimeTest A) (2 * A - y) := by
  have he : deriv (deriv (boundaryPeano A)) =
      fun z => peanoScale A * criticalPrimeTest A (2 * A - z) :=
    funext (boundary_second_eq_reflected_test hA)
  have hg := ((criticalPrimeTest_contDiff A hA).differentiable
    (by norm_num) (2 * A - y)).hasDerivAt
  have hc : HasDerivAt (fun z : ℝ => 2 * A - z) (-1) y := by
    simpa only [id_eq] using (hasDerivAt_id y).const_sub (2 * A)
  have hd := (hg.comp y hc).const_mul (peanoScale A)
  rw [he]
  exact (hd.congr_deriv (by ring)).deriv

/-- Exact reflection of the actual finite Abel window retains its endpoint centering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant93a5e12b19fad9ce9129d3b2029a76ebb7a2c5ddc5d48afa98c1dcf4db17e000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBoundaryMangoldtWindow/Variant93a5e12b19fad9ce9129d3b2029a76ebb7a2c5ddc5d48afa98c1dcf4db17e000.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `356b4aec508f1fbafeabcf5c134e0172aaef99b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
