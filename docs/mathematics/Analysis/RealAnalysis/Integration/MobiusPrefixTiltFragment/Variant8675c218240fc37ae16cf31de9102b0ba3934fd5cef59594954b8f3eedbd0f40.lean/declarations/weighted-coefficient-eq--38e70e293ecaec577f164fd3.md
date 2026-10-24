# weighted_coefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf5006f62a44230e4a7294e58a9a42c550c6ba7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9681a500-5595-fcc1-90d8-c12b5994ac72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3cb56e5-d7b0-7876-d405-0f83c53fecf5",
  "kind": "theorem",
  "lexical_name": "weighted_coefficient_eq",
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
  "slug": "weighted-coefficient-eq--38e70e293ecaec577f164fd3",
  "source": {
    "blob": "bf5006f62a44230e4a7294e58a9a42c550c6ba7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38e70e293ecaec577f164fd3565ca4754917cf2b596e4ca7f421da9d7b9ed9e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3cb56e5-d7b0-7876-d405-0f83c53fecf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_coefficient_eq (z : ℂ) (n : ℕ) (hn : 1 ≤ n) :
    powerWeight z (n : ℝ) * reciprocalCoefficient n =
      (ArithmeticFunction.moebius n : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have he : Complex.exp (-(Real.log (n : ℝ) : ℂ)) = (n : ℂ)⁻¹ := by
    rw [← Complex.ofReal_neg, ← Complex.ofReal_exp, Real.exp_neg,
      Real.exp_log hn0, Complex.ofReal_inv]
    rfl
  unfold powerWeight reciprocalCoefficient
  simp only [div_eq_mul_inv]
  rw [← he]
  calc
    _ = (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp ((1 / 2 - z) * (Real.log (n : ℝ) : ℂ)) *
        Complex.exp (-(Real.log (n : ℝ) : ℂ))) := by ring
    _ = _ := by
      rw [← Complex.exp_add]
      congr 2
      ring

/-- Exact finite complex Abel transport retains the endpoint and every signed coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5006f62a44230e4a7294e58a9a42c550c6ba7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
