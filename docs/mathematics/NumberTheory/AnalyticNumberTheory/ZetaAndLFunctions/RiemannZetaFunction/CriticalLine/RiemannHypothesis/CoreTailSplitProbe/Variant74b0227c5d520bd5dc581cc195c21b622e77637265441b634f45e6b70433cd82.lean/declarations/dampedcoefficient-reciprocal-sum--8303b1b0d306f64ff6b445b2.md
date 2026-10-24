# dampedCoefficient_reciprocal_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6157cba4ee4f64760b80a2f84ea581bbe63f76f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74b0227c5d520bd5dc581cc195c21b622e77637265441b634f45e6b70433cd82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39d2b6b0-cb28-0fb8-1d8b-045e6a786bbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:832ca44e-cec3-eab8-2bb6-5455607b3e9b",
  "kind": "theorem",
  "lexical_name": "dampedCoefficient_reciprocal_sum",
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
  "slug": "dampedcoefficient-reciprocal-sum--8303b1b0d306f64ff6b445b2",
  "source": {
    "blob": "e6157cba4ee4f64760b80a2f84ea581bbe63f76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant74b0227c5d520bd5dc581cc195c21b622e77637265441b634f45e6b70433cd82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8303b1b0d306f64ff6b445b213e17b893eda7acdc1e8ff97df557894cf85df9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant74b0227c5d520bd5dc581cc195c21b622e77637265441b634f45e6b70433cd82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832ca44e-cec3-eab8-2bb6-5455607b3e9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCoefficient_reciprocal_sum (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) / (d : ℂ)) =
      correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  have he := dampedCoefficient_cpow_sum X ε (1 : ℂ) hX
  have hs : (1 : ℂ) - 1 / 2 + (ε : ℂ) = 1 / 2 + (ε : ℂ) := by ring
  rw [hs] at he
  simpa only [Complex.cpow_neg_one, div_eq_mul_inv] using he

/-- The complete actual arithmetic residual is linear below its first integer endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant74b0227c5d520bd5dc581cc195c21b622e77637265441b634f45e6b70433cd82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant74b0227c5d520bd5dc581cc195c21b622e77637265441b634f45e6b70433cd82.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6157cba4ee4f64760b80a2f84ea581bbe63f76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
