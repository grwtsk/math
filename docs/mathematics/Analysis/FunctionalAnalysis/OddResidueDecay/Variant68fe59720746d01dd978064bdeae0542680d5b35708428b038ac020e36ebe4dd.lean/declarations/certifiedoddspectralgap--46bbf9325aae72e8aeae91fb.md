# CertifiedOddSpectralGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11248744b2c93f7410e96ddd6cc4d509ad4a310495881297532886d294f791ef",
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
  "slug": "certifiedoddspectralgap--46bbf9325aae72e8aeae91fb",
  "source": {
    "blob": "00d505535d7fe19f5060a5b2a941256d2db5ecbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 49,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OddResidueDecay/Variant68fe59720746d01dd978064bdeae0542680d5b35708428b038ac020e36ebe4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46bbf9325aae72e8aeae91fbf48fc54b00a985b14268b0eaa99b176c5923f068",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OddResidueDecay/Variant68fe59720746d01dd978064bdeae0542680d5b35708428b038ac020e36ebe4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11248744b2c93f7410e96ddd6cc4d509ad4a310495881297532886d294f791ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–68.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OddResidueDecay/Variant68fe59720746d01dd978064bdeae0542680d5b35708428b038ac020e36ebe4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OddResidueDecay/Variant68fe59720746d01dd978064bdeae0542680d5b35708428b038ac020e36ebe4dd.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d505535d7fe19f5060a5b2a941256d2db5ecbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
