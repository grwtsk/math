# CofinalPrimeQuarticDescent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53beb26d70917d0db6835cd5e36825d7f930f8dd64b118dfc21fbdc46e42f91d",
  "kind": "structure",
  "lexical_name": "CofinalPrimeQuarticDescent",
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
  "slug": "cofinalprimequarticdescent--8abfcc63e307e38916b16600",
  "source": {
    "blob": "dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 545,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8abfcc63e307e38916b16600f1295274367c2e5e9d0b8d94fa84e66dd41e5d57",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53beb26d70917d0db6835cd5e36825d7f930f8dd64b118dfc21fbdc46e42f91d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CofinalPrimeQuarticDescent where
  threshold : ℕ → ℝ
  threshold_zero : threshold 0 = (7 : ℝ) / 8
  initial : RiemannZetaZeroFreeRightHalfPlane (threshold 0)
  aboveCritical : ∀ n, (1 / 2 : ℝ) < threshold n
  step : ∀ n, PrimeQuarticStep (threshold (n + 1)) (threshold n)
  cofinal :
    ∀ x : ℝ, (1 / 2 : ℝ) < x → ∃ n, threshold n < x

/-- Every stage of a descent tower inherits raw nonvanishing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
