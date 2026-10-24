# sourceMobiusKernel_deriv_integrable_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f9a47b6-b593-4575-088f-7d958d4f8137",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c29a1707-75c3-dbb7-f1f5-56880e013771",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_deriv_integrable_full",
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
  "slug": "sourcemobiuskernel-deriv-integrable-full--bed865b26aa7949e603a2fff",
  "source": {
    "blob": "dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 492,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bed865b26aa7949e603a2fff94a64a22238e8d0fc98804247318f1f523633c1f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c29a1707-75c3-dbb7-f1f5-56880e013771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_deriv_integrable_full
    (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (deriv (sourceMobiusKernel A)) (Icc 1 (sourceUpper A)) := by
  have hc := (sourceMobiusKernel_contDiffOn_pos A (by linarith)).continuousOn_deriv_of_isOpen
    isOpen_Ioi (by norm_num)
  exact (hc.mono (fun x hx ↦ zero_lt_one.trans_le hx.1)).integrableOn_Icc

/-- Integrability of the exact full finite Mertens pairing is checked separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
