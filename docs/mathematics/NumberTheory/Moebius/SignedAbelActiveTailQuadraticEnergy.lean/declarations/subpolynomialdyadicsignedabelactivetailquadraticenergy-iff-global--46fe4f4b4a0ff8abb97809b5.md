# subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30246948-e41e-7b82-752a-c3618f8c8b21",
  "kind": "theorem",
  "lexical_name": "subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global",
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
  "slug": "subpolynomialdyadicsignedabelactivetailquadraticenergy-iff-global--46fe4f4b4a0ff8abb97809b5",
  "source": {
    "blob": "1685755d379b867ea62556386356e03fbafcdfd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 178,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46fe4f4b4a0ff8abb97809b5f3a0cb0d1d7a925c671820c337d934f7f3bf3808",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30246948-e41e-7b82-752a-c3618f8c8b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy_iff_global :
    SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy ↔
      SubpolynomialDyadicSignedAbelGlobalQuadraticEnergy := by
  constructor
  · intro hTail δ hδ
    obtain ⟨C, hC, hscale⟩ := hTail δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail]
    exact hscale j
  · intro hGlobal δ hδ
    obtain ⟨C, hC, hscale⟩ := hGlobal δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensSignedAbelGlobalQuadraticEnergy_eq_activeTail]
    exact hscale j

/-- Conditional RH endpoint from the exact reciprocal active-tail supplier.
The arithmetic supplier itself remains open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelActiveTailQuadraticEnergy.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1685755d379b867ea62556386356e03fbafcdfd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
