# centeredErrorWork_abs_le_localized_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7de969ac5c1f33335cb8522b5c828042205beed4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1af7104a-582c-e879-c4b9-7aaa60fcc25f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:891ea7e9-78c4-6b53-d31d-e91bdf555a69",
  "kind": "theorem",
  "lexical_name": "centeredErrorWork_abs_le_localized_mass",
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
  "slug": "centerederrorwork-abs-le-localized-mass--c5b9d070581d212e505641ab",
  "source": {
    "blob": "7de969ac5c1f33335cb8522b5c828042205beed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5b9d070581d212e505641ab1c7aa63ee630f52ad10372aecfa749eb2e026d92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:891ea7e9-78c4-6b53-d31d-e91bdf555a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredErrorWork_abs_le_localized_mass (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A offset * columnEnvelopeMass A := by
  let l := Real.log (vaughanCutoff A : ℝ)
  by_cases hL : l ≤ actualJointSupportUpper A
  · rw [centeredErrorWork_eq_support_integral A offset hA]
    simpa only [localizedCenteredErrorExpMass, max_eq_right hL] using
      actual_centered_work_window_abs_le_mass A offset l
        (actualJointSupportUpper A) hA hL
  · rw [centeredErrorWork_zero_of_support_le_lower A offset hA (le_of_not_ge hL)]
    simp only [abs_zero, localizedCenteredErrorExpMass,
      max_eq_left (le_of_not_ge hL), intervalIntegral.integral_same, mul_zero, zero_mul, le_refl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de969ac5c1f33335cb8522b5c828042205beed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
