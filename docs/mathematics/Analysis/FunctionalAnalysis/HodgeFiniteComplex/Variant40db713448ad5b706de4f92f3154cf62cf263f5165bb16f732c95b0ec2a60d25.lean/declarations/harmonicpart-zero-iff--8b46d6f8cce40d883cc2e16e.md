# harmonicPart_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:924cc86f-4f10-33b6-da91-ea43309c6cec",
  "kind": "theorem",
  "lexical_name": "harmonicPart_zero_iff",
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
  "slug": "harmonicpart-zero-iff--8b46d6f8cce40d883cc2e16e",
  "source": {
    "blob": "264b6ab29153a11c994032772b1df861d316b227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b46d6f8cce40d883cc2e16edd207ad43edb60e743b02c56e3f9f9780ddcc139",
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

Occurrence: `result:924cc86f-4f10-33b6-da91-ea43309c6cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicPart_zero_iff (D : E₀ →ₗ[ℝ] E₁) (a : E₁) :
    harmonicPart D a = 0 ↔ ∃ b : E₀, D b = a := by
  rw [harmonicPart, sub_eq_zero, eq_comm, Submodule.starProjection_eq_self_iff]
  rfl

omit [FiniteDimensional ℝ E₁] in
/-- Every cochain has a boundary plus harmonic residual, with the boundary
preimage in the orthogonal complement of the actual kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant40db713448ad5b706de4f92f3154cf62cf263f5165bb16f732c95b0ec2a60d25.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264b6ab29153a11c994032772b1df861d316b227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
