# uniform_frontier_invariance_variable_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "060fc00795daa6a861d13a2e8cb22bd32ca85548",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a1cd690-094a-2dff-16fd-a21bbd1aba81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c347fd88-5ae5-0580-c256-cd9dbae0ba35",
  "kind": "theorem",
  "lexical_name": "uniform_frontier_invariance_variable_normalization",
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
  "slug": "uniform-frontier-invariance-variable-normalization--5a38ab8177cbf28408a21eeb",
  "source": {
    "blob": "060fc00795daa6a861d13a2e8cb22bd32ca85548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 262,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a38ab8177cbf28408a21eeb36898d71bc5dedfd7fe14fe4a1be4a094d537122",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c347fd88-5ae5-0580-c256-cd9dbae0ba35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_frontier_invariance_variable_normalization (F c : ℝ → ℝ)
    (m M K R : ℝ) (hm : 0 < m) (hmM : m ≤ M) (hK : 0 ≤ K) (hR : 1 ≤ R)
    (h : ∀ A : ℝ, R ≤ A → m ≤ c A ∧ c A ≤ M ∧
      |F A - c A * sourceDiscrepancyValue A| ≤ K) :
    UniformTailUpperBound F ↔ PrimeSquareCompensationTail :=
  (uniform_tail_upper_bound_iff_of_variable_normalization c m M K R hm hmM hK hR h).symm.trans
    discrepancy_tail_iff_prime_square_compensation

/-- The actual source normalization is bounded above and uniformly away from zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleFrontierInvariance/Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `060fc00795daa6a861d13a2e8cb22bd32ca85548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
