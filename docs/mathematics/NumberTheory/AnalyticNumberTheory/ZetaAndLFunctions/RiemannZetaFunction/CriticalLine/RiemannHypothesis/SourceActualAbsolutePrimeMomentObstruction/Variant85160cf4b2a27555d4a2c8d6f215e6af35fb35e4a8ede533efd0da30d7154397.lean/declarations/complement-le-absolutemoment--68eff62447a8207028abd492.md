# complement_le_absoluteMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e34d0984-a971-d0ac-227f-2c132fe7e2d4",
  "kind": "theorem",
  "lexical_name": "complement_le_absoluteMoment",
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
  "slug": "complement-le-absolutemoment--68eff62447a8207028abd492",
  "source": {
    "blob": "1cfb37d341d9c7beb201ce98a17e9281ada55336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68eff62447a8207028abd49265459042c994fba2f2c3ffe9c3a5e3dab113b396",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e34d0984-a971-d0ac-227f-2c132fe7e2d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem complement_le_absoluteMoment (A : ℝ) :
    actualNegativeEdgeComplement A ≤ actualClosedAbsolutePrimeMoment A := by
  unfold actualNegativeEdgeComplement actualClosedAbsolutePrimeMoment
  calc
    _ ≤ |∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
        vonMangoldt n * closedPrimeWeight A n| := le_abs_self _
    _ ≤ ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
        |vonMangoldt n * closedPrimeWeight A n| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset
      (fun _ _ _ => abs_nonneg _)

/-- The actual full absolute inventory has at least the same genuine exponential growth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cfb37d341d9c7beb201ce98a17e9281ada55336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
