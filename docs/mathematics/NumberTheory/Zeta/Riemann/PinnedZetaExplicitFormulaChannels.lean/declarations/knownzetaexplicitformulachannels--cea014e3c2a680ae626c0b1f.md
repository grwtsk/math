# KnownZetaExplicitFormulaChannels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cebabdf39412fad1b3f18d8ef5f63a86aaca2ac5c5467bee0acc02729f5aa10b",
  "kind": "structure",
  "lexical_name": "KnownZetaExplicitFormulaChannels",
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
  "slug": "knownzetaexplicitformulachannels--cea014e3c2a680ae626c0b1f",
  "source": {
    "blob": "9d59f305367a68baaa5dffbeda2e9e8374a0973b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cea014e3c2a680ae626c0b1f83e1872f69765997fc32e43a0abc4fae2bdb0c68",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cebabdf39412fad1b3f18d8ef5f63a86aaca2ac5c5467bee0acc02729f5aa10b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KnownZetaExplicitFormulaChannels where
  primePowerCoefficient :
    ∀ event : PrimePowerEvent,
      mathlibVonMangoldtCoefficient.coefficient event =
        event.mangoldtScale
  vonMangoldtLogDeriv :
    ∀ {s : ℂ}, 1 < s.re →
      LSeries (fun n : ℕ =>
        (ArithmeticFunction.vonMangoldt n : ℂ)) s =
        - deriv riemannZeta s / riemannZeta s
  poleResidue :
    Tendsto (fun s : ℂ => (s - 1) * riemannZeta s)
      (𝓝[≠] (1 : ℂ)) (𝓝 1)
  trivialZeros :
    ∀ n : ℕ, riemannZeta (-2 * (n + 1)) = 0
  completedFunctionalEquation :
    ∀ s : ℂ,
      completedRiemannZeta (1 - s) = completedRiemannZeta s
  nontrivialLogResidue :
    ∀ z : ZeroPoint,
      Tendsto (fun s =>
        (s - z.1) *
          (-GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv
            riemannZeta s))
        (𝓝[≠] z.1)
        (𝓝 (-(CanonicalZeroDivisor.multiplicity z : ℂ)))

/-- All currently known exact zeta channels packaged together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d59f305367a68baaa5dffbeda2e9e8374a0973b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
