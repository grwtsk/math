# restrictedDerivativePairing_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e359857a2f9b2330a5c0012001ec5cc409397275",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd4d2918-b906-0aa9-275d-b1f2a2ddba13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e87c4ad5-d9a4-a79c-83c5-4342c2e676ad",
  "kind": "theorem",
  "lexical_name": "restrictedDerivativePairing_abs_le_coefficient",
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
  "slug": "restrictedderivativepairing-abs-le-coefficient--6faf43fde5f219b39bbaa396",
  "source": {
    "blob": "e359857a2f9b2330a5c0012001ec5cc409397275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6faf43fde5f219b39bbaa396a0cba8e3fa51865b927877995fa67f3f1f7956b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e87c4ad5-d9a4-a79c-83c5-4342c2e676ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictedDerivativePairing_abs_le_coefficient {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y : ℝ) :
    |restrictedDerivativePairing S A x y| ≤ 162826 / (7623 * A ^ 2) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  apply (restrictedDerivativePairing_abs_le_energy hp S x y).trans
  apply (le_div_iff₀ (by positivity : 0 < 7623 * A ^ 2)).2
  have henergy := actual_derivative_energy_upper hA
  nlinarith

/-- A disclosed spatial boundary kernel has an independent finite analytic budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedMixedPairing/Variantcf1406a0b6c56cde40b9805ffcd1bbfe90409ccf0160aabc51c297bd3e7ef877.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e359857a2f9b2330a5c0012001ec5cc409397275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
