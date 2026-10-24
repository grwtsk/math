# ZetaSeam.one_le_mult_holds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8f0c197f8cc3ed0a120abd676a2cbd34a9efb31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15d759fc-4c40-cf62-297e-5da98d4733b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c065f442-7cbc-c693-ae85-687e7adc378f",
  "kind": "theorem",
  "lexical_name": "ZetaSeam.one_le_mult_holds",
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
  "slug": "zetaseam-one-le-mult-holds--21e83987e650daaeff27dea8",
  "source": {
    "blob": "f8f0c197f8cc3ed0a120abd676a2cbd34a9efb31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e83987e650daaeff27dea8c1b2494bc77dd61f23ec44fa4c8f5185f72b2fc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c065f442-7cbc-c693-ae85-687e7adc378f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZetaSeam.one_le_mult_holds : ∀ ρ, IsNontrivialZero ρ → 1 ≤ zeroMult ρ := by
  intro ρ h
  have hρ1 : ρ ≠ 1 := h.not_trivial.2
  have han : AnalyticAt ℂ riemannZeta ρ := riemannZeta_analyticOnNhd_compl_one ρ hρ1
  have hne0 : analyticOrderAt riemannZeta ρ ≠ 0 := han.analyticOrderAt_ne_zero.mpr h.1
  have hnetop := analyticOrderAt_riemannZeta_ne_top hρ1
  unfold zeroMult
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hnetop
  rw [← hn] at hne0 ⊢
  simp only [ENat.toNat_natCast, ne_eq, Nat.cast_eq_zero] at hne0 ⊢
  omega

/-- The zeros of ζ (away from 1) are locally finite on all of ℂ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f0c197f8cc3ed0a120abd676a2cbd34a9efb31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
