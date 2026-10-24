# actual_normalized_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f39bf8d-c6fb-bb7a-2c85-758c18d349c5",
  "kind": "theorem",
  "lexical_name": "actual_normalized_even",
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
  "slug": "actual-normalized-even--2a1f9bb9483a03f927ebbdf8",
  "source": {
    "blob": "b92e1e9b9ca91b6d403f9ef78a567f84d0fc9d6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dictionary02/Variantbf05e72cf82e514417fb7c4676c13bcf2304aca4bb504138f290e47dcdc8355d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a1f9bb9483a03f927ebbdf85e1a984e85da04714c04c1fca91b119e9ae5517f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dictionary02/Variantbf05e72cf82e514417fb7c4676c13bcf2304aca4bb504138f290e47dcdc8355d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f39bf8d-c6fb-bb7a-2c85-758c18d349c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_even (A : ℝ) (hA : 1 ≤ A) :
    Function.Even (normalizedTest explicitSecondDerivative A) := by
  intro x
  rw [normalizedTest_eq_indicator A (by linarith)]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by simp only [mem_Icc]; constructor <;> intro h <;> constructor <;> linarith [h.1,h.2]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem (hm.mpr hx),indicator_of_mem hx]
    simp [normalizedInterior,secondInterior,bumpInterior,neg_div]
  · rw [indicator_of_notMem (fun h => hx (hm.mp h)),indicator_of_notMem hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dictionary02/Variantbf05e72cf82e514417fb7c4676c13bcf2304aca4bb504138f290e47dcdc8355d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dictionary02/Variantbf05e72cf82e514417fb7c4676c13bcf2304aca4bb504138f290e47dcdc8355d.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92e1e9b9ca91b6d403f9ef78a567f84d0fc9d6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
