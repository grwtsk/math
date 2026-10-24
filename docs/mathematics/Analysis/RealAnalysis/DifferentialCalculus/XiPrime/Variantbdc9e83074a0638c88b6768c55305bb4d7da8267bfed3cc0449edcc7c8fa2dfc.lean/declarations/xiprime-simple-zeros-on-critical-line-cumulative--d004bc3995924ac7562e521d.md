# xiPrime_simple_zeros_on_critical_line_cumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "631c0a3302b20c512f8e41bddba51cebd6a701a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:892c3319-b0c9-70e5-cca1-52563771f907",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9345369c-e629-2cad-58d2-3ed06a7c2ba4",
  "kind": "theorem",
  "lexical_name": "xiPrime_simple_zeros_on_critical_line_cumulative",
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
  "slug": "xiprime-simple-zeros-on-critical-line-cumulative--d004bc3995924ac7562e521d",
  "source": {
    "blob": "631c0a3302b20c512f8e41bddba51cebd6a701a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d004bc3995924ac7562e521dc6857e2608539b8342a6e585ea73bbaa509ac04b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9345369c-e629-2cad-58d2-3ed06a7c2ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiPrime_simple_zeros_on_critical_line_cumulative :
    ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (0.85838 : ℝ) * (XiPrime.Ncount 0 T : ℝ) ≤ (XiPrime.N0simple 0 T : ℝ) ∧
      (0.92919 : ℝ) * (XiPrime.Ncount 0 T : ℝ) ≤ (XiPrime.Ndist 0 T : ℝ) := by
  sorry

/-- the same with the near-optimal quartic window: **at least 86.864% simple and on the critical line, at least 93.432%
distinct**, for all large T, zeros of ξ′ with T < Im ρ ≤ 2T counted with multiplicity in the denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631c0a3302b20c512f8e41bddba51cebd6a701a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
