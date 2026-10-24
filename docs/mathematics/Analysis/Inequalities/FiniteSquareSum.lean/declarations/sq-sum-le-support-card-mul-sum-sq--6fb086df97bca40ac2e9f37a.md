# sq_sum_le_support_card_mul_sum_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21077267-5ae0-ffe6-f647-e89ffa2509d6",
  "kind": "theorem",
  "lexical_name": "sq_sum_le_support_card_mul_sum_sq",
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
  "slug": "sq-sum-le-support-card-mul-sum-sq--6fb086df97bca40ac2e9f37a",
  "source": {
    "blob": "9922916c382300bf727104526cd5bacd59f1c8fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/Analysis/Inequalities/FiniteSquareSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fb086df97bca40ac2e9f37a2c9c7a2f7198575e19337f6a2b8caeb7fb292534",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/FiniteSquareSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21077267-5ae0-ffe6-f647-e89ffa2509d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_sum_le_support_card_mul_sum_sq {ι : Type*} [Fintype ι]
    (f : ι → ℝ) :
    (∑ i, f i) ^ 2 ≤ (Fintype.card {i // f i ≠ 0} : ℝ) * ∑ i, f i ^ 2 := by
  classical
  let s := Finset.univ.filter (fun i => f i ≠ 0)
  have hsum : ∑ i ∈ s, f i = ∑ i, f i := by
    exact Finset.sum_filter_ne_zero _
  have hsq : ∑ i ∈ s, f i ^ 2 = ∑ i, f i ^ 2 := by
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro i hi his
    have hf : f i = 0 := by simpa [s] using his
    simp [hf]
  have h := sq_sum_le_card_mul_sum_sq (s := s) (f := f)
  simpa only [hsum, hsq, Fintype.card_subtype] using h

end GRWTSK.Analysis.FiniteSquareSum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/FiniteSquareSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/FiniteSquareSum.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9922916c382300bf727104526cd5bacd59f1c8fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
