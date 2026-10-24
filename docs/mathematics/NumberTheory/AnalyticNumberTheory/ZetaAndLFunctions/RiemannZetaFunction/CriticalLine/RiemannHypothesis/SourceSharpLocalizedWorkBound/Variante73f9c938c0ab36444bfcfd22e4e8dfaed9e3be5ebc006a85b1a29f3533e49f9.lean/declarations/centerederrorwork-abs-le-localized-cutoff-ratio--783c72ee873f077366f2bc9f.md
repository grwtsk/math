# centeredErrorWork_abs_le_localized_cutoff_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afbb2e0df92f50447b257fe883d935d95b5ae3bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a66d2f2-40a1-a4c1-d082-6fd6929c9048",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5cf180d-71cc-5c3e-5363-67ac7de9968c",
  "kind": "theorem",
  "lexical_name": "centeredErrorWork_abs_le_localized_cutoff_ratio",
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
  "slug": "centerederrorwork-abs-le-localized-cutoff-ratio--783c72ee873f077366f2bc9f",
  "source": {
    "blob": "afbb2e0df92f50447b257fe883d935d95b5ae3bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:783c72ee873f077366f2bc9fe724e6449551feac12e444e0b867ab20e27725e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5cf180d-71cc-5c3e-5363-67ac7de9968c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredErrorWork_abs_le_localized_cutoff_ratio
    (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤
      4 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) *
          ((vaughanCutoff A : ℝ) / ((vaughanCutoff A : ℝ) + 1)) := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  let C := Real.log 4 + 4 + Real.log 2 + |offset|
  let U : ℝ := vaughanCutoff A
  let a : ℝ := U + 1
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have ha : 0 < a := by dsimp only [a, U]; positivity
  have hs : Real.sqrt a ≠ 0 := (Real.sqrt_pos.2 ha).ne'
  have hm : localizedCenteredErrorExpMass A offset ≤ 2 * C * Real.exp A / Real.sqrt a := by
    simpa only [a, U, C, Nat.cast_add, Nat.cast_one] using
      localizedCenteredErrorExpMass_le A offset hA
  have hb : columnEnvelopeMass A ≤ 2 * U / Real.sqrt a :=
    columnEnvelopeMass_le_cutoff_ratio A hA
  calc
    _ ≤ c * localizedCenteredErrorExpMass A offset * columnEnvelopeMass A :=
      centeredErrorWork_abs_le_localized_mass A offset hA
    _ ≤ c * localizedCenteredErrorExpMass A offset * (2 * U / Real.sqrt a) :=
      mul_le_mul_of_nonneg_left hb
        (mul_nonneg hc (localizedCenteredErrorExpMass_nonneg A offset))
    _ ≤ c * (2 * C * Real.exp A / Real.sqrt a) * (2 * U / Real.sqrt a) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hm hc) (by positivity)
    _ = _ := by
      change c * (2 * C * Real.exp A / Real.sqrt a) * (2 * U / Real.sqrt a) =
        4 * C * Real.exp A * c * (U / a)
      have he : c * (2 * C * Real.exp A / Real.sqrt a) * (2 * U / Real.sqrt a) =
          4 * C * Real.exp A * c * (U / (Real.sqrt a * Real.sqrt a)) := by
        field_simp [hs]
        ring
      rw [he, Real.mul_self_sqrt ha.le]

/-- The unshifted original actual work inherits the same sharper source cutoff ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpLocalizedWorkBound/Variante73f9c938c0ab36444bfcfd22e4e8dfaed9e3be5ebc006a85b1a29f3533e49f9.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbb2e0df92f50447b257fe883d935d95b5ae3bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
