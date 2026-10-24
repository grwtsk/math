# riemannHypothesis_of_exhausting_actual_certificates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94a4c27a-c3c1-c4b4-b019-19916fe1d0b0",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_exhausting_actual_certificates",
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
  "slug": "riemannhypothesis-of-exhausting-actual-certificates--6b636379d99adaebf5c67382",
  "source": {
    "blob": "345cc43ea67a5458e8f45431c621f7d9f6b42c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b636379d99adaebf5c673821c115e7f6f48bd1c55210f434d9469788162cd82",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94a4c27a-c3c1-c4b4-b019-19916fe1d0b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_exhausting_actual_certificates
    (t H epsilon : ℕ → ℝ) (ht : ∀ j, 0 < t j)
    (hH : ∀ j, 0 < H j) (hepsilon : ∀ j, 0 < epsilon j)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (hcertificate : ∀ j,
      actualHeatDeficit (t j) < detectionThreshold (t j) (H j) (epsilon j)) :
    _root_.RiemannHypothesis := by
  intro s hs hz hp
  have hnon : NontrivialZetaZero s := ⟨hs, hz, hp⟩
  let p : ZeroPoint := ⟨s, hs, hnon.mem_critical_strip⟩
  let o : ZeroOccurrence := ⟨p, ⟨0, multiplicity_positive p⟩⟩
  have h := actual_displacements_zero_of_exhausting_certificates
    t H epsilon ht hH hepsilon hheight hwidth hcertificate o
  change s.re - 1 / 2 = 0 at h
  linarith

end FormalResearch.RiemannHypothesis.SourceActualHeatDeficit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345cc43ea67a5458e8f45431c621f7d9f6b42c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
