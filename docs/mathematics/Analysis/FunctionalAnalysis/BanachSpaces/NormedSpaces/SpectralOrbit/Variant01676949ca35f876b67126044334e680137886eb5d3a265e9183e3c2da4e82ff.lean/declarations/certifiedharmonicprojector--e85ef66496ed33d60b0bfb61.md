# CertifiedHarmonicProjector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06d929eee70d3502af3b0b9b8a947c96f39a34466e1bc963eac76089d7362605",
  "kind": "structure",
  "lexical_name": "CertifiedHarmonicProjector",
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
  "slug": "certifiedharmonicprojector--e85ef66496ed33d60b0bfb61",
  "source": {
    "blob": "887f065e8372a2923c5ec8b308543837ebf7ca6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 219,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e85ef66496ed33d60b0bfb611cea20f535b42e056660565c6eb10ede19902472",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06d929eee70d3502af3b0b9b8a947c96f39a34466e1bc963eac76089d7362605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedHarmonicProjector
    (H : Type v)
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    (dirac : H →L[ℝ] H) where
  projector : H →L[ℝ] H
  harmonic : ∀ state, dirac (projector state) = 0
  fixes_harmonic :
    ∀ {state}, dirac state = 0 → projector state = state
  idempotent : projector.comp projector = projector
  contractive : ∀ state, ‖projector state‖ ≤ ‖state‖
  projectorCertificate : ObjectAddress

/--
Certified contractive orbit-distribution semigroup.

The convergence field is the exact extra datum needed for orbit
equilibration; contractivity by itself does not imply convergence to an
invariant channel.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant01676949ca35f876b67126044334e680137886eb5d3a265e9183e3c2da4e82ff.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887f065e8372a2923c5ec8b308543837ebf7ca6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
