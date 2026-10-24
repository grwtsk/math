# _root_.intervalIntegral.interval_add_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 608,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2233260a-7586-5740-892d-bf0b10435a5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a23c11c5-f3f3-9ef3-69fa-84ee4eba1848",
  "kind": "theorem",
  "lexical_name": "_root_.intervalIntegral.interval_add_Ioi",
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
  "slug": "root-intervalintegral-interval-add-ioi--0795e0bde20e542fafbc56be",
  "source": {
    "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 608,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0795e0bde20e542fafbc56bef88c46f3a8cc61251f7cbebc6f27fbffee12b4a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a23c11c5-f3f3-9ef3-69fa-84ee4eba1848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.intervalIntegral.interval_add_Ioi {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {a b : ℝ} {f : ℝ → E} {μ : Measure ℝ} (ha : IntegrableOn f (Set.Ioi a) μ)
    (hb : IntegrableOn f (Set.Ioi b) μ) :
    ∫ (x : ℝ) in a..b, f x ∂μ + ∫ (x : ℝ) in Set.Ioi b, f x ∂μ
    = ∫ (x : ℝ) in Set.Ioi a, f x ∂μ := by
  wlog hab : a ≤ b generalizing a b
  · rw [integral_symm, ← this hb ha (le_of_not_ge hab)]; grind
  rw [integral_of_le hab, ← setIntegral_union Set.Ioc_disjoint_Ioi_same measurableSet_Ioi
    (ha.mono_set Set.Ioc_subset_Ioi_self) hb, Set.Ioc_union_Ioi_eq_Ioi hab]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9055ac071fb1dff52c5bdf94a6cceb862831b174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
