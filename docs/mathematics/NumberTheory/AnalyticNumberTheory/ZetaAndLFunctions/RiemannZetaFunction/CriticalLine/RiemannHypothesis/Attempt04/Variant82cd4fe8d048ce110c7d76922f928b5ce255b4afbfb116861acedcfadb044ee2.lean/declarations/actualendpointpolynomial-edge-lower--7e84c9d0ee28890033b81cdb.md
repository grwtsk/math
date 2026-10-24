# actualEndpointPolynomial_edge_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1922550f-d880-d743-76aa-3bad4c9ca6fd",
  "kind": "theorem",
  "lexical_name": "actualEndpointPolynomial_edge_lower",
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
  "slug": "actualendpointpolynomial-edge-lower--7e84c9d0ee28890033b81cdb",
  "source": {
    "blob": "f2c8f77ae13589eb90a0aa581e38d2c8c5749faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant82cd4fe8d048ce110c7d76922f928b5ce255b4afbfb116861acedcfadb044ee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e84c9d0ee28890033b81cdb349c663d3b6cd0148428ab93dd38045a478e09d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant82cd4fe8d048ce110c7d76922f928b5ce255b4afbfb116861acedcfadb044ee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1922550f-d880-d743-76aa-3bad4c9ca6fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEndpointPolynomial_edge_lower {A r : ℝ} (hA : 91 ≤ A)
    (hr : 0 ≤ r) (hr1 : r ≤ 1) :
    100 * r ^ 2 ≤ endpointPolynomial A r := by
  obtain ⟨hq0, hq1⟩ := edge_coordinate_bounds hA hr hr1
  have hs0 : 9 / 10 ≤ 1 - r / A := by linarith
  have hs1 : 1 - r / A ≤ 1 := by linarith
  have hv0 : 19 / 10 ≤ 2 - r / A := by linarith
  have hv1 : 2 - r / A ≤ 2 := by linarith
  have hs2 : 81 / 100 ≤ (1 - r / A) ^ 2 := by nlinarith
  have hv2 : 361 / 100 ≤ (2 - r / A) ^ 2 := by nlinarith
  have hv4 : (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hr2 : r ^ 2 ≤ 1 := by nlinarith
  have hg : r ^ 2 * (2 - r / A) ^ 2 ≤ 4 := by nlinarith
  have hb : 36 ≤ 8 * (7 * (1 - r / A) ^ 2 - 1) -
      r ^ 2 * (2 - r / A) ^ 2 / 4 := by nlinarith
  have hm := mul_le_mul hv2 hb (by norm_num : (0 : ℝ) ≤ 36)
    (sq_nonneg (2 - r / A))
  have hh : 100 ≤ (2 - r / A) ^ 2 *
      (8 * (7 * (1 - r / A) ^ 2 - 1) - r ^ 2 * (2 - r / A) ^ 2 / 4) := by
    nlinarith
  have hf := mul_le_mul_of_nonneg_left hh (sq_nonneg r)
  unfold endpointPolynomial
  nlinarith

/-- The ordinary endpoint derivative has its genuine positive edge slope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant82cd4fe8d048ce110c7d76922f928b5ce255b4afbfb116861acedcfadb044ee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant82cd4fe8d048ce110c7d76922f928b5ce255b4afbfb116861acedcfadb044ee2.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c8f77ae13589eb90a0aa581e38d2c8c5749faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
