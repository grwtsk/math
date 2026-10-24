# literal_prefix_maximum_uniform_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a145744-66b8-5693-0acc-f71a9e35d012",
  "kind": "theorem",
  "lexical_name": "literal_prefix_maximum_uniform_deficit",
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
  "slug": "literal-prefix-maximum-uniform-deficit--867b040701d85fc0ad969a49",
  "source": {
    "blob": "3d15a089152649edd651b7f43ca63236ee1a75e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867b040701d85fc0ad969a49b7f620aff4b54d8083d862cbafbfa1d95d30cd37",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a145744-66b8-5693-0acc-f71a9e35d012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_prefix_maximum_uniform_deficit {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) :
    ∃ k : ℝ, 0 < k ∧ ∀ T : ℝ, 1 ≤ T → t₀ ≤ T →
      k/T^2 ≤ 2-prefixMaximum α t₀ T := by
  obtain ⟨k,hk,hbound⟩ := literal_badly_approximable_prefix_deficit hα ht₀
  refine ⟨k,hk,?_⟩
  intro T hT1 hT
  obtain ⟨s,hs,he,_hmax⟩ := literal_prefix_maximum_attained α hT
  rw [he]
  exact hbound T hT1 s hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalTwoModeRecords/Variant746d1dc9dbea09b2ca85509d0b5184c5e26e0a4d23c218e7369d109821333858.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d15a089152649edd651b7f43ca63236ee1a75e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
