# CertifiedOddSpectralGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f0d3d07fce03e16a7e927d7963b5103858173ad0d63caf6347abae55c66715c",
  "kind": "structure",
  "lexical_name": "CertifiedOddSpectralGap",
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
  "slug": "certifiedoddspectralgap--1b9ba333f063fbd298a5a05e",
  "source": {
    "blob": "47c0c0680cb81e4d4e6b9a9a730da7b03ee88063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b9ba333f063fbd298a5a05e5c8090a947cd33fa60aa8cfa1f9ed9a705b7b872",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f0d3d07fce03e16a7e927d7963b5103858173ad0d63caf6347abae55c66715c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedOddSpectralGap
    {Algebra : Type u} {Hilbert : Type v}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℝ Hilbert]
    [FiniteDimensional ℝ Hilbert]
    (shell : SpectralOrbitShell Algebra Hilbert) where
  spectralGap : ℝ
  spectralGap_positive : 0 < spectralGap
  heat_decay :
    ∀ time, 0 ≤ time →
      ∀ state,
        shell.symmetry.involution state = -state →
        ‖shell.spectral.heat time state‖ ≤
          Real.exp (-time * spectralGap ^ 2) * ‖state‖
  spectralGapCertificate : ObjectAddress

/--
Certified functional calculus plus a proved positive odd spectral gap yields
the quantitative exponential decay estimate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OddResidueDecay/Variantd74ad18571727b301ab0677db96a37a426533422375aed5b85671be93376f077.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c0c0680cb81e4d4e6b9a9a730da7b03ee88063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
