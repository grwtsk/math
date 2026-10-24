# summable_real_of_abs_bound_by_posWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a22cacd-4ae2-c739-6ae8-6877936d3045",
  "kind": "theorem",
  "lexical_name": "summable_real_of_abs_bound_by_posWeight",
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
  "slug": "summable-real-of-abs-bound-by-posweight--7e315a80086dc17d36a44a0c",
  "source": {
    "blob": "95acf1a9996ce9c2404a2828e2f04073ddbb2282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e315a80086dc17d36a44a0c361009eb454d9aab7e6fee9ef7199414c67aafd8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a22cacd-4ae2-c739-6ae8-6877936d3045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_real_of_abs_bound_by_posWeight
    (a : Nat → Real)
    {σ C : Real}
    (hσ : 1 < σ)
    (_hC : 0 ≤ C)
    (hbound : ∀ n, |a n| ≤ C * posWeightReal σ n) :
    Summable a := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal σ n :=
    (summable_posWeightReal_of_one_lt hσ).mul_left C
  exact Summable.of_norm_bounded hmajor (by simpa [Real.norm_eq_abs] using hbound)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant401a52c3f44802cf3556527ee2571d557a07f95a02db6d3ab4722c3150e5283f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95acf1a9996ce9c2404a2828e2f04073ddbb2282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
