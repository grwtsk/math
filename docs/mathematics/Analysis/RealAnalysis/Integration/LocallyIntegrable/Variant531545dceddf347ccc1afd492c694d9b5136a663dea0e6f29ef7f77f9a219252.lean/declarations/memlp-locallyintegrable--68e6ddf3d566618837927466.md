# MemLp.locallyIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc5c3b14-015f-5bd2-435d-bc052c4e0723",
  "kind": "theorem",
  "lexical_name": "MemLp.locallyIntegrable",
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
  "slug": "memlp-locallyintegrable--68e6ddf3d566618837927466",
  "source": {
    "blob": "88fca606a67b4b3d14794fc42980aa6fa98a3c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant531545dceddf347ccc1afd492c694d9b5136a663dea0e6f29ef7f77f9a219252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68e6ddf3d56661883792746675015999386dbb3b95e1b4acb77e308197daafc0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant531545dceddf347ccc1afd492c694d9b5136a663dea0e6f29ef7f77f9a219252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc5c3b14-015f-5bd2-435d-bc052c4e0723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.locallyIntegrable [IsLocallyFiniteMeasure μ] {f : X → E} {p : ℝ≥0∞}
    (hf : MemLp f p μ) (hp : 1 ≤ p) : LocallyIntegrable f μ := by
  intro x
  rcases μ.finiteAt_nhds x with ⟨U, hU, h'U⟩
  have : Fact (μ U < ⊤) := ⟨h'U⟩
  refine ⟨U, hU, ?_⟩
  rw [IntegrableOn, ← memLp_one_iff_integrable]
  apply (hf.restrict U).mono_exponent hp

@[deprecated (since := "2025-02-21")]
alias Memℒp.locallyIntegrable := MemLp.locallyIntegrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant531545dceddf347ccc1afd492c694d9b5136a663dea0e6f29ef7f77f9a219252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant531545dceddf347ccc1afd492c694d9b5136a663dea0e6f29ef7f77f9a219252.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fca606a67b4b3d14794fc42980aa6fa98a3c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
