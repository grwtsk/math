# jointMangoldtErrorWork_abs_le_explicit_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52925c2a-72c2-8415-09f6-169b037f290c",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_abs_le_explicit_envelope",
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
  "slug": "jointmangoldterrorwork-abs-le-explicit-envelope--d62665a0cb6b83e355f9b893",
  "source": {
    "blob": "5dd7c2e07fa4fe926a39451e7979c9672b7f83a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant1ae17e349e824f128a3c524a7dcb105c061b13f58c6f543f94b487cc6a252f22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d62665a0cb6b83e355f9b8937a7b38d8dc5bef78c36dc9ef4881750a4d0bf9ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant1ae17e349e824f128a3c524a7dcb105c061b13f58c6f543f94b487cc6a252f22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52925c2a-72c2-8415-09f6-169b037f290c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_abs_le_explicit_envelope (A : ℝ) (hA : 1 ≤ A) :
    |jointMangoldtErrorWork A| ≤
      4 * (Real.log 4 + 4 + Real.log 2) * A * Real.exp A *
        (162826 / (7623 * A ^ 2) + 1 / 4) := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have he0 := actualErrorExpMass_nonneg A hA
  have hw := jointMangoldtErrorWork_abs_le_mixed_mass A hA
  change |jointMangoldtErrorWork A| ≤ c * actualErrorExpMass A * columnEnvelopeMass A at hw
  calc
    _ ≤ c * actualErrorExpMass A * columnEnvelopeMass A := hw
    _ ≤ c * actualErrorExpMass A * (2 * A) :=
      mul_le_mul_of_nonneg_left (columnEnvelopeMass_le A hA) (mul_nonneg hc he0)
    _ ≤ c * (2 * (Real.log 4 + 4 + Real.log 2) * Real.exp A) * (2 * A) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (actualErrorExpMass_le A hA) hc) (by linarith)
    _ = _ := by ring

end FormalResearch.RiemannHypothesis.SourceActualMixedWorkExplicitEnvelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant1ae17e349e824f128a3c524a7dcb105c061b13f58c6f543f94b487cc6a252f22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2d12379e9ecd829b921fSourceActualMixedWorkExplicitEnvelope/Variant1ae17e349e824f128a3c524a7dcb105c061b13f58c6f543f94b487cc6a252f22.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd7c2e07fa4fe926a39451e7979c9672b7f83a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
