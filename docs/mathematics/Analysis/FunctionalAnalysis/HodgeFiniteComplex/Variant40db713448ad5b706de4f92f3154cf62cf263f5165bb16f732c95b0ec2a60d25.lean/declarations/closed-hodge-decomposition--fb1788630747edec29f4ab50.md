# closed_hodge_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:179a6407-1daf-565d-17f0-add90fa60bb1",
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
  "slug": "closed-hodge-decomposition--fb1788630747edec29f4ab50",
  "source": {
    "blob": "264b6ab29153a11c994032772b1df861d316b227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1788630747edec29f4ab50d99683cca3e68f4ad4e86e7995508196dfbde786",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179a6407-1daf-565d-17f0-add90fa60bb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264b6ab29153a11c994032772b1df861d316b227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
