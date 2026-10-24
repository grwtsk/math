# xiReexpansion_eXi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91246a82-8cd7-b829-a33b-32495d594600",
  "kind": "theorem",
  "lexical_name": "xiReexpansion_eXi",
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
  "slug": "xireexpansion-exi--2851ecea2ec8e82e698d5db8",
  "source": {
    "blob": "ec8723a1c34f38dca23357c3d7bc138db9bd259a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variant11da40bd817e6424a5304e4ca1cb10293b8f3f05c63223fb9c609eb923a887cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2851ecea2ec8e82e698d5db87bea54ab7f457c0a0085d9a77c6e057ae4b80417",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variant11da40bd817e6424a5304e4ca1cb10293b8f3f05c63223fb9c609eb923a887cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91246a82-8cd7-b829-a33b-32495d594600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiReexpansion_eXi : ∃ ρ₀ A T₀ : ℝ, 0 ≤ ρ₀ ∧ Reexpansion xiCoeffFamily eXi ρ₀ A T₀ := by
  refine ⟨4, CF, T0re, by norm_num, ?_⟩
  exact
    { expand := fun T hT δ hδ N => by
        have hl := l_ge_of_T0re_le hT
        have hKe : 0 ≤ 128 * Real.exp 1 * KM := mul_nonneg (by positivity) KM_nonneg
        exact eGen_expand LT re_LT (T := T) (by linarith) hδ N
      e_one := fun T r => eGen_one LT T r
      H1 := fun T hT r _ x hx2 hxl => eGen_H1 LT re_LT hT r hx2 hxl
      H2 := fun T hT r _ x hx2 hxl => eGen_H2 LT re_LT hT r hx2 hxl
      H3 := fun T hT r _ x hx2 hxl => eGen_H3 LT re_LT hT r hx2 hxl }

/-- **Reexpansion for the ξ′ coefficient family**, in the ∃-e form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variant11da40bd817e6424a5304e4ca1cb10293b8f3f05c63223fb9c609eb923a887cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Reexpansion/Variant11da40bd817e6424a5304e4ca1cb10293b8f3f05c63223fb9c609eb923a887cb.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec8723a1c34f38dca23357c3d7bc138db9bd259a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
