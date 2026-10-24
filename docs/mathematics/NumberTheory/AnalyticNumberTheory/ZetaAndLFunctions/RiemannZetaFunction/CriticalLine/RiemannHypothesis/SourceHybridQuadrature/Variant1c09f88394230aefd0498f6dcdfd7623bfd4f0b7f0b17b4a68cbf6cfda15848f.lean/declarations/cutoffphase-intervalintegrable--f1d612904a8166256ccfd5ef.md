# cutoffPhase_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:686cc142-1b27-993d-8b7c-1099b65099bb",
  "kind": "theorem",
  "lexical_name": "cutoffPhase_intervalIntegrable",
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
  "slug": "cutoffphase-intervalintegrable--f1d612904a8166256ccfd5ef",
  "source": {
    "blob": "4c6355e76f5e16ab568a59a635bfa0541ccf6351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1d612904a8166256ccfd5ef0e2f018f976b6473816f758a35bb4d604f57436a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:686cc142-1b27-993d-8b7c-1099b65099bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffPhase_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable cutoffPhase volume a b := by
  have hfloor : Monotone (fun s : ℝ => (⌊Real.exp s⌋₊ : ℝ)) := by
    intro s t hst
    change (⌊Real.exp s⌋₊ : ℝ) ≤ (⌊Real.exp t⌋₊ : ℝ)
    exact_mod_cast Nat.floor_mono (Real.exp_le_exp.mpr hst)
  simpa only [cutoffPhase, Pi.sub_apply] using
    (Real.continuous_exp.intervalIntegrable (μ := volume) a b).sub hfloor.intervalIntegrable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridQuadrature/Variant1c09f88394230aefd0498f6dcdfd7623bfd4f0b7f0b17b4a68cbf6cfda15848f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6355e76f5e16ab568a59a635bfa0541ccf6351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
