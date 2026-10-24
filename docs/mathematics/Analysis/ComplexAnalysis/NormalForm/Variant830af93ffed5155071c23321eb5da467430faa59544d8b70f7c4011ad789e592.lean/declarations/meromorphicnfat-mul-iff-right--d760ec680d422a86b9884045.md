# meromorphicNFAt_mul_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51588c75-756b-1bc7-7d16-0cac678ba864",
  "kind": "theorem",
  "lexical_name": "meromorphicNFAt_mul_iff_right",
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
  "slug": "meromorphicnfat-mul-iff-right--d760ec680d422a86b9884045",
  "source": {
    "blob": "6eb19e8cec95b101020b7e6f35cc4c2fea2ab545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 263,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d760ec680d422a86b9884045b80ba940ebc418acb4ba44cb4c67e5f06223eca3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51588c75-756b-1bc7-7d16-0cac678ba864`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicNFAt_mul_iff_right {f : 𝕜 → 𝕜} (h₁g : AnalyticAt 𝕜 g x)
    (h₂g : g x ≠ 0) :
    MeromorphicNFAt (g * f) x ↔ MeromorphicNFAt f x :=
  meromorphicNFAt_smul_iff_right_of_analyticAt h₁g h₂g

/-- If `f` is any function and `g` is analytic without zero at `z₀`, then `f` is meromorphic in
normal form at `z₀` iff `f * g` is meromorphic in normal form at `z₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb19e8cec95b101020b7e6f35cc4c2fea2ab545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
