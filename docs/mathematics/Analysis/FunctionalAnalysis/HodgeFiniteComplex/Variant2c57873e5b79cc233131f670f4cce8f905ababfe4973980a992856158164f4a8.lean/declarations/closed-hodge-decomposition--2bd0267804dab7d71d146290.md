# closed_hodge_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82c1fa56-c7d2-0b43-37e7-d0e74bafc627",
  "kind": "theorem",
  "lexical_name": "closed_hodge_decomposition",
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
  "slug": "closed-hodge-decomposition--2bd0267804dab7d71d146290",
  "source": {
    "blob": "119610a284c38f3b844ea009c3e71df2dac341ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd0267804dab7d71d146290a13f61c52408ea06db55dbed3d2000d88fc42255",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c1fa56-c7d2-0b43-37e7-d0e74bafc627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_hodge_decomposition (D : E₀ →ₗ[ℝ] E₁) (F : E₁ →ₗ[ℝ] E₂)
    (hcomplex : F.comp D = 0) (a : E₁) (ha : F a = 0) :
    ∃ b : E₀, b ∈ D.kerᗮ ∧ a = D b + harmonicPart D a ∧
      F (harmonicPart D a) = 0 ∧ D.adjoint (harmonicPart D a) = 0 := by
  obtain ⟨b, hb, hd⟩ := exists_gauge_decomposition D a
  exact ⟨b, hb, hd, harmonicPart_closed D F hcomplex a ha, harmonicPart_adjoint D a⟩

omit [FiniteDimensional ℝ E₁] in
/-- A proved positive spectral gap prices the exact kernel-complement gauge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `119610a284c38f3b844ea009c3e71df2dac341ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
